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
    .param p1, "recoverableKeyStoreDb"  # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"  # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"  # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"  # I
    .param p5, "credentialType"  # I
    .param p6, "credential"  # [B
    .param p7, "credentialUpdated"  # Z
    .param p8, "platformKeyManager"  # Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .param p9, "testOnlyInsecureCertificateHelper"  # Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
    .param p10, "scrypt"  # Landroid/security/Scrypt;
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
    .local p0, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "originalKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v0, "keyEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
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
    .local v2, "alias":Ljava/lang/String;
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

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    .line 534
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v2  # "alias":Ljava/lang/String;
    goto :goto_d

    .line 540
    :cond_42
    return-object v0
.end method

.method private generateAndStoreCounterId(I)J
    .registers 8
    .param p1, "recoveryAgentUid"  # I
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
    .local v0, "counter":J
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v2

    .line 403
    .local v2, "updatedRows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_18

    .line 407
    return-wide v0

    .line 404
    :cond_18
    const-string v4, "KeySyncTask"

    const-string v5, "Failed to set the snapshot version in the local DB."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to set counterId in the local DB."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 526
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method private static generateSalt()[B
    .registers 2

    .line 469
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 470
    .local v0, "salt":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 471
    return-object v0
.end method

.method private getKeysToSync(I)Ljava/util/Map;
    .registers 6
    .param p1, "recoveryAgentUid"  # I
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
    .local v0, "decryptKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 419
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v3

    .line 418
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object v1

    .line 420
    .local v1, "wrappedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method static getUiFormat(I[B)I
    .registers 4
    .param p0, "credentialType"  # I
    .param p1, "credential"  # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 454
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 455
    const/4 v0, 0x3

    return v0

    .line 456
    :cond_5
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isPin([B)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 457
    return v0

    .line 459
    :cond_c
    const/4 v0, 0x2

    return v0
.end method

.method static hashCredentialsBySaltedSha256([B[B)[B
    .registers 6
    .param p0, "salt"  # [B
    .param p1, "credentialsBytes"  # [B
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
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 501
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 503
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 505
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 508
    .local v1, "bytes":[B
    :try_start_20
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 509
    .local v2, "hash":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_2e} :catch_2f

    .line 510
    return-object v2

    .line 511
    .end local v2  # "hash":[B
    :catch_2f
    move-exception v2

    .line 513
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private hashCredentialsByScrypt([B[B)[B
    .registers 10
    .param p1, "salt"  # [B
    .param p2, "credentials"  # [B

    .line 518
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    const/16 v3, 0x1000

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
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
    .param p0, "credential"  # [B
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
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
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
    .end local v2  # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    .registers 20
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "recoverableKeyStoreDb"  # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"  # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"  # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"  # I
    .param p5, "credentialType"  # I
    .param p6, "credential"  # [B
    .param p7, "credentialUpdated"  # Z
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
    .registers 6
    .param p1, "recoveryAgentUid"  # I

    .line 428
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    .line 429
    .local v0, "types":[I
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 432
    const/4 v1, 0x0

    return v1

    .line 434
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v1, :cond_29

    .line 436
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 437
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 438
    return v3

    .line 442
    :cond_29
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getShouldCreateSnapshot(II)Z

    move-result v1

    return v1
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
    .local v0, "generation":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 172
    return-void

    .line 174
    .end local v0  # "generation":I
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
    .local v0, "recoveryAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
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
    .local v3, "uid":I
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
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException during sync for agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v3  # "uid":I
    .end local v4  # "e":Ljava/io/IOException;
    :goto_90
    goto :goto_67

    .line 188
    :cond_91
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No recovery agent initialized for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_ad
    return-void
.end method

.method private syncKeysForAgent(I)V
    .registers 26
    .param p1, "recoveryAgentUid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 201
    .local v0, "shouldRecreateCurrentVersion":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldCreateSnapshot(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "KeySyncTask"

    if-nez v3, :cond_33

    .line 202
    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 203
    invoke-virtual {v3, v6, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 204
    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    move v0, v3

    .line 205
    if-eqz v0, :cond_2d

    .line 206
    const-string v3, "Recreating most recent snapshot"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_34

    .line 208
    :cond_2d
    const-string v3, "Key sync not needed."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 201
    :cond_33
    move v3, v0

    .line 213
    .end local v0  # "shouldRecreateCurrentVersion":Z
    .local v3, "shouldRecreateCurrentVersion":Z
    :goto_34
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 214
    invoke-virtual {v0, v6, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "rootCertAlias":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 216
    invoke-virtual {v6, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .end local v0  # "rootCertAlias":Ljava/lang/String;
    .local v6, "rootCertAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v7, v2, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 221
    .local v7, "certPath":Ljava/security/cert/CertPath;
    if-eqz v7, :cond_61

    .line 222
    const-string v0, "Using the public key in stored CertPath for syncing"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v7}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v8, v0

    .local v0, "publicKey":Ljava/security/PublicKey;
    goto :goto_6f

    .line 225
    .end local v0  # "publicKey":Ljava/security/PublicKey;
    :cond_61
    const-string v0, "Using the stored raw public key for syncing"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v8, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServicePublicKey(II)Ljava/security/PublicKey;

    move-result-object v0

    move-object v8, v0

    .line 229
    .local v8, "publicKey":Ljava/security/PublicKey;
    :goto_6f
    if-nez v8, :cond_77

    .line 230
    const-string v0, "Not initialized for KeySync: no public key set. Cancelling task."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 234
    :cond_77
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v9, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v9

    .line 235
    .local v9, "vaultHandle":[B
    if-nez v9, :cond_98

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No device ID set for user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    :cond_98
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insecure root certificate is used by recovery agent "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    iget v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    iget-object v11, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-virtual {v0, v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->doesCredentialSupportInsecureMode(I[B)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Whitelisted credential is used to generate snapshot by recovery agent "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 248
    :cond_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non whitelisted credential is used to generate recovery snapshot by "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - ignore attempt."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 254
    :cond_ef
    :goto_ef
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldUseScryptToHashCredential()Z

    move-result v10

    .line 255
    .local v10, "useScryptToHashCredential":Z
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateSalt()[B

    move-result-object v11

    .line 257
    .local v11, "salt":[B
    if-eqz v10, :cond_101

    .line 258
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-direct {v1, v11, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsByScrypt([B[B)[B

    move-result-object v0

    move-object v12, v0

    .local v0, "localLskfHash":[B
    goto :goto_108

    .line 260
    .end local v0  # "localLskfHash":[B
    :cond_101
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-static {v11, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsBySaltedSha256([B[B)[B

    move-result-object v0

    move-object v12, v0

    .line 265
    .local v12, "localLskfHash":[B
    :goto_108
    :try_start_108
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getKeysToSync(I)Ljava/util/Map;

    move-result-object v0
    :try_end_10c
    .catch Ljava/security/GeneralSecurityException; {:try_start_108 .. :try_end_10c} :catch_285
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_108 .. :try_end_10c} :catch_272
    .catch Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException; {:try_start_108 .. :try_end_10c} :catch_25f
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10c} :catch_24c

    .line 280
    .local v0, "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    nop

    .line 282
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v13, v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11d

    .line 283
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 284
    invoke-virtual {v13, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v13, v0

    goto :goto_11e

    .line 282
    :cond_11d
    move-object v13, v0

    .line 290
    .end local v0  # "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    .local v13, "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    :goto_11e
    :try_start_11e
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateRecoveryKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_122
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11e .. :try_end_122} :catch_23a

    move-object v14, v0

    .line 294
    .local v14, "recoveryKey":Ljavax/crypto/SecretKey;
    nop

    .line 298
    :try_start_124
    invoke-static {v14, v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_128
    .catch Ljava/security/InvalidKeyException; {:try_start_124 .. :try_end_128} :catch_229
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_124 .. :try_end_128} :catch_229

    move-object v15, v0

    .line 305
    .local v15, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    nop

    .line 309
    iget-boolean v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v0, :cond_138

    .line 310
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    .local v0, "counterId":Ljava/lang/Long;
    goto :goto_14d

    .line 312
    .end local v0  # "counterId":Ljava/lang/Long;
    :cond_138
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getCounterId(II)Ljava/lang/Long;

    move-result-object v0

    .line 313
    .restart local v0  # "counterId":Ljava/lang/Long;
    if-nez v0, :cond_14c

    .line 314
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    goto :goto_14d

    .line 313
    :cond_14c
    move-object v4, v0

    .line 318
    .end local v0  # "counterId":Ljava/lang/Long;
    .local v4, "counterId":Ljava/lang/Long;
    :goto_14d
    nop

    .line 320
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .local v18, "rootCertAlias":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 318
    const/16 v0, 0xa

    invoke-static {v8, v5, v6, v0, v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->packVaultParams(Ljava/security/PublicKey;JI[B)[B

    move-result-object v5

    .line 326
    .local v5, "vaultParams":[B
    :try_start_15c
    invoke-static {v8, v12, v5, v14}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B

    move-result-object v6
    :try_end_160
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15c .. :try_end_160} :catch_215
    .catch Ljava/security/InvalidKeyException; {:try_start_15c .. :try_end_160} :catch_201

    .line 337
    .local v6, "encryptedRecoveryKey":[B
    nop

    .line 340
    if-eqz v10, :cond_16d

    .line 341
    const/16 v0, 0x1000

    invoke-static {v11, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    move-object/from16 v20, v5

    move-object v5, v0

    .local v0, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    goto :goto_174

    .line 344
    .end local v0  # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    :cond_16d
    invoke-static {v11}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    move-object/from16 v20, v5

    move-object v5, v0

    .line 346
    .local v5, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v20, "vaultParams":[B
    :goto_174
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    move-object/from16 v21, v8

    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .local v21, "publicKey":Ljava/security/PublicKey;
    const/16 v8, 0x64

    .line 347
    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    move/from16 v22, v10

    .end local v10  # "useScryptToHashCredential":Z
    .local v22, "useScryptToHashCredential":Z
    iget-object v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 348
    invoke-static {v8, v10}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getUiFormat(I[B)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    const/4 v8, 0x0

    new-array v10, v8, [B

    .line 350
    invoke-virtual {v0, v10}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v8

    .line 353
    .local v8, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 354
    .local v10, "metadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 358
    move-object/from16 v23, v5

    .end local v5  # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v23, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    invoke-virtual {v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getSnapshotVersion(IZ)I

    move-result v5

    .line 357
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 359
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 360
    move-object v5, v11

    move-object/from16 v19, v12

    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .local v5, "salt":[B
    .local v19, "localLskfHash":[B
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 364
    invoke-static {v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->createApplicationKeyEntries(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 363
    invoke-virtual {v0, v11}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v6}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v11

    .line 367
    .local v11, "keyChainSnapshotBuilder":Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_start_1db
    invoke-virtual {v11, v7}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_1de
    .catch Ljava/security/cert/CertificateException; {:try_start_1db .. :try_end_1de} :catch_1f6

    .line 372
    nop

    .line 373
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v11}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 374
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->recoverySnapshotAvailable(I)V

    .line 376
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v12, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 377
    return-void

    .line 368
    :catch_1f6
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 370
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "Cannot serialize CertPath when calling setTrustedHardwareCertPath"

    move-object/from16 v12, v17

    invoke-static {v12, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void

    .line 334
    .end local v0  # "e":Ljava/security/cert/CertificateException;
    .end local v6  # "encryptedRecoveryKey":[B
    .end local v19  # "localLskfHash":[B
    .end local v20  # "vaultParams":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .end local v23  # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v5, "vaultParams":[B
    .local v8, "publicKey":Ljava/security/PublicKey;
    .local v10, "useScryptToHashCredential":Z
    .local v11, "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_201
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object v5, v11

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object v1, v0

    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .local v5, "salt":[B
    .restart local v19  # "localLskfHash":[B
    .restart local v20  # "vaultParams":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 335
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v1, "Could not encrypt with recovery key"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-void

    .line 331
    .end local v0  # "e":Ljava/security/InvalidKeyException;
    .end local v19  # "localLskfHash":[B
    .end local v20  # "vaultParams":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .local v5, "vaultParams":[B
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_215
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object v5, v11

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object v1, v0

    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .local v5, "salt":[B
    .restart local v19  # "localLskfHash":[B
    .restart local v20  # "vaultParams":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 332
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SecureBox encrypt algorithms unavailable"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return-void

    .line 300
    .end local v0  # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4  # "counterId":Ljava/lang/Long;
    .end local v5  # "salt":[B
    .end local v15  # "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v20  # "vaultParams":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .local v6, "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_229
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v11

    .line 301
    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    const-string v1, "Should be impossible: could not encrypt application keys with random key"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return-void

    .line 291
    .end local v0  # "e":Ljava/security/GeneralSecurityException;
    .end local v5  # "salt":[B
    .end local v14  # "recoveryKey":Ljavax/crypto/SecretKey;
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .restart local v6  # "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_23a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object v5, v11

    move-object/from16 v19, v12

    move-object v1, v0

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 292
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "AES should never be unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    return-void

    .line 277
    .end local v0  # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v5  # "salt":[B
    .end local v13  # "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .restart local v6  # "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_24c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v11

    move-object v1, v0

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 278
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Local database error."

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    return-void

    .line 273
    .end local v0  # "e":Ljava/io/IOException;
    .end local v5  # "salt":[B
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .restart local v6  # "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_25f
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v11

    move-object v1, v0

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 274
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    const-string v1, "Loaded keys for same generation ID as platform key, so BadPlatformKeyException should be impossible."

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    return-void

    .line 269
    .end local v0  # "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    .end local v5  # "salt":[B
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .restart local v6  # "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_272
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v11

    move-object v1, v0

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 270
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v1, "A screen unlock triggered the key sync flow, so user must have lock screen. This should be impossible."

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    return-void

    .line 266
    .end local v0  # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    .end local v5  # "salt":[B
    .end local v18  # "rootCertAlias":Ljava/lang/String;
    .end local v19  # "localLskfHash":[B
    .end local v21  # "publicKey":Ljava/security/PublicKey;
    .end local v22  # "useScryptToHashCredential":Z
    .restart local v6  # "rootCertAlias":Ljava/lang/String;
    .restart local v8  # "publicKey":Ljava/security/PublicKey;
    .restart local v10  # "useScryptToHashCredential":Z
    .restart local v11  # "salt":[B
    .restart local v12  # "localLskfHash":[B
    :catch_285
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v11

    move-object v1, v0

    .end local v6  # "rootCertAlias":Ljava/lang/String;
    .end local v8  # "publicKey":Ljava/security/PublicKey;
    .end local v10  # "useScryptToHashCredential":Z
    .end local v11  # "salt":[B
    .end local v12  # "localLskfHash":[B
    .restart local v5  # "salt":[B
    .restart local v18  # "rootCertAlias":Ljava/lang/String;
    .restart local v19  # "localLskfHash":[B
    .restart local v21  # "publicKey":Ljava/security/PublicKey;
    .restart local v22  # "useScryptToHashCredential":Z
    move-object v0, v1

    .line 267
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "Failed to load recoverable keys for sync"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    return-void
.end method


# virtual methods
.method getSnapshotVersion(IZ)I
    .registers 8
    .param p1, "recoveryAgentUid"  # I
    .param p2, "shouldRecreateCurrentVersion"  # Z
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
    .local v0, "snapshotVersion":Ljava/lang/Long;
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

    move-result-object v0

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

    move-result-object v0

    .line 390
    :goto_24
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 391
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 390
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setSnapshotVersion(IIJ)J

    move-result-wide v1

    .line 392
    .local v1, "updatedRows":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3b

    .line 397
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    return v3

    .line 393
    :cond_3b
    const-string v3, "Failed to set the snapshot version in the local DB."

    const-string v4, "KeySyncTask"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
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

    .end local p0  # "this":Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    :try_start_a
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_b

    .line 161
    .restart local p0  # "this":Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    :catch_b
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeySyncTask"

    const-string v2, "Unexpected exception thrown during KeySyncTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method
