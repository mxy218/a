.class public Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;
.super Ljava/lang/Object;
.source "NetRequester.java"


# static fields
.field private static MULTI_BOUNDARY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NetRequester"

.field private static final lock:Ljava/lang/Object;

.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->lock:Ljava/lang/Object;

    const-string v0, "******--212x89--"

    .line 34
    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->MULTI_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->context:Landroid/content/Context;

    return-void
.end method

.method private getByteArrayByInputStream(Ljava/io/InputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 59
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 61
    :cond_10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 64
    :try_start_14
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    return-object p1

    :catchall_18
    move-exception p1

    :try_start_19
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 66
    :catch_1c
    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;
    .registers 3

    .line 43
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    if-nez v0, :cond_17

    .line 44
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    .line 47
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 50
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    return-object p0
.end method

.method private realNoGslbRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 13
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ETag"

    const-string v1, "UTF-8"

    .line 92
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 94
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :try_start_1a
    const-string v3, "Connection"

    const-string v4, "keep-alive"

    .line 98
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    .line 99
    invoke-virtual {p1, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 100
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5d

    .line 101
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5d

    .line 102
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_1a .. :try_end_58} :catchall_59

    goto :goto_3d

    :catchall_59
    move-exception p3

    .line 107
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5d
    const/4 p3, 0x0

    if-eqz p4, :cond_9c

    .line 114
    :try_start_60
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 116
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_98

    .line 117
    :try_start_6c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    invoke-virtual {v3, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 119
    sget-object p4, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 121
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 122
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_9d

    :catchall_98
    move-exception p0

    move-object v3, p3

    goto/16 :goto_195

    :cond_9c
    move-object v3, p3

    .line 124
    :goto_9d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 125
    sget-object p4, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_6c .. :try_end_b7} :catchall_194

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_108

    :try_start_bb
    const-string p4, "Last-Modified"

    .line 128
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 129
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get lastModified = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get ETag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->context:Landroid/content/Context;

    const-string v6, "com.meizu.statsapp.v3.serverconfig"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 133
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lastModified"

    .line 134
    invoke-interface {v2, v5, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_108
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_108} :catch_108
    .catchall {:try_start_bb .. :try_end_108} :catchall_194

    .line 140
    :catch_108
    :cond_108
    :try_start_108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_10c
    .catchall {:try_start_108 .. :try_end_10c} :catchall_194

    if-eqz p4, :cond_149

    .line 142
    :try_start_10e
    invoke-direct {p0, p4}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->getByteArrayByInputStream(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_191

    if-eqz p0, :cond_14a

    :try_start_114
    const-string v0, "AES/ECB/PKCS5Padding"

    .line 145
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 146
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "E21B5316F7B0813C"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v4, "AES"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x2

    .line 147
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 148
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_12f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_114 .. :try_end_12f} :catch_144
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_114 .. :try_end_12f} :catch_13f
    .catch Ljava/security/InvalidKeyException; {:try_start_114 .. :try_end_12f} :catch_13a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_114 .. :try_end_12f} :catch_135
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_114 .. :try_end_12f} :catch_130
    .catchall {:try_start_114 .. :try_end_12f} :catchall_191

    goto :goto_14a

    :catch_130
    move-exception v0

    .line 158
    :try_start_131
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_14a

    :catch_135
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_14a

    :catch_13a
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_14a

    :catch_13f
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_14a

    :catch_144
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_14a

    :cond_149
    move-object p0, p3

    .line 162
    :cond_14a
    :goto_14a
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_17c

    .line 164
    new-instance p3, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p3, p2, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_16c
    .catchall {:try_start_131 .. :try_end_16c} :catchall_191

    if-eqz v3, :cond_171

    .line 171
    :try_start_16e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_171

    :catch_171
    :cond_171
    if-eqz p4, :cond_176

    .line 177
    :try_start_173
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_176

    :catch_176
    :cond_176
    if-eqz p1, :cond_17b

    .line 182
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17b
    return-object p3

    .line 166
    :cond_17c
    :try_start_17c
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    invoke-direct {p0, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;-><init>(ILjava/lang/String;)V
    :try_end_181
    .catchall {:try_start_17c .. :try_end_181} :catchall_191

    if-eqz v3, :cond_186

    .line 171
    :try_start_183
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_186

    :catch_186
    :cond_186
    if-eqz p4, :cond_18b

    .line 177
    :try_start_188
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18b

    :catch_18b
    :cond_18b
    if-eqz p1, :cond_190

    .line 182
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_190
    return-object p0

    :catchall_191
    move-exception p0

    move-object p3, p4

    goto :goto_195

    :catchall_194
    move-exception p0

    :goto_195
    if-eqz v3, :cond_19a

    .line 171
    :try_start_197
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19a

    :catch_19a
    :cond_19a
    if-eqz p3, :cond_19f

    .line 177
    :try_start_19c
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_19f

    :catch_19f
    :cond_19f
    if-eqz p1, :cond_1a4

    .line 182
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1a4
    throw p0
.end method


# virtual methods
.method public postNoGslb(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->realNoGslbRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p0

    return-object p0
.end method
