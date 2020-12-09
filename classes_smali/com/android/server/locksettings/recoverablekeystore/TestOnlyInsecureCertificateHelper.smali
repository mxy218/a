.class public Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "TestOnlyInsecureCertificateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestCertHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public doesCredentialSupportInsecureMode(I[B)Z
    .registers 7

    .line 97
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 98
    return v0

    .line 100
    :cond_4
    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    .line 101
    return v0

    .line 103
    :cond_8
    nop

    .line 104
    const-string p1, "INSECURE_PSWD_"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 105
    array-length v1, p2

    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 106
    return v0

    .line 108
    :cond_14
    move v1, v0

    :goto_15
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 109
    aget-byte v2, p2, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1f

    .line 110
    return v0

    .line 108
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 113
    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method public getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 72
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 73
    :cond_8
    const-string p1, "TestCertHelper"

    const-string/jumbo v0, "rootCertificateAlias is null or empty - use secure default value"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string p1, "GoogleCloudKeyVaultServiceV1"

    .line 77
    :cond_12
    return-object p1
.end method

.method public getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 61
    :cond_f
    nop

    .line 62
    invoke-static {p1}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 63
    if-eqz p1, :cond_17

    .line 67
    return-object p1

    .line 64
    :cond_17
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x1c

    const-string v1, "The provided root certificate alias is invalid"

    invoke-direct {p1, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public isTestOnlyCertificateAlias(Ljava/lang/String;)Z
    .registers 3

    .line 81
    nop

    .line 82
    const-string v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 81
    return p1
.end method

.method public isValidRootCertificateAlias(Ljava/lang/String;)Z
    .registers 3

    .line 86
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 86
    :goto_14
    return p1
.end method

.method public keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    .line 118
    if-nez p1, :cond_4

    .line 119
    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    if-eqz v2, :cond_69

    .line 125
    const-string v3, "INSECURE_KEY_ALIAS_KEY_MATERIAL_IS_NOT_PROTECTED_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 126
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding key with insecure alias "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to the recovery snapshot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestCertHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_69
    goto :goto_11

    .line 131
    :cond_6a
    return-object v0
.end method
