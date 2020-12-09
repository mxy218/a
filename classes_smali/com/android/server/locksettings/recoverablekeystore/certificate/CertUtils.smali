.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils$MustExist;
    }
.end annotation


# static fields
.field private static final CERT_FORMAT:Ljava/lang/String; = "X.509"

.field private static final CERT_PATH_ALG:Ljava/lang/String; = "PKIX"

.field private static final CERT_STORE_ALG:Ljava/lang/String; = "Collection"

.field static final MUST_EXIST_AT_LEAST_ONE:I = 0x2

.field static final MUST_EXIST_EXACTLY_ONE:I = 0x1

.field static final MUST_EXIST_UNENFORCED:I = 0x0

.field private static final SIGNATURE_ALG:Ljava/lang/String; = "SHA256withRSA"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 343
    :try_start_0
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_17

    .line 347
    nop

    .line 349
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_7 .. :try_end_f} :catch_10
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    .line 350
    :catch_10
    move-exception p0

    .line 351
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 344
    :catch_17
    move-exception p0

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/PKIXParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 364
    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :try_start_16
    const-string p2, "Collection"

    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v1, p1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 372
    invoke-static {p2, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p1
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_21} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_21} :catch_42

    .line 378
    nop

    .line 381
    new-instance p2, Ljava/security/cert/X509CertSelector;

    invoke-direct {p2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 382
    invoke-virtual {p2, p3}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 387
    :try_start_2a
    new-instance p3, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {p3, v0, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_2f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2a .. :try_end_2f} :catch_3b

    .line 390
    nop

    .line 391
    invoke-virtual {p3, p1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 394
    invoke-virtual {p3, p0}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 395
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 397
    return-object p3

    .line 388
    :catch_3b
    move-exception p0

    .line 389
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 376
    :catch_42
    move-exception p0

    .line 377
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 373
    :catch_49
    move-exception p0

    .line 375
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 231
    :catch_9
    move-exception p0

    .line 232
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 103
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_15

    .line 107
    nop

    .line 109
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p0

    .line 110
    :catch_e
    move-exception p0

    .line 111
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 104
    :catch_15
    move-exception p0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static decodeCert([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 212
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 213
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 214
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 215
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 218
    :cond_2d
    return-object v0
.end method

.method static varargs getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/w3c/dom/Element;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 164
    array-length v0, p2

    if-eqz v0, :cond_c5

    .line 171
    nop

    .line 172
    const/4 v0, 0x0

    move-object v1, p1

    move p1, v0

    :goto_7
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_4c

    .line 173
    aget-object v2, p2, p1

    .line 174
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1a

    if-nez p0, :cond_35

    .line 176
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_35

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2c

    .line 181
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 183
    :cond_2c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 172
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 177
    :cond_35
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The XML file must contain exactly one path with the tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_4c
    array-length p1, p2

    sub-int/2addr p1, v3

    aget-object p1, p2, p1

    invoke-static {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlDirectChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 188
    const-string v0, "/"

    if-ne p0, v3, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5f

    goto :goto_7a

    .line 189
    :cond_5f
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The XML file must contain exactly one node with the path "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_7a
    :goto_7a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_9f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_9f

    .line 194
    :cond_84
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The XML file must contain at least one node with the path "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_9f
    :goto_9f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 201
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_a8

    .line 203
    :cond_c4
    return-object p0

    .line 165
    :cond_c5
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    const-string p1, "The tag list must not be empty"

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getXmlRootNode([B)Lorg/w3c/dom/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 127
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 128
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    .line 129
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    .line 130
    :catch_1d
    move-exception p0

    .line 131
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 284
    nop

    .line 285
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;

    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 290
    :try_start_9
    const-string p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_f} :catch_1c

    .line 294
    nop

    .line 296
    :try_start_10
    invoke-virtual {p2, p1, p0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_13
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10 .. :try_end_13} :catch_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_10 .. :try_end_13} :catch_15

    .line 299
    nop

    .line 300
    return-object p1

    .line 297
    :catch_15
    move-exception p0

    .line 298
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 291
    :catch_1c
    move-exception p0

    .line 293
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V

    .line 314
    return-void
.end method

.method static validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 323
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 326
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2e

    .line 331
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    .line 332
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 333
    const/4 v1, 0x1

    .line 334
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 336
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 337
    return-void

    .line 327
    :cond_2e
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string p1, "The given certificate path does not contain X509 certificates"

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_36
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string p1, "The given certificate path is empty"

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static verifyRsaSha256Signature(Ljava/security/PublicKey;[B[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 249
    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_24

    .line 253
    nop

    .line 255
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 256
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 257
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 262
    nop

    .line 263
    return-void

    .line 258
    :cond_15
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string p1, "The signature is invalid"

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_1d} :catch_1d
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_1d} :catch_1d

    .line 260
    :catch_1d
    move-exception p0

    .line 261
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 250
    :catch_24
    move-exception p0

    .line 252
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
