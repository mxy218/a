.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
.super Ljava/lang/Object;
.source "KeySyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LENGTH_PREFIX_BYTES:I = 0x4

.field private static final LOCK_SCREEN_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field private static final SALT_LENGTH_BYTES:I = 0x10

.field static final SCRYPT_PARAM_N:I = 0x1000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_OUTLEN_BYTES:I = 0x20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_P:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_R:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KeySyncTask"

.field private static final TRUSTED_HARDWARE_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private final mCredential:[B

.field private final mCredentialType:I

.field private final mCredentialUpdated:Z

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mScrypt:Landroid/security/Scrypt;

.field private final mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 143
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 144
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 145
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 146
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 147
    iput-boolean p7, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 148
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 149
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 150
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 151
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    .line 152
    return-void
.end method

.method private static createApplicationKeyEntries(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    new-instance v3, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 535
    invoke-virtual {v3, v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 536
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 537
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v2

    .line 534
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    goto :goto_d

    .line 540
    :cond_42
    return-object v0
.end method

.method private generateAndStoreCounterId(I)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 402
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v2

    .line 403
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_18

    .line 407
    return-wide v0

    .line 404
    :cond_18
    const-string p1, "KeySyncTask"

    const-string v0, "Failed to set the snapshot version in the local DB."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to set counterId in the local DB."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 524
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 525
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 526
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static generateSalt()[B
    .registers 2

    .line 469
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 470
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 471
    return-object v0
.end method

.method private getKeysToSync(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 419
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v3

    .line 418
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object p1

    .line 420
    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static getUiFormat(I[B)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 454
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 455
    const/4 p0, 0x3

    return p0

    .line 456
    :cond_5
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isPin([B)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 457
    return v0

    .line 459
    :cond_c
    const/4 p0, 0x2

    return p0
.end method

.method static hashCredentialsBySaltedSha256([B[B)[B
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 498
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 500
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 501
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 503
    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 505
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 508
    :try_start_20
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 509
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_2e} :catch_2f

    .line 510
    return-object p1

    .line 511
    :catch_2f
    move-exception p0

    .line 513
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private hashCredentialsByScrypt([B[B)[B
    .registers 10

    .line 518
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    const/16 v3, 0x1000

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private isCustomLockScreen()Z
    .registers 4

    .line 194
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method static isPin([B)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 479
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 480
    return v0

    .line 482
    :cond_4
    array-length v1, p0

    .line 483
    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    .line 484
    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_12

    .line 485
    return v0

    .line 483
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 488
    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 106
    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 114
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v9}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    new-instance v10, Landroid/security/Scrypt;

    invoke-direct {v10}, Landroid/security/Scrypt;-><init>()V

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 106
    return-object v11
.end method

.method private shouldCreateSnapshot(I)Z
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    .line 429
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 432
    const/4 p1, 0x0

    return p1

    .line 434
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v0, :cond_29

    .line 436
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 437
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 438
    return v2

    .line 442
    :cond_29
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getShouldCreateSnapshot(II)Z

    move-result p1

    return p1
.end method

.method private shouldUseScryptToHashCredential()Z
    .registers 3

    .line 544
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private syncKeys()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const-string v1, "KeySyncTask"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials are not set for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 172
    return-void

    .line 174
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isCustomLockScreen()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported credential type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUserIdOnCustomScreenLock(I)V

    .line 177
    return-void

    .line 180
    :cond_5b
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 183
    :try_start_77
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeysForAgent(I)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 186
    goto :goto_90

    .line 184
    :catch_7b
    move-exception v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException during sync for agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_90
    goto :goto_67

    .line 188
    :cond_91
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No recovery agent initialized for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_ad
    return-void
.end method

.method private syncKeysForAgent(I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 201
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldCreateSnapshot(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "KeySyncTask"

    if-nez v2, :cond_30

    .line 202
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v5, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 203
    invoke-virtual {v2, v5, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 204
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    move v2, v3

    .line 205
    :goto_22
    if-eqz v2, :cond_2a

    .line 206
    const-string v5, "Recreating most recent snapshot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 208
    :cond_2a
    const-string v0, "Key sync not needed."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 201
    :cond_30
    move v2, v3

    .line 213
    :goto_31
    iget-object v5, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 214
    invoke-virtual {v5, v6, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v5

    .line 215
    iget-object v6, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 216
    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    iget-object v6, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v7, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v6

    .line 221
    if-eqz v6, :cond_5d

    .line 222
    const-string v7, "Using the public key in stored CertPath for syncing"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v6}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    goto :goto_6a

    .line 225
    :cond_5d
    const-string v7, "Using the stored raw public key for syncing"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v7, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v8, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v7, v8, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServicePublicKey(II)Ljava/security/PublicKey;

    move-result-object v7

    .line 229
    :goto_6a
    if-nez v7, :cond_72

    .line 230
    const-string v0, "Not initialized for KeySync: no public key set. Cancelling task."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 234
    :cond_72
    iget-object v8, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v9, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v8, v9, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v8

    .line 235
    if-nez v8, :cond_93

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device ID set for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    :cond_93
    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v9, v5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insecure root certificate is used by recovery agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    iget v10, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-virtual {v9, v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->doesCredentialSupportInsecureMode(I[B)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Whitelisted credential is used to generate snapshot by recovery agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 248
    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non whitelisted credential is used to generate recovery snapshot by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - ignore attempt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 254
    :cond_ea
    :goto_ea
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldUseScryptToHashCredential()Z

    move-result v9

    .line 255
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateSalt()[B

    move-result-object v10

    .line 257
    if-eqz v9, :cond_fb

    .line 258
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-direct {v0, v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsByScrypt([B[B)[B

    move-result-object v11

    goto :goto_101

    .line 260
    :cond_fb
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-static {v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsBySaltedSha256([B[B)[B

    move-result-object v11

    .line 265
    :goto_101
    :try_start_101
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getKeysToSync(I)Ljava/util/Map;

    move-result-object v12
    :try_end_105
    .catch Ljava/security/GeneralSecurityException; {:try_start_101 .. :try_end_105} :catch_21c
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_101 .. :try_end_105} :catch_213
    .catch Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException; {:try_start_101 .. :try_end_105} :catch_20a
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_105} :catch_201

    .line 280
    nop

    .line 282
    iget-object v13, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v13, v5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_114

    .line 283
    iget-object v5, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 284
    invoke-virtual {v5, v12}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 290
    :cond_114
    :try_start_114
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateRecoveryKey()Ljavax/crypto/SecretKey;

    move-result-object v5
    :try_end_118
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_114 .. :try_end_118} :catch_1f9

    .line 294
    nop

    .line 298
    :try_start_119
    invoke-static {v5, v12}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13
    :try_end_11d
    .catch Ljava/security/InvalidKeyException; {:try_start_119 .. :try_end_11d} :catch_1f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_119 .. :try_end_11d} :catch_1f1

    .line 305
    nop

    .line 309
    iget-boolean v14, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v14, :cond_12b

    .line 310
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_13d

    .line 312
    :cond_12b
    iget-object v14, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v15, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v14, v15, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getCounterId(II)Ljava/lang/Long;

    move-result-object v14

    .line 313
    if-nez v14, :cond_13d

    .line 314
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 318
    :cond_13d
    :goto_13d
    nop

    .line 320
    move-object v15, v4

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 318
    move-object/from16 v16, v15

    const/16 v15, 0xa

    invoke-static {v7, v3, v4, v15, v8}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->packVaultParams(Ljava/security/PublicKey;JI[B)[B

    move-result-object v3

    .line 326
    :try_start_14b
    invoke-static {v7, v11, v3, v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B

    move-result-object v3
    :try_end_14f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14b .. :try_end_14f} :catch_1e7
    .catch Ljava/security/InvalidKeyException; {:try_start_14b .. :try_end_14f} :catch_1dd

    .line 337
    nop

    .line 340
    if-eqz v9, :cond_159

    .line 341
    const/16 v4, 0x1000

    invoke-static {v10, v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v4

    goto :goto_15d

    .line 344
    :cond_159
    invoke-static {v10}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v4

    .line 346
    :goto_15d
    new-instance v5, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    const/16 v7, 0x64

    .line 347
    invoke-virtual {v5, v7}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v5

    iget v7, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 348
    invoke-static {v7, v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getUiFormat(I[B)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v5

    .line 349
    invoke-virtual {v5, v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v4

    const/4 v5, 0x0

    new-array v7, v5, [B

    .line 350
    invoke-virtual {v4, v7}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v4

    .line 353
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v4, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getSnapshotVersion(IZ)I

    move-result v2

    .line 357
    invoke-virtual {v4, v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2, v15}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 360
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 361
    invoke-virtual {v2, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 362
    invoke-virtual {v2, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 364
    invoke-static {v13, v12}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->createApplicationKeyEntries(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 363
    invoke-virtual {v2, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v2

    .line 367
    :try_start_1b8
    invoke-virtual {v2, v6}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_1bb
    .catch Ljava/security/cert/CertificateException; {:try_start_1b8 .. :try_end_1bb} :catch_1d3

    .line 372
    nop

    .line 373
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 374
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->recoverySnapshotAvailable(I)V

    .line 376
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v0, v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 377
    return-void

    .line 368
    :catch_1d3
    move-exception v0

    move-object v1, v0

    .line 370
    const-string v0, "Cannot serialize CertPath when calling setTrustedHardwareCertPath"

    move-object/from16 v2, v16

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void

    .line 334
    :catch_1dd
    move-exception v0

    move-object/from16 v2, v16

    move-object v1, v0

    .line 335
    const-string v0, "Could not encrypt with recovery key"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-void

    .line 331
    :catch_1e7
    move-exception v0

    move-object/from16 v2, v16

    move-object v1, v0

    .line 332
    const-string v0, "SecureBox encrypt algorithms unavailable"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return-void

    .line 300
    :catch_1f1
    move-exception v0

    move-object v2, v4

    .line 301
    const-string v1, "Should be impossible: could not encrypt application keys with random key"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return-void

    .line 291
    :catch_1f9
    move-exception v0

    move-object v1, v0

    .line 292
    const-string v0, "AES should never be unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    return-void

    .line 277
    :catch_201
    move-exception v0

    move-object v2, v4

    move-object v1, v0

    .line 278
    const-string v0, "Local database error."

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    return-void

    .line 273
    :catch_20a
    move-exception v0

    move-object v2, v4

    move-object v1, v0

    .line 274
    const-string v0, "Loaded keys for same generation ID as platform key, so BadPlatformKeyException should be impossible."

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    return-void

    .line 269
    :catch_213
    move-exception v0

    move-object v2, v4

    move-object v1, v0

    .line 270
    const-string v0, "A screen unlock triggered the key sync flow, so user must have lock screen. This should be impossible."

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    return-void

    .line 266
    :catch_21c
    move-exception v0

    move-object v2, v4

    move-object v1, v0

    .line 267
    const-string v0, "Failed to load recoverable keys for sync"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    return-void
.end method


# virtual methods
.method getSnapshotVersion(IZ)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    .line 383
    const-wide/16 v1, 0x1

    if-eqz p2, :cond_18

    .line 385
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_24

    .line 387
    :cond_18
    if-nez v0, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    :goto_20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 390
    :goto_24
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 391
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 390
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setSnapshotVersion(IIJ)J

    move-result-wide v0

    .line 392
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3b

    .line 397
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    .line 393
    :cond_3b
    const-string p1, "Failed to set the snapshot version in the local DB."

    const-string p2, "KeySyncTask"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public run()V
    .registers 4

    .line 158
    :try_start_0
    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_b

    .line 159
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeys()V

    .line 160
    monitor-exit v0

    .line 163
    goto :goto_13

    .line 160
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    :try_start_a
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_b

    .line 161
    :catch_b
    move-exception v0

    .line 162
    const-string v1, "KeySyncTask"

    const-string v2, "Unexpected exception thrown during KeySyncTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_13
    return-void
.end method
