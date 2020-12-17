.class public Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;
.super Ljava/lang/Object;
.source "HttpSecureRequester.java"


# static fields
.field private static MULTI_BOUNDARY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HttpSecureRequester"

.field private static final lock:Ljava/lang/Object;

.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;


# instance fields
.field private context:Landroid/content/Context;

.field private gslbWrapper:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->lock:Ljava/lang/Object;

    const-string v0, "******--212x89--"

    .line 37
    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->MULTI_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->context:Landroid/content/Context;

    :try_start_5
    const-string v0, "sun.net.http.allowRestrictedHeaders"

    const-string v1, "true"

    .line 45
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :goto_11
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->getsInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbWrapper:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    .line 50
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->init(Landroid/content/Context;)V

    return-void
.end method

.method private attachKeyHeader(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 393
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 395
    :cond_7
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getsKey64()[B

    move-result-object p0

    if-eqz p0, :cond_35

    .line 396
    array-length v0, p0

    if-lez v0, :cond_35

    .line 397
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 398
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach x_s_key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "X-S-Key"

    .line 399
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 401
    :cond_35
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getaKey64()[B

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 402
    array-length p0, p0

    if-lez p0, :cond_7b

    .line 403
    new-instance p0, Ljava/lang/String;

    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->getaKey64()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 404
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach x_a_key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "X-A-Key"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    :goto_7b
    return-object p1
.end method

.method private generateEf(Ljava/net/URL;)Ljava/lang/String;
    .registers 4

    .line 345
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->encrypt([B)[B

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    const/4 p1, 0x2

    .line 350
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :try_start_19
    const-string p1, "UTF-8"

    .line 352
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_1f} :catch_1f

    .line 356
    :catch_1f
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generated ef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getByteArrayByInputStream(Ljava/io/InputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 428
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 430
    :cond_10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 433
    :try_start_14
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    return-object p1

    :catchall_18
    move-exception p1

    :try_start_19
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 435
    :catch_1c
    throw p1
.end method

.method private getEfURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 7

    .line 363
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->generateEf(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    .line 364
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lighttps?ef="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_22} :catch_24

    move-object p0, v0

    goto :goto_29

    :catch_24
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_29
    if-nez p0, :cond_2c

    move-object p0, p1

    :cond_2c
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;
    .registers 3

    .line 54
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    if-nez v0, :cond_17

    .line 55
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    if-nez v1, :cond_12

    .line 57
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    .line 58
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 61
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    return-object p0
.end method

.method private getsKey(Ljava/net/URLConnection;)V
    .registers 4

    :try_start_0
    const-string p0, "X-S-Key"

    .line 413
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 414
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get x_s_key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 416
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->saveSKey(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_29

    :catchall_29
    :cond_29
    return-void
.end method

.method private gslbConvert(Ljava/net/URL;)Ljava/net/URL;
    .registers 6

    .line 375
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    const-string v1, "### before gslb convert"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbWrapper:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 380
    :try_start_11
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    .line 384
    :goto_24
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### after gslb convert, ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object p1, v0

    :goto_3e
    return-object p1
.end method

.method private realMultipartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 120
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    const-string p1, "url is null"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 124
    :cond_b
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :try_start_19
    const-string v3, "POST"

    .line 128
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v3

    .line 130
    invoke-virtual {v3}, Ljava/net/ProtocolException;->printStackTrace()V

    :goto_23
    const/16 v3, 0x7530

    .line 132
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :try_start_2b
    const-string v3, "Host"

    .line 135
    invoke-virtual {p1, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Connection"

    const-string v3, "keep-alive"

    .line 136
    invoke-virtual {p1, p2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Charset"

    const-string v3, "UTF-8"

    .line 137
    invoke-virtual {p1, p2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->MULTI_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_86

    .line 139
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_86

    .line 140
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_66
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v3, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_2b .. :try_end_81} :catchall_82

    goto :goto_66

    :catchall_82
    move-exception p2

    .line 145
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_86
    if-eqz p4, :cond_de

    .line 150
    :try_start_88
    array-length p2, p4

    if-eqz p2, :cond_de

    .line 151
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 152
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_da

    .line 153
    :try_start_97
    new-instance p3, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;

    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->getMD5([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-gzip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v3, v4, p4}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 155
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v1, [Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;

    aput-object p3, v1, v2

    .line 156
    sget-object p3, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->MULTI_BOUNDARY:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p4, v1, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;[B)V

    .line 157
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p3

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->encrypt([B)[B

    move-result-object p3

    if-eqz p3, :cond_df

    .line 159
    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 160
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_df

    :catchall_da
    move-exception p0

    move-object p2, v0

    goto/16 :goto_19b

    :cond_de
    move-object p2, v0

    .line 163
    :cond_df
    :goto_df
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 164
    sget-object p4, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_fd
    .catchall {:try_start_97 .. :try_end_fd} :catchall_19a

    if-eqz p4, :cond_149

    .line 168
    :try_start_ff
    invoke-direct {p0, p4}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getByteArrayByInputStream(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_14a

    .line 170
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->decrypt([B)[B

    move-result-object p0

    if-eqz p0, :cond_14a

    .line 173
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    :catchall_146
    move-exception p0

    move-object v0, p4

    goto :goto_19b

    :cond_149
    move-object p0, v0

    :cond_14a
    :goto_14a
    const/16 v1, 0xc8

    if-eq p3, v1, :cond_169

    const/16 p0, 0x1ef

    if-ne p3, p0, :cond_159

    .line 179
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->reInitKeys()V
    :try_end_159
    .catchall {:try_start_ff .. :try_end_159} :catchall_146

    :cond_159
    if-eqz p2, :cond_15e

    .line 191
    :try_start_15b
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_15e

    :catch_15e
    :cond_15e
    if-eqz p4, :cond_163

    .line 197
    :try_start_160
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_163

    :catch_163
    :cond_163
    if-eqz p1, :cond_168

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_168
    return-object v0

    :cond_169
    if-eqz p0, :cond_185

    .line 184
    :try_start_16b
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, p3, v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_175
    .catchall {:try_start_16b .. :try_end_175} :catchall_146

    if-eqz p2, :cond_17a

    .line 191
    :try_start_177
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17a} :catch_17a

    :catch_17a
    :cond_17a
    if-eqz p4, :cond_17f

    .line 197
    :try_start_17c
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_17f

    :catch_17f
    :cond_17f
    if-eqz p1, :cond_184

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_184
    return-object v0

    .line 186
    :cond_185
    :try_start_185
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    invoke-direct {p0, p3, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_185 .. :try_end_18a} :catchall_146

    if-eqz p2, :cond_18f

    .line 191
    :try_start_18c
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_18f} :catch_18f

    :catch_18f
    :cond_18f
    if-eqz p4, :cond_194

    .line 197
    :try_start_191
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_194} :catch_194

    :catch_194
    :cond_194
    if-eqz p1, :cond_199

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_199
    return-object p0

    :catchall_19a
    move-exception p0

    :goto_19b
    if-eqz p2, :cond_1a0

    .line 191
    :try_start_19d
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a0} :catch_1a0

    :catch_1a0
    :cond_1a0
    if-eqz v0, :cond_1a5

    .line 197
    :try_start_1a2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a5} :catch_1a5

    :catch_1a5
    :cond_1a5
    if-eqz p1, :cond_1aa

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1aa
    throw p0
.end method

.method private realStringpartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 263
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    const-string p1, "url is null"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 267
    :cond_b
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 268
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 269
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v1, 0x7530

    .line 271
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 272
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :try_start_24
    const-string v1, "Host"

    .line 274
    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Connection"

    const-string v1, "keep-alive"

    .line 275
    invoke-virtual {p1, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Charset"

    const-string v1, "UTF-8"

    .line 276
    invoke-virtual {p1, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 277
    invoke-virtual {p1, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6e

    .line 278
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_6e

    .line 279
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v1, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_24 .. :try_end_69} :catchall_6a

    goto :goto_4e

    :catchall_6a
    move-exception p2

    .line 284
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6e
    if-eqz p5, :cond_ac

    .line 290
    :try_start_70
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:\n"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 292
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_92
    .catchall {:try_start_70 .. :try_end_92} :catchall_a7

    .line 293
    :try_start_92
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p3

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->encrypt([B)[B

    move-result-object p3

    if-eqz p3, :cond_ad

    .line 295
    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 296
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_ad

    :catchall_a7
    move-exception p0

    move-object p2, v0

    move-object p4, p2

    goto/16 :goto_170

    :cond_ac
    move-object p2, v0

    .line 299
    :cond_ad
    :goto_ad
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getsKey(Ljava/net/URLConnection;)V

    .line 300
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 301
    sget-object p4, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code = "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_ce
    .catchall {:try_start_92 .. :try_end_ce} :catchall_16e

    if-eqz p4, :cond_119

    .line 305
    :try_start_d0
    invoke-direct {p0, p4}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getByteArrayByInputStream(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_11a

    .line 307
    sget-object p5, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p5

    invoke-virtual {p5, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->decrypt([B)[B

    move-result-object p0

    if-eqz p0, :cond_11a

    .line 310
    sget-object p5, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    :catchall_117
    move-exception p0

    goto :goto_170

    :cond_119
    move-object p0, v0

    :cond_11a
    :goto_11a
    const/16 p5, 0xc8

    if-eq p3, p5, :cond_13d

    const/16 p5, 0x130

    if-eq p3, p5, :cond_13d

    const/16 p0, 0x1ef

    if-ne p3, p0, :cond_12d

    .line 316
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->get()Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/HttpKeyMgr;->reInitKeys()V
    :try_end_12d
    .catchall {:try_start_d0 .. :try_end_12d} :catchall_117

    :cond_12d
    if-eqz p2, :cond_132

    .line 328
    :try_start_12f
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_132

    :catch_132
    :cond_132
    if-eqz p4, :cond_137

    .line 334
    :try_start_134
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_137

    :catch_137
    :cond_137
    if-eqz p1, :cond_13c

    .line 339
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13c
    return-object v0

    :cond_13d
    if-eqz p0, :cond_159

    .line 321
    :try_start_13f
    new-instance p5, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p5, p3, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_149
    .catchall {:try_start_13f .. :try_end_149} :catchall_117

    if-eqz p2, :cond_14e

    .line 328
    :try_start_14b
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_14e

    :catch_14e
    :cond_14e
    if-eqz p4, :cond_153

    .line 334
    :try_start_150
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_153} :catch_153

    :catch_153
    :cond_153
    if-eqz p1, :cond_158

    .line 339
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_158
    return-object p5

    .line 323
    :cond_159
    :try_start_159
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    invoke-direct {p0, p3, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_159 .. :try_end_15e} :catchall_117

    if-eqz p2, :cond_163

    .line 328
    :try_start_160
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_163

    :catch_163
    :cond_163
    if-eqz p4, :cond_168

    .line 334
    :try_start_165
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_168

    :catch_168
    :cond_168
    if-eqz p1, :cond_16d

    .line 339
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16d
    return-object p0

    :catchall_16e
    move-exception p0

    move-object p4, v0

    :goto_170
    if-eqz p2, :cond_175

    .line 328
    :try_start_172
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_175} :catch_175

    :catch_175
    :cond_175
    if-eqz p4, :cond_17a

    .line 334
    :try_start_177
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17a} :catch_17a

    :catch_17a
    :cond_17a
    if-eqz p1, :cond_17f

    .line 339
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17f
    throw p0
.end method


# virtual methods
.method public postMultipart(Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;"
        }
    .end annotation

    const-string v0, "HttpSecureRequester.postMultipart"

    .line 71
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FailureRestrict;->check(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 76
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_f} :catch_82

    .line 81
    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getEfURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbConvert(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    .line 83
    invoke-direct {p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->attachKeyHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 85
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 87
    :try_start_29
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realMultipartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_6c

    :catch_32
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_6c

    :catch_37
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 95
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realMultipartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_4a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_58

    :catch_45
    move-exception v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_58

    :catch_4a
    move-exception v4

    .line 97
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbWrapper:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->onResponse(Ljava/lang/String;I)V

    :goto_58
    if-nez v2, :cond_6c

    .line 104
    :try_start_5a
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realMultipartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5a .. :try_end_62} :catch_63

    goto :goto_6c

    :catch_63
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6c
    :goto_6c
    if-eqz v2, :cond_81

    .line 112
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 p1, 0x190

    if-le p0, p1, :cond_81

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 p1, 0x1ef

    if-eq p0, p1, :cond_81

    .line 113
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FailureRestrict;->addFail(Ljava/lang/String;)V

    :cond_81
    return-object v2

    :catch_82
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v2
.end method

.method public stringpartRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;"
        }
    .end annotation

    const-string v0, "HttpSecureRequester.stringpartRequest"

    .line 214
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FailureRestrict;->check(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 219
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_f} :catch_8f

    .line 224
    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getEfURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v4

    .line 225
    invoke-direct {p0, v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbConvert(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    .line 226
    invoke-direct {p0, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->attachKeyHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 228
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 230
    :try_start_29
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realStringpartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_35} :catch_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29 .. :try_end_35} :catch_36

    goto :goto_79

    :catch_36
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_79

    :catch_3b
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 238
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realStringpartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4d} :catch_53
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_40 .. :try_end_4d} :catch_4e

    goto :goto_61

    :catch_4e
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_61

    :catch_53
    move-exception v3

    .line 240
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->gslbWrapper:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v5, -0x1

    invoke-virtual {v3, p1, v5}, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->onResponse(Ljava/lang/String;I)V

    :goto_61
    if-nez v2, :cond_79

    .line 247
    :try_start_63
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->realStringpartRequest(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6f} :catch_75
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_63 .. :try_end_6f} :catch_70

    goto :goto_79

    :catch_70
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_79

    :catch_75
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_79
    :goto_79
    if-eqz v2, :cond_8e

    .line 255
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 p1, 0x190

    if-le p0, p1, :cond_8e

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 p1, 0x1ef

    if-eq p0, p1, :cond_8e

    .line 256
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FailureRestrict;->addFail(Ljava/lang/String;)V

    :cond_8e
    return-object v2

    :catch_8f
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v2
.end method
