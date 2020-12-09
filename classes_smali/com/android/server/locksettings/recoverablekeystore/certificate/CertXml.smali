.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
.super Ljava/lang/Object;
.source "CertXml.java"


# static fields
.field private static final ENDPOINT_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field private static final ENDPOINT_CERT_LIST_TAG:Ljava/lang/String; = "endpoints"

.field private static final INTERMEDIATE_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field private static final INTERMEDIATE_CERT_LIST_TAG:Ljava/lang/String; = "intermediates"

.field private static final METADATA_NODE_TAG:Ljava/lang/String; = "metadata"

.field private static final METADATA_SERIAL_NODE_TAG:Ljava/lang/String; = "serial"


# instance fields
.field private final endpointCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final intermediateCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final serial:J


# direct methods
.method private constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    .line 55
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    .line 56
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 109
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    .line 110
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseSerial(Lorg/w3c/dom/Element;)J

    move-result-wide v1

    .line 111
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseEndpointCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;-><init>(JLjava/util/List;Ljava/util/List;)V

    .line 109
    return-object v0
.end method

.method private static parseEndpointCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 142
    const-string v0, "endpoints"

    const-string v1, "cert"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 143
    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_16

    .line 152
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 127
    const-string v0, "intermediates"

    const-string v1, "cert"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_16

    .line 137
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseSerial(Lorg/w3c/dom/Element;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 116
    const-string v0, "metadata"

    const-string/jumbo v1, "serial"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 122
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getAllEndpointCerts()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    return-object v0
.end method

.method getAllIntermediateCerts()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    return-object v0
.end method

.method getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 96
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    invoke-static {p2, p3, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object p1

    return-object p1
.end method

.method public getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object p1

    return-object p1
.end method

.method public getSerial()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    return-wide v0
.end method
