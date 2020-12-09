.class public Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
.super Ljava/lang/Object;
.source "PlatformKeyManager.java"


# static fields
.field private static final ANDROID_KEY_STORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final DECRYPT_KEY_ALIAS_SUFFIX:Ljava/lang/String; = "decrypt"

.field private static final ENCRYPT_KEY_ALIAS_SUFFIX:Ljava/lang/String; = "encrypt"

.field private static final GCM_INSECURE_NONCE_BYTES:[B

.field private static final GCM_TAG_LENGTH_BITS:I = 0x80

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.locksettings.recoverablekeystore/platform/"

.field private static final KEY_SIZE_BITS:I = 0x100

.field private static final KEY_WRAP_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final TAG:Ljava/lang/String; = "PlatformKeyManager"

.field private static final USER_AUTHENTICATION_VALIDITY_DURATION_SECONDS:I = 0xf


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 115
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 117
    return-void
.end method

.method private ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 317
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x4

    .line 318
    invoke-virtual {p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object p2

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 317
    invoke-virtual {v0, v1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_17} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_17} :catch_18

    .line 327
    goto :goto_19

    .line 324
    :catch_18
    move-exception p1

    .line 328
    :goto_19
    return-void

    .line 320
    :catch_1a
    move-exception p2

    .line 321
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 321
    const-string p1, "The platform key for user %d became invalid."

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformKeyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p2}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static generateAesKey()Ljavax/crypto/SecretKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 485
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 486
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 487
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private generateAndLoadKey(II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAesKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 441
    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 443
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 444
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {v3, v6}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v6, "NoPadding"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-virtual {v3, v7}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 448
    if-eqz p1, :cond_60

    .line 450
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v7

    .line 452
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_58

    .line 453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No SID available for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformKeyManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 456
    :cond_58
    nop

    .line 457
    invoke-virtual {v3, v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 459
    invoke-virtual {v7, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 462
    :cond_60
    iget-object v7, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    new-instance v8, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v8, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 465
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v3

    .line 462
    invoke-interface {v7, v1, v8, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 466
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v3, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {v2, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    .line 466
    invoke-interface {v1, v0, v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->setGenerationId(II)V

    .line 475
    return-void
.end method

.method private static getAndLoadAndroidKeyStore()Ljava/security/KeyStore;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 497
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 499
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_a} :catch_c

    .line 503
    nop

    .line 504
    return-object v0

    .line 500
    :catch_c
    move-exception v0

    .line 502
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Unable to load keystore."

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDecryptAlias(II)Ljava/lang/String;
    .registers 5

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/platform/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "decrypt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 302
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 304
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    invoke-direct {v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;-><init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V

    return-object v1

    .line 300
    :cond_1d
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyStore doesn\'t contain key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEncryptAlias(II)Ljava/lang/String;
    .registers 5

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/platform/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "encrypt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 248
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 250
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    invoke-direct {v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;-><init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V

    return-object v1

    .line 246
    :cond_1d
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyStore doesn\'t contain key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 105
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getAndLoadAndroidKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    .line 103
    return-object v0
.end method

.method private isKeyLoaded(II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->containsAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 414
    :goto_1b
    return p1
.end method

.method private setGenerationId(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setPlatformKeyGenerationId(II)J

    .line 405
    return-void
.end method


# virtual methods
.method public getDecryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 272
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v0

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    :try_end_a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_a} :catch_b

    .line 274
    return-object v0

    .line 275
    :catch_b
    move-exception v0

    .line 276
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 276
    const-string v2, "Regenerating permanently invalid Platform key for user %d."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformKeyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 219
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object p1
    :try_end_a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_a} :catch_b

    return-object p1

    .line 221
    :catch_b
    move-exception v0

    .line 222
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 222
    const-string v2, "Regenerating permanently invalid Platform key for user %d."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformKeyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object p1

    return-object p1
.end method

.method getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 420
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    return-object v0
.end method

.method public getGenerationId(I)I
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    move-result p1

    return p1
.end method

.method init(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result v3

    const-string v4, "PlatformKeyManager"

    if-eqz v3, :cond_28

    .line 352
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 352
    const-string v0, "Platform key generation %d exists already."

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 356
    :cond_28
    const/4 v3, -0x1

    if-ne v0, v3, :cond_31

    .line 357
    const-string v0, "Generating initial platform key generation ID."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    goto :goto_45

    .line 360
    :cond_31
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 360
    const-string v1, "Platform generation ID was %d but no entry was present in AndroidKeyStore. Generating fresh key."

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    add-int/2addr v2, v0

    .line 366
    :goto_45
    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 367
    return-void

    .line 346
    :cond_49
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 346
    const-string p1, "%d does not have a lock screen set."

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidatePlatformKey(II)V
    .registers 5

    .line 154
    const/4 v0, -0x1

    if-eq p2, v0, :cond_17

    .line 156
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_15} :catch_16

    .line 160
    goto :goto_17

    .line 158
    :catch_16
    move-exception p1

    .line 162
    :cond_17
    :goto_17
    return-void
.end method

.method public isAvailable(I)Z
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    return p1
.end method

.method regenerate(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isAvailable(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 189
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 190
    goto :goto_13

    .line 192
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 193
    add-int/2addr v1, v0

    .line 195
    :goto_13
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 196
    return-void

    .line 183
    :cond_17
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 183
    const-string p1, "%d does not have a lock screen set."

    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
