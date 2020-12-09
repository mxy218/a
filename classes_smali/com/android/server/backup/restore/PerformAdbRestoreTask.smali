.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerBackupAgent:Landroid/app/backup/BackupAgent;

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 82
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 83
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 101
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 106
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 107
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 108
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 111
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent()Landroid/app/backup/BackupAgent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Landroid/app/backup/BackupAgent;

    .line 114
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 116
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    .line 117
    const-string p2, "Timeout parameters cannot be null"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 123
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string p2, "android"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string p2, "com.android.providers.settings"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 16

    .line 274
    const-string v0, "AES"

    const-string v1, "Incorrect password"

    const-string v2, "BackupManagerService"

    .line 277
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 278
    nop

    .line 279
    invoke-static {p1, p0, p2, p4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 281
    invoke-static {p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 282
    new-instance p5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p5, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 283
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 284
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {p2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 283
    const/4 p0, 0x2

    invoke-virtual {v4, p0, p2, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 286
    invoke-static {p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 287
    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 290
    const/4 p5, 0x0

    .line 291
    aget-byte p5, p2, p5

    .line 292
    const/4 p6, 0x1

    add-int/2addr p5, p6

    invoke-static {p2, p6, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p6

    .line 293
    nop

    .line 295
    add-int/lit8 v5, p5, 0x1

    aget-byte p5, p2, p5

    .line 296
    add-int/2addr p5, v5

    invoke-static {p2, v5, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 298
    nop

    .line 300
    add-int/lit8 v6, p5, 0x1

    aget-byte p5, p2, p5

    .line 301
    add-int/2addr p5, v6

    invoke-static {p2, v6, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 305
    invoke-static {p1, v5, p3, p4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object p1

    .line 307
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 308
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 309
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 313
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p7, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v3, p0

    goto :goto_70

    .line 314
    :cond_6b
    if-eqz p8, :cond_70

    .line 315
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_70} :catch_9c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_70} :catch_95
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_70} :catch_8c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_70} :catch_83
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_70} :catch_7a
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_70} :catch_71

    .line 345
    :cond_70
    :goto_70
    goto :goto_a5

    .line 341
    :catch_71
    move-exception p0

    .line 342
    if-eqz p8, :cond_a5

    .line 343
    const-string p0, "Illegal password; aborting"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 337
    :catch_7a
    move-exception p0

    .line 338
    if-eqz p8, :cond_70

    .line 339
    const-string p0, "Needed padding mechanism unavailable!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 333
    :catch_83
    move-exception p0

    .line 334
    if-eqz p8, :cond_70

    .line 335
    const-string p0, "Needed decryption algorithm unavailable!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 329
    :catch_8c
    move-exception p0

    .line 330
    if-eqz p8, :cond_70

    .line 331
    const-string p0, "Invalid block size in master key"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 321
    :catch_95
    move-exception p0

    .line 326
    if-eqz p8, :cond_70

    .line 327
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 317
    :catch_9c
    move-exception p0

    .line 318
    if-eqz p8, :cond_70

    .line 319
    const-string p1, "Needed parameter spec unavailable!"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 347
    :cond_a5
    :goto_a5
    return-object v3
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 20

    .line 354
    move-object/from16 v0, p1

    const-string v1, "BackupManagerService"

    .line 356
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "AES-256"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 358
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 361
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 364
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 365
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 367
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 370
    const-string v4, "PBKDF2WithHmacSHA1"

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object v5, v0

    move-object v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 372
    if-nez v2, :cond_52

    if-eqz p2, :cond_52

    .line 373
    const-string v4, "PBKDF2WithHmacSHA1And8bit"

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object v5, v0

    move-object v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 377
    :cond_52
    goto :goto_75

    .line 378
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_67} :catch_6f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_75

    .line 382
    :catch_68
    move-exception v0

    .line 383
    const-string v0, "Can\'t read input header"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 380
    :catch_6f
    move-exception v0

    .line 381
    const-string v0, "Can\'t parse restore data header"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_75
    nop

    .line 386
    :goto_76
    return-object v2
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    nop

    .line 209
    nop

    .line 211
    nop

    .line 212
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 213
    new-array v1, v1, [B

    .line 214
    invoke-static {p0, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 215
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 217
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_78

    .line 219
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    const/4 v4, 0x5

    if-gt v3, v4, :cond_62

    .line 224
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2d

    move v3, v0

    goto :goto_2e

    :cond_2d
    move v3, v2

    .line 226
    :goto_2e
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3a

    move v4, v0

    goto :goto_3b

    :cond_3a
    move v4, v2

    .line 228
    :goto_3b
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 229
    const-string/jumbo v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 231
    goto :goto_60

    .line 232
    :cond_49
    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5a

    .line 233
    invoke-static {p1, v5, v3, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 236
    if-eqz p0, :cond_58

    .line 237
    goto :goto_60

    .line 236
    :cond_58
    move v0, v2

    goto :goto_60

    .line 240
    :cond_5a
    const-string p1, "Archive is encrypted but no password given"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 242
    :goto_60
    move v2, v4

    goto :goto_77

    .line 243
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong header version: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 245
    :goto_77
    goto :goto_7e

    .line 246
    :cond_78
    const-string p1, "Didn\'t read the right header magic"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 249
    :goto_7e
    if-nez v0, :cond_87

    .line 250
    const-string p0, "Invalid restore data; aborting."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_87
    if-eqz v2, :cond_8f

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, p1

    :cond_8f
    return-object p0
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .line 193
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 194
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    if-lez v1, :cond_e

    .line 198
    add-int/2addr v0, v1

    .line 199
    goto :goto_1

    .line 196
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t fully read data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_16
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_17

    .line 262
    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    .line 263
    goto :goto_17

    .line 265
    :cond_12
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 267
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 129
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 131
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 135
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2a
    const/4 v0, 0x0

    .line 140
    const/4 v1, 0x1

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 142
    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_11a
    .catchall {:try_start_2c .. :try_end_3d} :catchall_118

    .line 172
    nop

    .line 175
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    .line 179
    goto :goto_4c

    .line 176
    :catch_44
    move-exception v0

    .line 177
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_4c
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 181
    :try_start_4f
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_78

    .line 184
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 144
    return-void

    .line 183
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 147
    :cond_7b
    const-wide/16 v2, 0x0

    :try_start_7d
    iput-wide v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 149
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8a} :catch_11a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_118

    .line 151
    :try_start_8a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_90} :catch_115
    .catchall {:try_start_8a .. :try_end_90} :catchall_110

    .line 153
    if-nez v0, :cond_d3

    .line 172
    nop

    .line 173
    :try_start_93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 175
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_9c

    .line 179
    goto :goto_a4

    .line 176
    :catch_9c
    move-exception v0

    .line 177
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_a4
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 181
    :try_start_a7
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_d0

    .line 184
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 156
    return-void

    .line 183
    :catchall_d0
    move-exception v0

    :try_start_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v0

    .line 159
    :cond_d3
    :try_start_d3
    new-instance v3, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZIZ)V

    .line 161
    new-instance v4, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v4, v3, v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_ec} :catch_115
    .catchall {:try_start_d3 .. :try_end_ec} :catchall_110

    .line 172
    nop

    .line 173
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 175
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f5} :catch_f6

    .line 179
    goto :goto_fe

    .line 176
    :catch_f6
    move-exception v0

    .line 177
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_fe
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 181
    :try_start_101
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v0

    goto :goto_143

    :catchall_10d
    move-exception v1

    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_101 .. :try_end_10f} :catchall_10d

    throw v1

    .line 171
    :catchall_110
    move-exception v0

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto :goto_165

    .line 168
    :catch_115
    move-exception v0

    move-object v0, v2

    goto :goto_11b

    .line 171
    :catchall_118
    move-exception v2

    goto :goto_165

    .line 168
    :catch_11a
    move-exception v2

    .line 169
    :goto_11b
    :try_start_11b
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to read restore input"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_11b .. :try_end_122} :catchall_118

    .line 172
    if-eqz v0, :cond_127

    .line 173
    :try_start_124
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :cond_127
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12c} :catch_12d

    .line 179
    goto :goto_135

    .line 176
    :catch_12d
    move-exception v0

    .line 177
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_135
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 181
    :try_start_138
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v2
    :try_end_143
    .catchall {:try_start_138 .. :try_end_143} :catchall_162

    .line 184
    :goto_143
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 188
    nop

    .line 189
    return-void

    .line 183
    :catchall_162
    move-exception v0

    :try_start_163
    monitor-exit v2
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw v0

    .line 172
    :goto_165
    if-eqz v0, :cond_16a

    .line 173
    :try_start_167
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :cond_16a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16f} :catch_170

    .line 179
    goto :goto_178

    .line 176
    :catch_170
    move-exception v0

    .line 177
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_178
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 181
    :try_start_17b
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v0
    :try_end_186
    .catchall {:try_start_17b .. :try_end_186} :catchall_1a4

    .line 184
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    throw v2

    .line 183
    :catchall_1a4
    move-exception v1

    :try_start_1a5
    monitor-exit v0
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_1a4

    throw v1
.end method
