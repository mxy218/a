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
    .param p1, "backupManagerService"  # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "fd"  # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"  # Ljava/lang/String;
    .param p4, "decryptPassword"  # Ljava/lang/String;
    .param p5, "observer"  # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"  # Ljava/util/concurrent/atomic/AtomicBoolean;

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

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Landroid/app/backup/BackupAgent;

    .line 114
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 116
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 117
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 123
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 29
    .param p0, "decryptPassword"  # Ljava/lang/String;
    .param p1, "algorithm"  # Ljava/lang/String;
    .param p2, "userSalt"  # [B
    .param p3, "ckSalt"  # [B
    .param p4, "rounds"  # I
    .param p5, "userIvHex"  # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"  # Ljava/lang/String;
    .param p7, "rawInStream"  # Ljava/io/InputStream;
    .param p8, "doLog"  # Z

    .line 274
    move-object/from16 v1, p1

    move/from16 v2, p4

    const-string v0, "AES"

    const-string v3, "Incorrect password"

    const-string v4, "BackupManagerService"

    const/4 v5, 0x0

    .line 277
    .local v5, "result":Ljava/io/InputStream;
    :try_start_b
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_11} :catch_130
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_11} :catch_123
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_11} :catch_114
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_105
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_11} :catch_f6
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_11} :catch_e7

    .line 278
    .local v6, "c":Ljavax/crypto/Cipher;
    nop

    .line 279
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :try_start_16
    invoke-static {v1, v7, v8, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 281
    .local v9, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 282
    .local v10, "IV":[B
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 283
    .local v11, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    .line 284
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 283
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v12, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 286
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 287
    .local v12, "mkCipher":[B
    invoke-virtual {v6, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 290
    .local v14, "mkBlob":[B
    const/4 v15, 0x0

    .line 291
    .local v15, "offset":I
    add-int/lit8 v13, v15, 0x1

    .end local v15  # "offset":I
    .local v13, "offset":I
    aget-byte v15, v14, v15
    :try_end_3d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_3d} :catch_e5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_3d} :catch_e3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_3d} :catch_e1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_3d} :catch_df
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_3d} :catch_dd
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_3d} :catch_db

    .line 292
    .local v15, "len":I
    move-object/from16 v16, v5

    .end local v5  # "result":Ljava/io/InputStream;
    .local v16, "result":Ljava/io/InputStream;
    add-int v5, v13, v15

    :try_start_41
    invoke-static {v14, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 293
    .end local v10  # "IV":[B
    .local v5, "IV":[B
    add-int/2addr v13, v15

    .line 295
    add-int/lit8 v10, v13, 0x1

    .end local v13  # "offset":I
    .local v10, "offset":I
    aget-byte v13, v14, v13

    .line 296
    .end local v15  # "len":I
    .local v13, "len":I
    add-int v15, v10, v13

    invoke-static {v14, v10, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 298
    .local v15, "mk":[B
    add-int/2addr v10, v13

    .line 300
    add-int/lit8 v7, v10, 0x1

    .end local v10  # "offset":I
    .local v7, "offset":I
    aget-byte v10, v14, v10

    .line 301
    .end local v13  # "len":I
    .local v10, "len":I
    add-int v13, v7, v10

    invoke-static {v14, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13
    :try_end_5b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_5b} :catch_d6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_41 .. :try_end_5b} :catch_d1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_41 .. :try_end_5b} :catch_cd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_5b} :catch_c9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_41 .. :try_end_5b} :catch_c5
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_5b} :catch_c1

    .line 305
    .local v13, "mkChecksum":[B
    move/from16 v17, v7

    move-object/from16 v7, p3

    .end local v7  # "offset":I
    .local v17, "offset":I
    :try_start_5f
    invoke-static {v1, v15, v7, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 307
    .local v19, "calculatedCk":[B
    move-object/from16 v1, v19

    .end local v19  # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18
    :try_end_6b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5f .. :try_end_6b} :catch_be
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5f .. :try_end_6b} :catch_bb
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5f .. :try_end_6b} :catch_b8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_6b} :catch_b5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5f .. :try_end_6b} :catch_b3
    .catch Ljava/security/InvalidKeyException; {:try_start_5f .. :try_end_6b} :catch_b1

    if-eqz v18, :cond_a4

    .line 308
    move-object/from16 v18, v1

    .end local v1  # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    :try_start_6f
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 309
    .end local v11  # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v11, v15, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v11, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 313
    new-instance v0, Ljavax/crypto/CipherInputStream;
    :try_end_7f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6f .. :try_end_7f} :catch_9f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6f .. :try_end_7f} :catch_9a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6f .. :try_end_7f} :catch_95
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7f} :catch_90
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6f .. :try_end_7f} :catch_8b
    .catch Ljava/security/InvalidKeyException; {:try_start_6f .. :try_end_7f} :catch_86

    move-object/from16 v11, p7

    :try_start_81
    invoke-direct {v0, v11, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v5, v0

    .end local v16  # "result":Ljava/io/InputStream;
    .local v0, "result":Ljava/io/InputStream;
    goto :goto_ad

    .line 341
    .end local v0  # "result":Ljava/io/InputStream;
    .end local v1  # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5  # "IV":[B
    .end local v6  # "c":Ljavax/crypto/Cipher;
    .end local v9  # "userKey":Ljavax/crypto/SecretKey;
    .end local v10  # "len":I
    .end local v12  # "mkCipher":[B
    .end local v13  # "mkChecksum":[B
    .end local v14  # "mkBlob":[B
    .end local v15  # "mk":[B
    .end local v17  # "offset":I
    .end local v18  # "calculatedCk":[B
    .restart local v16  # "result":Ljava/io/InputStream;
    :catch_86
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_ee

    .line 337
    :catch_8b
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_fd

    .line 333
    :catch_90
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_10c

    .line 329
    :catch_95
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_11b

    .line 321
    :catch_9a
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_12a

    .line 317
    :catch_9f
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_137

    .line 314
    .local v1, "calculatedCk":[B
    .restart local v5  # "IV":[B
    .restart local v6  # "c":Ljavax/crypto/Cipher;
    .restart local v9  # "userKey":Ljavax/crypto/SecretKey;
    .restart local v10  # "len":I
    .restart local v11  # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v12  # "mkCipher":[B
    .restart local v13  # "mkChecksum":[B
    .restart local v14  # "mkBlob":[B
    .restart local v15  # "mk":[B
    .restart local v17  # "offset":I
    :cond_a4
    move-object/from16 v18, v1

    .end local v1  # "calculatedCk":[B
    .restart local v18  # "calculatedCk":[B
    if-eqz p8, :cond_ab

    .line 315
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_81 .. :try_end_ab} :catch_be
    .catch Ljavax/crypto/BadPaddingException; {:try_start_81 .. :try_end_ab} :catch_bb
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_81 .. :try_end_ab} :catch_b8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_81 .. :try_end_ab} :catch_b5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_81 .. :try_end_ab} :catch_b3
    .catch Ljava/security/InvalidKeyException; {:try_start_81 .. :try_end_ab} :catch_b1

    .line 345
    .end local v5  # "IV":[B
    .end local v6  # "c":Ljavax/crypto/Cipher;
    .end local v9  # "userKey":Ljavax/crypto/SecretKey;
    .end local v10  # "len":I
    .end local v11  # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v12  # "mkCipher":[B
    .end local v13  # "mkChecksum":[B
    .end local v14  # "mkBlob":[B
    .end local v15  # "mk":[B
    .end local v17  # "offset":I
    .end local v18  # "calculatedCk":[B
    :cond_ab
    move-object/from16 v5, v16

    .end local v16  # "result":Ljava/io/InputStream;
    .local v5, "result":Ljava/io/InputStream;
    :goto_ad
    move-object/from16 v16, v5

    goto/16 :goto_13f

    .line 341
    .end local v5  # "result":Ljava/io/InputStream;
    .restart local v16  # "result":Ljava/io/InputStream;
    :catch_b1
    move-exception v0

    goto :goto_ee

    .line 337
    :catch_b3
    move-exception v0

    goto :goto_fd

    .line 333
    :catch_b5
    move-exception v0

    goto/16 :goto_10c

    .line 329
    :catch_b8
    move-exception v0

    goto/16 :goto_11b

    .line 321
    :catch_bb
    move-exception v0

    goto/16 :goto_12a

    .line 317
    :catch_be
    move-exception v0

    goto/16 :goto_137

    .line 341
    :catch_c1
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_ee

    .line 337
    :catch_c5
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_fd

    .line 333
    :catch_c9
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_10c

    .line 329
    :catch_cd
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_11b

    .line 321
    :catch_d1
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_12a

    .line 317
    :catch_d6
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_137

    .line 341
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_db
    move-exception v0

    goto :goto_ea

    .line 337
    :catch_dd
    move-exception v0

    goto :goto_f9

    .line 333
    :catch_df
    move-exception v0

    goto :goto_108

    .line 329
    :catch_e1
    move-exception v0

    goto :goto_117

    .line 321
    :catch_e3
    move-exception v0

    goto :goto_126

    .line 317
    :catch_e5
    move-exception v0

    goto :goto_133

    .line 341
    :catch_e7
    move-exception v0

    move-object/from16 v8, p2

    :goto_ea
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 342
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_ee
    if-eqz p8, :cond_13f

    .line 343
    const-string v1, "Illegal password; aborting"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 337
    .end local v0  # "e":Ljava/security/InvalidKeyException;
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_f6
    move-exception v0

    move-object/from16 v8, p2

    :goto_f9
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 338
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_fd
    if-eqz p8, :cond_13e

    .line 339
    const-string v1, "Needed padding mechanism unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 333
    .end local v0  # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_105
    move-exception v0

    move-object/from16 v8, p2

    :goto_108
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 334
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_10c
    if-eqz p8, :cond_13e

    .line 335
    const-string v1, "Needed decryption algorithm unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 329
    .end local v0  # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_114
    move-exception v0

    move-object/from16 v8, p2

    :goto_117
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 330
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_11b
    if-eqz p8, :cond_13e

    .line 331
    const-string v1, "Invalid block size in master key"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 321
    .end local v0  # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_123
    move-exception v0

    move-object/from16 v8, p2

    :goto_126
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 326
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_12a
    if-eqz p8, :cond_13e

    .line 327
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 317
    .end local v0  # "e":Ljavax/crypto/BadPaddingException;
    .end local v16  # "result":Ljava/io/InputStream;
    .restart local v5  # "result":Ljava/io/InputStream;
    :catch_130
    move-exception v0

    move-object/from16 v8, p2

    :goto_133
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 318
    .end local v5  # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v16  # "result":Ljava/io/InputStream;
    :goto_137
    if-eqz p8, :cond_13e

    .line 319
    const-string v1, "Needed parameter spec unavailable!"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .end local v0  # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_13e
    :goto_13e
    nop

    .line 347
    :cond_13f
    :goto_13f
    return-object v16
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 27
    .param p0, "decryptPassword"  # Ljava/lang/String;
    .param p1, "encryptionName"  # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"  # Z
    .param p3, "rawInStream"  # Ljava/io/InputStream;

    .line 354
    move-object/from16 v1, p1

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    .line 356
    .local v3, "result":Ljava/io/InputStream;
    :try_start_5
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 358
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 361
    .local v6, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 362
    .local v13, "ckSaltHex":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 364
    .local v7, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 365
    .local v8, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "masterKeyBlobHex":Ljava/lang/String;
    const-string v5, "PBKDF2WithHmacSHA1"

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 372
    if-nez v3, :cond_55

    if-eqz p2, :cond_55

    .line 373
    const-string v15, "PBKDF2WithHmacSHA1And8bit"

    const/16 v22, 0x1

    move-object/from16 v14, p0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, p3

    invoke-static/range {v14 .. v22}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 377
    .end local v0  # "userSaltHex":Ljava/lang/String;
    .end local v6  # "userSalt":[B
    .end local v7  # "ckSalt":[B
    .end local v8  # "rounds":I
    .end local v9  # "userIvHex":Ljava/lang/String;
    .end local v10  # "masterKeyBlobHex":Ljava/lang/String;
    .end local v13  # "ckSaltHex":Ljava/lang/String;
    :cond_55
    goto :goto_78

    .line 378
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption method: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_6a} :catch_72
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6a} :catch_6b

    goto :goto_78

    .line 382
    :catch_6b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Can\'t read input header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 380
    .end local v0  # "e":Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Can\'t parse restore data header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :goto_78
    nop

    .line 386
    :goto_79
    return-object v3
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .param p0, "rawInputStream"  # Ljava/io/InputStream;
    .param p1, "decryptPassword"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "compressed":Z
    move-object v1, p0

    .line 211
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 212
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 213
    .local v4, "headerLen":I
    new-array v5, v4, [B

    .line 214
    .local v5, "streamHeader":[B
    invoke-static {p0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 215
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 217
    .local v3, "magicBytes":[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-string v7, "BackupManagerService"

    if-eqz v6, :cond_74

    .line 219
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 221
    .local v8, "archiveVersion":I
    const/4 v9, 0x5

    if-gt v8, v9, :cond_5f

    .line 224
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2d

    move v11, v10

    goto :goto_2e

    :cond_2d
    move v11, v9

    .line 226
    .local v11, "pbkdf2Fallback":Z
    :goto_2e
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_39

    move v9, v10

    :cond_39
    move v0, v9

    .line 228
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 229
    const-string/jumbo v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 231
    const/4 v2, 0x1

    goto :goto_5e

    .line 232
    :cond_49
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_59

    .line 233
    invoke-static {p1, v6, v11, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_5e

    .line 237
    const/4 v2, 0x1

    goto :goto_5e

    .line 240
    :cond_59
    const-string v9, "Archive is encrypted but no password given"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v11  # "pbkdf2Fallback":Z
    :cond_5e
    :goto_5e
    goto :goto_73

    .line 243
    :cond_5f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong header version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v6  # "s":Ljava/lang/String;
    .end local v8  # "archiveVersion":I
    :goto_73
    goto :goto_79

    .line 246
    :cond_74
    const-string v6, "Didn\'t read the right header magic"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_79
    if-nez v2, :cond_82

    .line 250
    const-string v6, "Invalid restore data; aborting."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v6, 0x0

    return-object v6

    .line 255
    :cond_82
    if-eqz v0, :cond_8a

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_8b

    :cond_8a
    move-object v6, v1

    :goto_8b
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 6
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "buffer"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "offset":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 194
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    .local v1, "bytesRead":I
    if-lez v1, :cond_e

    .line 198
    add-int/2addr v0, v1

    .line 199
    .end local v1  # "bytesRead":I
    goto :goto_1

    .line 196
    .restart local v1  # "bytesRead":I
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v1  # "bytesRead":I
    :cond_16
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "in"  # Ljava/io/InputStream;
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
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_18

    .line 262
    const/16 v1, 0xa

    if-ne v2, v1, :cond_13

    .line 263
    goto :goto_18

    .line 265
    :cond_13
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 267
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 15

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
    .local v0, "rawInStream":Ljava/io/FileInputStream;
    const/4 v1, 0x1

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 142
    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_117
    .catchall {:try_start_2c .. :try_end_3d} :catchall_115

    .line 172
    if-eqz v0, :cond_42

    .line 173
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :cond_42
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_47} :catch_48

    .line 179
    goto :goto_50

    .line 176
    :catch_48
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v2  # "e":Ljava/io/IOException;
    :goto_50
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 181
    :try_start_53
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_7c

    .line 184
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 144
    return-void

    .line 183
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v1

    .line 147
    :cond_7f
    const-wide/16 v2, 0x0

    :try_start_81
    iput-wide v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 149
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 151
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_95} :catch_117
    .catchall {:try_start_81 .. :try_end_95} :catchall_115

    .line 153
    .local v2, "tarInputStream":Ljava/io/InputStream;
    if-nez v2, :cond_d8

    .line 172
    nop

    .line 173
    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a1

    .line 179
    goto :goto_a9

    .line 176
    :catch_a1
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v3  # "e":Ljava/io/IOException;
    :goto_a9
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 181
    :try_start_ac
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_ac .. :try_end_b7} :catchall_d5

    .line 184
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 156
    return-void

    .line 183
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1

    .line 159
    :cond_d8
    :try_start_d8
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
    .local v3, "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    new-instance v4, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v4, v3, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 163
    .local v4, "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_f1} :catch_117
    .catchall {:try_start_d8 .. :try_end_f1} :catchall_115

    .line 172
    .end local v2  # "tarInputStream":Ljava/io/InputStream;
    .end local v3  # "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    .end local v4  # "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    nop

    .line 173
    :try_start_f2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fb

    .line 179
    goto :goto_103

    .line 176
    :catch_fb
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v2  # "e":Ljava/io/IOException;
    :goto_103
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 181
    :try_start_106
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v2

    goto :goto_140

    :catchall_112
    move-exception v1

    monitor-exit v2
    :try_end_114
    .catchall {:try_start_106 .. :try_end_114} :catchall_112

    throw v1

    .line 171
    :catchall_115
    move-exception v2

    goto :goto_162

    .line 168
    :catch_117
    move-exception v2

    .line 169
    .restart local v2  # "e":Ljava/io/IOException;
    :try_start_118
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to read restore input"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_118 .. :try_end_11f} :catchall_115

    .line 172
    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_124

    .line 173
    :try_start_121
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :cond_124
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_129} :catch_12a

    .line 179
    goto :goto_132

    .line 176
    :catch_12a
    move-exception v2

    .line 177
    .restart local v2  # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v2  # "e":Ljava/io/IOException;
    :goto_132
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 181
    :try_start_135
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v2
    :try_end_140
    .catchall {:try_start_135 .. :try_end_140} :catchall_15f

    .line 184
    :goto_140
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    nop

    .line 189
    return-void

    .line 183
    :catchall_15f
    move-exception v1

    :try_start_160
    monitor-exit v2
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    throw v1

    .line 172
    :goto_162
    if-eqz v0, :cond_167

    .line 173
    :try_start_164
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 175
    :cond_167
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_16c} :catch_16d

    .line 179
    goto :goto_175

    .line 176
    :catch_16d
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v3  # "e":Ljava/io/IOException;
    :goto_175
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 181
    :try_start_178
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v3
    :try_end_183
    .catchall {:try_start_178 .. :try_end_183} :catchall_1a1

    .line 184
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 185
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 186
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 183
    :catchall_1a1
    move-exception v1

    :try_start_1a2
    monitor-exit v3
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v1
.end method
