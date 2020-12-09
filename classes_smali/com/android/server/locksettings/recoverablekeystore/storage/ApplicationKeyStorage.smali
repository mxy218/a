.class public Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
.super Ljava/lang/Object;
.source "ApplicationKeyStorage.java"


# static fields
.field private static final APPLICATION_KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.locksettings.recoverablekeystore/application/"

.field private static final TAG:Ljava/lang/String; = "RecoverableAppKeyStore"


# instance fields
.field private final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

.field private final mKeystoreService:Landroid/security/KeyStore;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Landroid/security/KeyStore;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 64
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeystoreService:Landroid/security/KeyStore;

    .line 65
    return-void
.end method

.method public static getInstance(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 57
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->getAndLoadAndroidKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;-><init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Landroid/security/KeyStore;)V

    .line 56
    return-object v0
.end method

.method private getInternalAlias(IILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteEntry(IILjava/lang/String;)V
    .registers 8

    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "Del %d/%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_21
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_21 .. :try_end_2a} :catch_2c

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catch_2c
    move-exception p1

    .line 102
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public getGrantAlias(IILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "Get %d/%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeystoreService:Landroid/security/KeyStore;

    invoke-virtual {p3, p1, p2}, Landroid/security/KeyStore;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setSymmetricKeyEntry(IILjava/lang/String;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 80
    const-string v2, "Set %d/%d/%s: %d bytes of key material"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_29
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/security/KeyStore$SecretKeyEntry;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p3, p4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance p3, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {p3, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string p4, "GCM"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    .line 89
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    const-string p4, "NoPadding"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    .line 90
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    .line 91
    invoke-virtual {p3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p3

    .line 83
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_5b
    .catch Ljava/security/KeyStoreException; {:try_start_29 .. :try_end_5b} :catch_5d

    .line 94
    nop

    .line 95
    return-void

    .line 92
    :catch_5d
    move-exception p1

    .line 93
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method
