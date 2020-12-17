.class public Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;
.super Ljava/lang/Object;
.source "HttpKeyMgr.java"


# static fields
.field private static instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final PREFERENCE_HTTPCERT_FILE:Ljava/lang/String;

.field private final PREFERENCE_HTTPKEY_FILE:Ljava/lang/String;

.field private aKey:[B

.field private aKey64:[B

.field private cert:Ljava/security/cert/X509Certificate;

.field private lastResetKeysTime:J

.field private mContext:Landroid/content/Context;

.field private rKey:[B

.field private rKey64:[B

.field private sKey64:[B

.field private spCert:Landroid/content/SharedPreferences;

.field private spKey:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.meizu.statsapp.v3.httpkey"

    .line 63
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->PREFERENCE_HTTPKEY_FILE:Ljava/lang/String;

    const-string v1, "com.meizu.statsapp.v3.httpcert"

    .line 64
    iput-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->PREFERENCE_HTTPCERT_FILE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 66
    iput-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lastResetKeysTime:J

    .line 70
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spCert:Landroid/content/SharedPreferences;

    .line 74
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->loadKeys()V

    .line 75
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    if-eqz p1, :cond_41

    if-eqz p1, :cond_2b

    array-length p1, p1

    if-nez p1, :cond_2b

    goto :goto_41

    .line 94
    :cond_2b
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey:[B

    if-eqz p1, :cond_34

    if-eqz p1, :cond_68

    array-length p1, p1

    if-nez p1, :cond_68

    .line 95
    :cond_34
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->initCert(Landroid/content/Context;)V

    .line 96
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_68

    .line 97
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->generateAkey()V

    goto :goto_68

    .line 77
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->initCert(Landroid/content/Context;)V

    .line 78
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_4e

    .line 79
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->generateKeys()V

    goto :goto_68

    .line 81
    :cond_4e
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spCert:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_68
    :goto_68
    return-void
.end method

.method private generateAkey()V
    .registers 4

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 499
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 500
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 501
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey:[B

    .line 502
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** aKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aKey64"

    .line 505
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_51} :catch_66
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_51} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_51} :catch_5c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_51} :catch_57
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_6a

    :catch_52
    move-exception p0

    .line 516
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_6a

    :catch_57
    move-exception p0

    .line 514
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_6a

    :catch_5c
    move-exception p0

    .line 512
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_6a

    :catch_61
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 508
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_6a
    return-void
.end method

.method private generateKeys()V
    .registers 1

    .line 468
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->generateRkey()V

    .line 469
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->generateAkey()V

    return-void
.end method

.method private generateRkey()V
    .registers 4

    .line 487
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    .line 488
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey64:[B

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** rKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey64:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey64:[B

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "rKey64"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;
    .registers 2

    .line 114
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    if-eqz v0, :cond_5

    return-object v0

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyMgr is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBase64([B)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_10

    .line 608
    array-length p0, p1

    if-lez p0, :cond_10

    .line 609
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :cond_10
    const-string p0, ""

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 104
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    if-nez v0, :cond_17

    .line 105
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    if-nez v1, :cond_12

    .line 107
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    .line 109
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private initCert(Landroid/content/Context;)V
    .registers 6

    const-string p1, "load Certificates from preference Exception, "

    const-string v0, "load Certificates from asset Exception, "

    const-string v1, "load certs from preference"

    .line 125
    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spCert:Landroid/content/SharedPreferences;

    const-string v2, "certificates"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 128
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 131
    :try_start_22
    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->loadAvailableCertWithoutVerify(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_25} :catch_87
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_25} :catch_6f
    .catch Ljava/security/SignatureException; {:try_start_22 .. :try_end_25} :catch_57
    .catch Ljava/security/NoSuchProviderException; {:try_start_22 .. :try_end_25} :catch_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_25} :catch_27

    goto/16 :goto_9e

    :catch_27
    move-exception v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_9e

    :catch_3f
    move-exception v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_9e

    :catch_57
    move-exception v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_9e

    :catch_6f
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_9e

    :catch_87
    move-exception v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    .line 152
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_12e

    :try_start_a2
    const-string p1, "load certs from uxipcerts.java"

    .line 154
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/UxipCerts;->raw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 156
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->loadAvailableCertWithoutVerify(Ljava/io/InputStream;)V
    :try_end_b5
    .catch Ljava/security/cert/CertificateException; {:try_start_a2 .. :try_end_b5} :catch_117
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a2 .. :try_end_b5} :catch_ff
    .catch Ljava/security/SignatureException; {:try_start_a2 .. :try_end_b5} :catch_e7
    .catch Ljava/security/NoSuchProviderException; {:try_start_a2 .. :try_end_b5} :catch_cf
    .catch Ljava/security/InvalidKeyException; {:try_start_a2 .. :try_end_b5} :catch_b7

    goto/16 :goto_12e

    :catch_b7
    move-exception p1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_12e

    :catch_cf
    move-exception p1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_12e

    :catch_e7
    move-exception p1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_12e

    :catch_ff
    move-exception p1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    goto :goto_12e

    :catch_117
    move-exception p1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    :cond_12e
    :goto_12e
    return-void
.end method

.method private loadAvailableCertWithoutVerify(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "loadAvailableCertWithoutVerify"

    .line 264
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    :try_start_5
    const-string v0, "X509"

    .line 266
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 269
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    const-string v0, "***** AVAILABLE CERTIFICATE:"

    .line 270
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    const-string v0, "***** --------------------"

    .line 271
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** Subject DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** Signature Algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** Valid from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** Valid until: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** Issuer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** PublicKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_5 .. :try_end_c6} :catchall_cf

    .line 280
    :try_start_c6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_ce
    return-void

    :catchall_cf
    move-exception p0

    .line 280
    :try_start_d0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_d8

    :catch_d4
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    :goto_d8
    throw p0
.end method

.method private loadKeys()V
    .registers 5

    const-string v0, "loadKeys"

    .line 441
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "sKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved sKey64: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 446
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sKey64:[B

    .line 450
    :cond_2f
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v2, "aKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved aKey64: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_60

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    .line 454
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey:[B

    .line 458
    :cond_60
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v2, "rKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved rKey64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey64:[B

    .line 462
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey64:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    :cond_90
    return-void
.end method

.method private sLogD(Ljava/lang/String;)V
    .registers 2

    const-string p0, "HttpKeyMgr"

    .line 648
    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sLogE(Ljava/lang/String;)V
    .registers 2

    const-string p0, "HttpKeyMgr"

    .line 652
    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .registers 7

    .line 574
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    if-eqz v0, :cond_c

    array-length v0, v0

    if-nez v0, :cond_c

    goto/16 :goto_85

    :cond_c
    if-eqz p1, :cond_7f

    if-eqz p1, :cond_14

    .line 578
    array-length v0, p1

    if-nez v0, :cond_14

    goto :goto_7f

    .line 582
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> decrypt input >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< decrypt input <<<<<<<<<<"

    .line 583
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    :try_start_31
    const-string v0, "AES/ECB/PKCS5Padding"

    .line 586
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 587
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    .line 588
    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 589
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> decrypt output >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< decrypt output <<<<<<<<<<"

    .line 591
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_65} :catch_7a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_31 .. :try_end_65} :catch_75
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_65} :catch_70
    .catch Ljavax/crypto/BadPaddingException; {:try_start_31 .. :try_end_65} :catch_6b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_31 .. :try_end_65} :catch_66

    return-object p1

    :catch_66
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_7e

    :catch_6b
    move-exception p0

    .line 600
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_7e

    :catch_70
    move-exception p0

    .line 598
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_7e

    :catch_75
    move-exception p0

    .line 596
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_7e

    :catch_7a
    move-exception p0

    .line 594
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_7e
    return-object v1

    :cond_7f
    :goto_7f
    const-string p1, "input null!"

    .line 579
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    return-object v1

    :cond_85
    :goto_85
    const-string p1, "rKey null!"

    .line 575
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    return-object v1
.end method

.method public encrypt([B)[B
    .registers 7

    .line 540
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    if-eqz v0, :cond_c

    array-length v0, v0

    if-nez v0, :cond_c

    goto/16 :goto_85

    :cond_c
    if-eqz p1, :cond_7f

    if-eqz p1, :cond_14

    .line 544
    array-length v0, p1

    if-nez v0, :cond_14

    goto :goto_7f

    .line 548
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> encrypt input >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< encrypt input <<<<<<<<<<"

    .line 549
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    :try_start_31
    const-string v0, "AES/ECB/PKCS5Padding"

    .line 552
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 553
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->rKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    .line 554
    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 555
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> encrypt output >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< encrypt output <<<<<<<<<<"

    .line 557
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_65} :catch_7a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_31 .. :try_end_65} :catch_75
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_65} :catch_70
    .catch Ljavax/crypto/BadPaddingException; {:try_start_31 .. :try_end_65} :catch_6b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_31 .. :try_end_65} :catch_66

    return-object p1

    :catch_66
    move-exception p0

    .line 568
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_7e

    :catch_6b
    move-exception p0

    .line 566
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_7e

    :catch_70
    move-exception p0

    .line 564
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_7e

    :catch_75
    move-exception p0

    .line 562
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_7e

    :catch_7a
    move-exception p0

    .line 560
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_7e
    return-object v1

    :cond_7f
    :goto_7f
    const-string p1, "input null!"

    .line 545
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    return-object v1

    :cond_85
    :goto_85
    const-string p1, "rKey null!"

    .line 541
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    return-object v1
.end method

.method public getaKey64()[B
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->aKey64:[B

    return-object p0
.end method

.method public getsKey64()[B
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sKey64:[B

    return-object p0
.end method

.method public declared-synchronized reInitKeys()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "reInitKeys"

    .line 626
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 627
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lastResetKeysTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lastResetKeysTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 629
    :cond_1c
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 630
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->lastResetKeysTime:J

    .line 633
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->cert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_35

    .line 634
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->generateKeys()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 637
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveSKey(Ljava/lang/String;)V
    .registers 3

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sKey64:[B

    .line 620
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 621
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->sKey64:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "sKey64"

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 622
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
