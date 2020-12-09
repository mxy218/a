.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDb.java"


# static fields
.field private static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final IDLE_TIMEOUT_SECONDS:I = 0x1e

.field private static final LAST_SYNCED_AT_UNSYNCED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDb"


# instance fields
.field private final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 177
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method private constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 83
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 84
    return-void
.end method

.method private static decodeCertPath([B)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1362
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_13

    .line 1366
    nop

    .line 1367
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "PkiPath"

    invoke-virtual {v0, v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 1363
    :catch_13
    move-exception p0

    .line 1365
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static decodeX509Key([B)Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1351
    :try_start_5
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    .line 1352
    :catch_10
    move-exception p0

    .line 1354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ensureRecoveryServiceMetadataEntryExists(II)V
    .registers 6

    .line 1306
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1307
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    const-string/jumbo p1, "recovery_service_metadata"

    const/4 p2, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1312
    return-void
.end method

.method private ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .registers 7

    .line 1319
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1320
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-string/jumbo p1, "root_alias"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string/jumbo p1, "root_of_trust"

    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1326
    return-void
.end method

.method private ensureUserMetadataEntryExists(I)V
    .registers 6

    .line 1333
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1334
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    const-string/jumbo p1, "user_metadata"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1338
    return-void
.end method

.method private getBytes(IILjava/lang/String;)[B
    .registers 16

    .line 1002
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1004
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v9, 0x1

    const-string/jumbo v2, "user_id"

    aput-object v2, v3, v9

    const/4 v10, 0x2

    const-string/jumbo v2, "uid"

    aput-object v2, v3, v10

    const/4 v11, 0x3

    aput-object p3, v3, v11

    .line 1009
    nop

    .line 1012
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    .line 1015
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1014
    nop

    .line 1024
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_88

    .line 1025
    const/4 v3, 0x0

    if-nez v2, :cond_46

    .line 1026
    nop

    .line 1042
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1026
    return-object v3

    .line 1028
    :cond_46
    if-le v2, v9, :cond_6e

    .line 1029
    :try_start_48
    const-string p3, "RecoverableKeyStoreDb"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v6, v11, [Ljava/lang/Object;

    .line 1032
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v10

    .line 1030
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_88

    .line 1033
    nop

    .line 1042
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1033
    return-object v3

    .line 1035
    :cond_6e
    :try_start_6e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1036
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1037
    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_88

    if-eqz p2, :cond_80

    .line 1038
    nop

    .line 1042
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1038
    return-object v3

    .line 1040
    :cond_80
    :try_start_80
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_88

    .line 1042
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1040
    return-object p1

    .line 1014
    :catchall_88
    move-exception p1

    :try_start_89
    throw p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 1042
    :catchall_8a
    move-exception p2

    if-eqz v1, :cond_90

    invoke-static {p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_90
    throw p2
.end method

.method private getBytes(IILjava/lang/String;Ljava/lang/String;)[B
    .registers 19

    .line 1082
    move-object v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1085
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v0

    const/4 v11, 0x1

    const-string/jumbo v4, "user_id"

    aput-object v4, v5, v11

    const/4 v12, 0x2

    const-string/jumbo v4, "uid"

    aput-object v4, v5, v12

    const/4 v13, 0x3

    const-string/jumbo v4, "root_alias"

    aput-object v4, v5, v13

    const/4 v4, 0x4

    aput-object v1, v5, v4

    .line 1091
    nop

    .line 1095
    new-array v7, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v11

    aput-object v2, v7, v12

    .line 1098
    const-string/jumbo v6, "user_id = ? AND uid = ? AND root_alias = ?"

    const-string/jumbo v4, "root_of_trust"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1097
    nop

    .line 1107
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_9b

    .line 1108
    const/4 v4, 0x0

    if-nez v3, :cond_59

    .line 1109
    nop

    .line 1125
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1109
    return-object v4

    .line 1111
    :cond_59
    if-le v3, v11, :cond_81

    .line 1112
    :try_start_5b
    const-string v1, "RecoverableKeyStoreDb"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v7, v13, [Ljava/lang/Object;

    .line 1115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v12

    .line 1113
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_9b

    .line 1116
    nop

    .line 1125
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1116
    return-object v4

    .line 1118
    :cond_81
    :try_start_81
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1119
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1120
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_9b

    if-eqz v1, :cond_93

    .line 1121
    nop

    .line 1125
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1121
    return-object v4

    .line 1123
    :cond_93
    :try_start_93
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_9b

    .line 1125
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1123
    return-object v0

    .line 1097
    :catchall_9b
    move-exception v0

    move-object v1, v0

    :try_start_9d
    throw v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 1125
    :catchall_9e
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_a5

    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a5
    throw v3
.end method

.method private getLong(IILjava/lang/String;)Ljava/lang/Long;
    .registers 16

    .line 922
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 924
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v9, 0x1

    const-string/jumbo v2, "user_id"

    aput-object v2, v3, v9

    const/4 v10, 0x2

    const-string/jumbo v2, "uid"

    aput-object v2, v3, v10

    const/4 v11, 0x3

    aput-object p3, v3, v11

    .line 929
    nop

    .line 932
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    .line 935
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 934
    nop

    .line 944
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_8c

    .line 945
    const/4 v3, 0x0

    if-nez v2, :cond_46

    .line 946
    nop

    .line 962
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 946
    return-object v3

    .line 948
    :cond_46
    if-le v2, v9, :cond_6e

    .line 949
    :try_start_48
    const-string p3, "RecoverableKeyStoreDb"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v6, v11, [Ljava/lang/Object;

    .line 952
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v10

    .line 950
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 949
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_8c

    .line 953
    nop

    .line 962
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 953
    return-object v3

    .line 955
    :cond_6e
    :try_start_6e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 956
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 957
    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_8c

    if-eqz p2, :cond_80

    .line 958
    nop

    .line 962
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 958
    return-object v3

    .line 960
    :cond_80
    :try_start_80
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_8c

    .line 962
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 960
    return-object p1

    .line 934
    :catchall_8c
    move-exception p1

    :try_start_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 962
    :catchall_8e
    move-exception p2

    if-eqz v1, :cond_94

    invoke-static {p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_94
    throw p2
.end method

.method private getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 19

    .line 1168
    move-object v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1171
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v0

    const/4 v11, 0x1

    const-string/jumbo v4, "user_id"

    aput-object v4, v5, v11

    const/4 v12, 0x2

    const-string/jumbo v4, "uid"

    aput-object v4, v5, v12

    const/4 v13, 0x3

    const-string/jumbo v4, "root_alias"

    aput-object v4, v5, v13

    const/4 v4, 0x4

    aput-object v1, v5, v4

    .line 1177
    nop

    .line 1181
    new-array v7, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v11

    aput-object v2, v7, v12

    .line 1184
    const-string/jumbo v6, "user_id = ? AND uid = ? AND root_alias = ?"

    const-string/jumbo v4, "root_of_trust"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1183
    nop

    .line 1193
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_9f

    .line 1194
    const/4 v4, 0x0

    if-nez v3, :cond_59

    .line 1195
    nop

    .line 1211
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1195
    return-object v4

    .line 1197
    :cond_59
    if-le v3, v11, :cond_81

    .line 1198
    :try_start_5b
    const-string v1, "RecoverableKeyStoreDb"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v7, v13, [Ljava/lang/Object;

    .line 1201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v12

    .line 1199
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_9f

    .line 1202
    nop

    .line 1211
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1202
    return-object v4

    .line 1204
    :cond_81
    :try_start_81
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1205
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1206
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_9f

    if-eqz v1, :cond_93

    .line 1207
    nop

    .line 1211
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1207
    return-object v4

    .line 1209
    :cond_93
    :try_start_93
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_9f

    .line 1211
    invoke-static {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1209
    return-object v0

    .line 1183
    :catchall_9f
    move-exception v0

    move-object v1, v0

    :try_start_a1
    throw v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    .line 1211
    :catchall_a2
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_a9

    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a9
    throw v3
.end method

.method static synthetic lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V
    .registers 2

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .registers 4

    .line 75
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 77
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setIdleConnectionTimeout(J)V

    .line 78
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    return-object p0
.end method

.method private removeUserFromKeysTable(I)Z
    .registers 7

    .line 1259
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1260
    nop

    .line 1261
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1262
    const-string/jumbo p1, "user_id = ?"

    const-string v4, "keys"

    invoke-virtual {v0, v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    return v1
.end method

.method private removeUserFromRecoveryServiceMetadataTable(I)Z
    .registers 7

    .line 1283
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1284
    nop

    .line 1285
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1286
    const-string/jumbo p1, "user_id = ?"

    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    return v1
.end method

.method private removeUserFromRootOfTrustTable(I)Z
    .registers 7

    .line 1295
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1296
    nop

    .line 1297
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1298
    const-string/jumbo p1, "user_id = ?"

    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    return v1
.end method

.method private removeUserFromUserMetadataTable(I)Z
    .registers 7

    .line 1271
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1272
    nop

    .line 1273
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1274
    const-string/jumbo p1, "user_id = ?"

    const-string/jumbo v4, "user_metadata"

    invoke-virtual {v0, v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    return v1
.end method

.method private setBytes(IILjava/lang/String;Ljava/lang/String;[B)J
    .registers 9

    .line 1141
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1142
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1145
    nop

    .line 1149
    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x0

    aput-object p5, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x1

    aput-object p5, p4, v2

    const/4 p5, 0x2

    aput-object p3, p4, p5

    .line 1151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1152
    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    const-string/jumbo p2, "root_of_trust"

    invoke-virtual {v0, p2, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private setBytes(IILjava/lang/String;[B)J
    .registers 8

    .line 1057
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1058
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1060
    nop

    .line 1063
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, p3, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x1

    aput-object p4, p3, v2

    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 1066
    const-string/jumbo p1, "user_id = ? AND uid = ?"

    const-string/jumbo p2, "recovery_service_metadata"

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private setLong(IILjava/lang/String;J)J
    .registers 8

    .line 978
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 980
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    nop

    .line 984
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    .line 986
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 987
    const-string/jumbo p1, "user_id = ? AND uid = ?"

    const-string/jumbo p2, "recovery_service_metadata"

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private setLong(IILjava/lang/String;Ljava/lang/String;J)J
    .registers 9

    .line 1228
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1229
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1230
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1231
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1232
    nop

    .line 1236
    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, p4, p6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, p4, p6

    const/4 p5, 0x2

    aput-object p3, p4, p5

    .line 1238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1239
    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    const-string/jumbo p2, "root_of_trust"

    invoke-virtual {v0, p2, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1344
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->close()V

    .line 1345
    return-void
.end method

.method public getActiveRootOfTrust(II)Ljava/lang/String;
    .registers 15

    .line 733
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 735
    const-string v0, "active_root_of_trust"

    const-string v2, "_id"

    const-string/jumbo v3, "user_id"

    const-string/jumbo v4, "uid"

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 740
    nop

    .line 743
    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v5, v10

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v5, v11

    .line 746
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 745
    nop

    .line 755
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_8f

    .line 756
    const/4 v3, 0x0

    if-nez v2, :cond_40

    .line 757
    nop

    .line 777
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 757
    return-object v3

    .line 759
    :cond_40
    if-le v2, v11, :cond_69

    .line 760
    :try_start_42
    const-string v0, "RecoverableKeyStoreDb"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 763
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    .line 761
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 760
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_8f

    .line 764
    nop

    .line 777
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 764
    return-object v3

    .line 766
    :cond_69
    :try_start_69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 767
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 769
    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_8f

    if-eqz p2, :cond_7b

    .line 770
    nop

    .line 777
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 770
    return-object v3

    .line 772
    :cond_7b
    :try_start_7b
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_8f

    if-eqz p2, :cond_8a

    .line 774
    nop

    .line 777
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 774
    return-object v3

    .line 776
    :cond_8a
    nop

    .line 777
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 776
    return-object p1

    .line 745
    :catchall_8f
    move-exception p1

    :try_start_90
    throw p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 777
    :catchall_91
    move-exception p2

    if-eqz v1, :cond_97

    invoke-static {p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_97
    throw p2
.end method

.method public getAllKeys(III)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 268
    const-string v2, "_id"

    const-string/jumbo v3, "nonce"

    const-string/jumbo v4, "wrapped_key"

    const-string v5, "alias"

    const-string/jumbo v6, "recovery_status"

    const-string v7, "key_metadata"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v3

    .line 275
    nop

    .line 279
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 282
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    .line 286
    const-string/jumbo v4, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    const-string v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 285
    nop

    .line 295
    :try_start_3f
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 296
    :goto_44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 297
    const-string/jumbo v0, "nonce"

    .line 298
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 299
    const-string/jumbo v0, "wrapped_key"

    .line 300
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 299
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 301
    const-string v0, "alias"

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 301
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string/jumbo v2, "recovery_status"

    .line 304
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 303
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 308
    const-string v2, "key_metadata"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 309
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 310
    move-object v5, v1

    goto :goto_89

    .line 312
    :cond_84
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    move-object v5, v1

    .line 315
    :goto_89
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v2, v1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_3f .. :try_end_93} :catchall_99

    .line 317
    goto :goto_44

    .line 318
    :cond_94
    nop

    .line 319
    invoke-static {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 318
    return-object p2

    .line 285
    :catchall_99
    move-exception p2

    :try_start_9a
    throw p2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 319
    :catchall_9b
    move-exception p3

    if-eqz p1, :cond_a1

    invoke-static {p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a1
    throw p3
.end method

.method public getCounterId(II)Ljava/lang/Long;
    .registers 4

    .line 806
    const-string v0, "counter_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getKey(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .registers 14

    .line 123
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 124
    const-string v2, "_id"

    const-string/jumbo v3, "nonce"

    const-string/jumbo v4, "wrapped_key"

    const-string/jumbo v5, "platform_key_generation_id"

    const-string/jumbo v6, "recovery_status"

    const-string v7, "key_metadata"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v3

    .line 131
    nop

    .line 134
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v10, 0x1

    aput-object p2, v5, v10

    .line 137
    const-string/jumbo v4, "uid = ? AND alias = ?"

    const-string v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 136
    nop

    .line 146
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_b2

    .line 147
    const/4 v3, 0x0

    if-nez v2, :cond_41

    .line 148
    nop

    .line 177
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 148
    return-object v3

    .line 150
    :cond_41
    if-le v2, v10, :cond_66

    .line 151
    :try_start_43
    const-string v4, "RecoverableKeyStoreDb"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d WrappedKey entries found for uid=%d alias=\'%s\'. Should only ever be 0 or 1."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v10

    aput-object p2, v7, v0

    .line 152
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_b2

    .line 155
    nop

    .line 177
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 155
    return-object v3

    .line 157
    :cond_66
    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    const-string/jumbo p1, "nonce"

    .line 159
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 158
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 160
    const-string/jumbo p1, "wrapped_key"

    .line 161
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 160
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 162
    const-string/jumbo p1, "platform_key_generation_id"

    .line 163
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 162
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 164
    const-string/jumbo p1, "recovery_status"

    .line 165
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 164
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 169
    const-string p1, "key_metadata"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 170
    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 171
    move-object v7, v3

    goto :goto_a8

    .line 173
    :cond_a3
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    move-object v7, p1

    .line 176
    :goto_a8
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V
    :try_end_ae
    .catchall {:try_start_66 .. :try_end_ae} :catchall_b2

    .line 177
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 176
    return-object p1

    .line 136
    :catchall_b2
    move-exception p1

    :try_start_b3
    throw p1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    .line 177
    :catchall_b4
    move-exception p2

    if-eqz v1, :cond_ba

    invoke-static {p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_ba
    throw p2
.end method

.method public getPlatformKeyGenerationId(I)I
    .registers 11

    .line 425
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 426
    const-string/jumbo v0, "platform_key_generation_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 428
    nop

    .line 430
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 434
    const-string/jumbo v4, "user_id = ?"

    const-string/jumbo v2, "user_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 433
    nop

    .line 443
    :try_start_26
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_42

    const/4 v2, 0x0

    if-nez v1, :cond_32

    .line 444
    const/4 v0, -0x1

    .line 450
    invoke-static {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 444
    return v0

    .line 446
    :cond_32
    :try_start_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    nop

    .line 448
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 447
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_42

    .line 450
    invoke-static {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 447
    return v0

    .line 433
    :catchall_42
    move-exception v0

    :try_start_43
    throw v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 450
    :catchall_44
    move-exception v1

    if-eqz p1, :cond_4a

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4a
    throw v1
.end method

.method public getRecoveryAgents(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 556
    const-string/jumbo v0, "uid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 557
    nop

    .line 558
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 561
    const-string/jumbo v4, "user_id = ?"

    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 560
    nop

    .line 570
    :try_start_26
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    :goto_2f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 573
    nop

    .line 574
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 573
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_4c

    .line 576
    goto :goto_2f

    .line 577
    :cond_46
    nop

    .line 578
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 577
    return-object v2

    .line 560
    :catchall_4c
    move-exception v0

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 578
    :catchall_4e
    move-exception v1

    if-eqz p1, :cond_54

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_54
    throw v1
.end method

.method public getRecoverySecretTypes(II)[I
    .registers 15

    .line 645
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 647
    const-string/jumbo v0, "secret_types"

    const-string v2, "_id"

    const-string/jumbo v3, "user_id"

    const-string/jumbo v4, "uid"

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 652
    nop

    .line 655
    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v5, v10

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v5, v11

    .line 658
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 657
    nop

    .line 667
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 668
    const/4 v3, 0x0

    if-nez v2, :cond_42

    .line 669
    new-array p1, v10, [I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_c2

    .line 698
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 669
    return-object p1

    .line 671
    :cond_42
    const-string v4, "RecoverableKeyStoreDb"

    if-le v2, v11, :cond_6c

    .line 672
    :try_start_46
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 675
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    .line 673
    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-array p1, v10, [I
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_c2

    .line 698
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 676
    return-object p1

    .line 678
    :cond_6c
    :try_start_6c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 681
    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 682
    new-array p1, v10, [I
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_c2

    .line 698
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 682
    return-object p1

    .line 684
    :cond_7f
    :try_start_7f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 686
    new-array p1, v10, [I
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_c2

    .line 698
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 686
    return-object p1

    .line 688
    :cond_8f
    :try_start_8f
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 689
    array-length p2, p1

    new-array p2, p2, [I

    .line 690
    nop

    :goto_99
    array-length v0, p1
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_c2

    if-ge v10, v0, :cond_bd

    .line 692
    :try_start_9c
    aget-object v0, p1, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v10
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a4} :catch_a5
    .catchall {:try_start_9c .. :try_end_a4} :catchall_c2

    .line 695
    goto :goto_ba

    .line 693
    :catch_a5
    move-exception v0

    .line 694
    :try_start_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String format error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_c2

    .line 690
    :goto_ba
    add-int/lit8 v10, v10, 0x1

    goto :goto_99

    .line 697
    :cond_bd
    nop

    .line 698
    invoke-static {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 697
    return-object p2

    .line 657
    :catchall_c2
    move-exception p1

    :try_start_c3
    throw p1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    .line 698
    :catchall_c4
    move-exception p2

    if-eqz v1, :cond_ca

    invoke-static {p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_ca
    throw p2
.end method

.method public getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;
    .registers 8

    .line 512
    const-string v0, "cert_path"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    .line 513
    const/4 v0, 0x0

    if-nez p3, :cond_a

    .line 514
    return-object v0

    .line 517
    :cond_a
    :try_start_a
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object p1
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    .line 518
    :catch_f
    move-exception p3

    .line 519
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 520
    const-string p1, "Recovery service CertPath entry cannot be decoded for userId=%d uid=%d."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string p2, "RecoverableKeyStoreDb"

    invoke-static {p2, p1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    return-object v0
.end method

.method public getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 480
    const-string v0, "cert_serial"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getRecoveryServicePublicKey(II)Ljava/security/PublicKey;
    .registers 7

    .line 591
    nop

    .line 592
    const-string/jumbo v0, "public_key"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v0

    .line 593
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 594
    return-object v1

    .line 597
    :cond_c
    :try_start_c
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeX509Key([B)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    .line 598
    :catch_11
    move-exception v0

    .line 599
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 600
    const-string p1, "Recovery service public key entry cannot be decoded for userId=%d uid=%d."

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 599
    const-string p2, "RecoverableKeyStoreDb"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v1
.end method

.method public getServerParams(II)[B
    .registers 4

    .line 837
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getShouldCreateSnapshot(II)Z
    .registers 5

    .line 905
    const-string/jumbo v0, "should_create_snapshot"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 907
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public getSnapshotVersion(II)Ljava/lang/Long;
    .registers 4

    .line 866
    const-string/jumbo v0, "snapshot_version"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getStatusForAllKeys(I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 204
    const-string/jumbo v0, "recovery_status"

    const-string v9, "alias"

    const-string v2, "_id"

    filled-new-array {v2, v9, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 208
    nop

    .line 210
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 213
    const-string/jumbo v4, "uid = ?"

    const-string v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 212
    nop

    .line 222
    :try_start_29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    :goto_2e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 224
    nop

    .line 225
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 224
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    nop

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 226
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_54

    .line 229
    goto :goto_2e

    .line 230
    :cond_4e
    nop

    .line 231
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 230
    return-object v1

    .line 212
    :catchall_54
    move-exception v0

    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 231
    :catchall_56
    move-exception v1

    if-eqz p1, :cond_5c

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5c
    throw v1
.end method

.method public getUserSerialNumbers()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 349
    const-string/jumbo v0, "user_serial_number"

    const-string/jumbo v9, "user_id"

    filled-new-array {v9, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 352
    nop

    .line 353
    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    .line 356
    const/4 v4, 0x0

    const-string/jumbo v2, "user_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 355
    nop

    .line 365
    :try_start_20
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 366
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 367
    nop

    .line 368
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 367
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 369
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_4e

    .line 372
    goto :goto_25

    .line 373
    :cond_48
    nop

    .line 374
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 373
    return-object v2

    .line 355
    :catchall_4e
    move-exception v0

    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 374
    :catchall_50
    move-exception v2

    if-eqz v1, :cond_56

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_56
    throw v2
.end method

.method public insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string p1, "alias"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object p1

    const-string/jumbo p2, "nonce"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object p1

    const-string/jumbo p2, "wrapped_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "last_synced_at"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "platform_key_generation_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getRecoveryStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "recovery_status"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object p1

    .line 109
    const-string p2, "key_metadata"

    if-nez p1, :cond_6a

    .line 110
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6d

    .line 112
    :cond_6a
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 114
    :goto_6d
    const/4 p1, 0x0

    const-string p2, "keys"

    invoke-virtual {v0, p2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public invalidateKeysForUser(I)V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 400
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 401
    nop

    .line 402
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    nop

    .line 404
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "user_id = ?"

    const-string v3, "keys"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public invalidateKeysForUserIdOnCustomScreenLock(I)V
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 412
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 413
    nop

    .line 414
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 413
    const-string/jumbo v3, "recovery_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    nop

    .line 417
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 418
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 417
    const-string/jumbo p1, "user_id = ?"

    const-string v3, "keys"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public removeKey(ILjava/lang/String;)Z
    .registers 7

    .line 186
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    nop

    .line 189
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 190
    const-string/jumbo p2, "uid = ? AND alias = ?"

    const-string v3, "keys"

    invoke-virtual {v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_20

    goto :goto_21

    :cond_20
    move p1, v2

    :goto_21
    return p1
.end method

.method public removeUserFromAllTables(I)V
    .registers 2

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromKeysTable(I)Z

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromUserMetadataTable(I)Z

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRecoveryServiceMetadataTable(I)Z

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRootOfTrustTable(I)Z

    .line 1251
    return-void
.end method

.method public setActiveRootOfTrust(IILjava/lang/String;)J
    .registers 7

    .line 712
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 713
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 714
    const-string v2, "active_root_of_trust"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    nop

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 719
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 720
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    .line 719
    const-string/jumbo p1, "user_id = ? AND uid = ?"

    const-string/jumbo p2, "recovery_service_metadata"

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setCounterId(IIJ)J
    .registers 11

    .line 791
    const-string v3, "counter_id"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPlatformKeyGenerationId(II)J
    .registers 7

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v2, "platform_key_generation_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    nop

    .line 333
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUser(I)V

    .line 337
    const-string/jumbo p1, "user_id = ?"

    const-string/jumbo v2, "user_metadata"

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setRecoverySecretTypes(II[I)J
    .registers 8

    .line 621
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 623
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 624
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p3

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p3, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 625
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p3

    .line 626
    const-string/jumbo v2, "secret_types"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    nop

    .line 630
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 631
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    .line 631
    const-string/jumbo p1, "user_id = ? AND uid = ?"

    const-string/jumbo p2, "recovery_service_metadata"

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 540
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 543
    nop

    .line 544
    const-string v0, "PkiPath"

    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 543
    const-string v5, "cert_path"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide p1

    return-wide p1

    .line 541
    :cond_1c
    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    const-string p2, "No certificate contained in the cert path."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecoveryServiceCertSerial(IILjava/lang/String;J)J
    .registers 13

    .line 496
    const-string v4, "cert_serial"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setRecoveryServicePublicKey(IILjava/security/PublicKey;)J
    .registers 5

    .line 464
    nop

    .line 465
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    .line 464
    const-string/jumbo v0, "public_key"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public setRecoveryStatus(ILjava/lang/String;I)I
    .registers 7

    .line 243
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v2, "recovery_status"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    nop

    .line 249
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 249
    const-string/jumbo p1, "uid = ? AND alias = ?"

    const-string p2, "keys"

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setServerParams(II[B)J
    .registers 5

    .line 821
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public setShouldCreateSnapshot(IIZ)J
    .registers 12

    .line 890
    nop

    .line 891
    if-eqz p3, :cond_6

    const-wide/16 v0, 0x1

    goto :goto_8

    :cond_6
    const-wide/16 v0, 0x0

    :goto_8
    move-wide v6, v0

    .line 890
    const-string/jumbo v5, "should_create_snapshot"

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setSnapshotVersion(IIJ)J
    .registers 11

    .line 851
    const-string/jumbo v3, "snapshot_version"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setUserSerialNumber(IJ)J
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "user_serial_number"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    nop

    .line 388
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, p2, v2

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 391
    const-string/jumbo p1, "user_id = ?"

    const-string/jumbo p3, "user_metadata"

    invoke-virtual {v0, p3, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
