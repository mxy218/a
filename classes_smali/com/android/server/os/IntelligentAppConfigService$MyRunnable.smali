.class Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
.super Ljava/lang/Object;
.source "IntelligentAppConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/os/IntelligentAppConfigService;

.field private url:Ljava/net/URL;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 193
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"  # Landroid/app/job/JobParameters;

    .line 99
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 100
    iput-object p2, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 101
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 10
    .param p1, "urlStr"  # Ljava/lang/String;
    .param p2, "file"  # Ljava/io/File;

    .line 177
    const-string v0, "Job-download file start"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 181
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 182
    iget-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 185
    .local v0, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_54

    .line 186
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_18
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_4b

    .line 187
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/16 v4, 0x400

    :try_start_2b
    new-array v4, v4, [B

    .line 189
    .local v4, "buffer":[B
    :goto_2d
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bufferLength":I
    if-lez v5, :cond_38

    .line 190
    invoke-virtual {v2, v4, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_42

    goto :goto_2d

    .line 192
    .end local v4  # "buffer":[B
    .end local v6  # "bufferLength":I
    :cond_38
    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-static {v3, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4b

    .line 193
    .end local v2  # "outputStream":Ljava/io/OutputStream;
    :cond_3e
    :try_start_3e
    invoke-static {v3, v1}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_54

    .line 196
    .end local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v1  # "inputStream":Ljava/io/InputStream;
    goto :goto_5a

    .line 186
    .restart local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v1  # "inputStream":Ljava/io/InputStream;
    .restart local v2  # "outputStream":Ljava/io/OutputStream;
    :catchall_42
    move-exception v3

    .end local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v1  # "inputStream":Ljava/io/InputStream;
    .end local v2  # "outputStream":Ljava/io/OutputStream;
    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    .end local p2  # "file":Ljava/io/File;
    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 192
    .restart local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v1  # "inputStream":Ljava/io/InputStream;
    .restart local v2  # "outputStream":Ljava/io/OutputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    .restart local p2  # "file":Ljava/io/File;
    :catchall_44
    move-exception v4

    if-eqz v2, :cond_4a

    :try_start_47
    invoke-static {v3, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v1  # "inputStream":Ljava/io/InputStream;
    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    .end local p2  # "file":Ljava/io/File;
    :cond_4a
    throw v4
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 185
    .end local v2  # "outputStream":Ljava/io/OutputStream;
    .restart local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v1  # "inputStream":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    .restart local p2  # "file":Ljava/io/File;
    :catchall_4b
    move-exception v2

    .end local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v1  # "inputStream":Ljava/io/InputStream;
    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    .end local p2  # "file":Ljava/io/File;
    :try_start_4c
    throw v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 193
    .restart local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v1  # "inputStream":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    .restart local p2  # "file":Ljava/io/File;
    :catchall_4d
    move-exception v3

    if-eqz v1, :cond_53

    :try_start_50
    invoke-static {v2, v1}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    .end local p2  # "file":Ljava/io/File;
    :cond_53
    throw v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_54

    .line 194
    .end local v0  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v1  # "inputStream":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    .restart local p2  # "file":Ljava/io/File;
    :catch_54
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download config file error"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 209
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method private downloadJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "urlStr"  # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 225
    iget-object v1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 227
    .local v1, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_3e

    .line 228
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, "stringBuffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 231
    .local v4, "buffer":[B
    :goto_1d
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bufferLength":I
    if-lez v5, :cond_2d

    .line 232
    invoke-direct {p0, v4}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->getChars([B)[C

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 234
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_35

    .line 235
    :try_start_31
    invoke-static {v0, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3e

    .line 234
    return-object v5

    .line 227
    .end local v3  # "stringBuffer":Ljava/lang/StringBuilder;
    .end local v4  # "buffer":[B
    .end local v6  # "bufferLength":I
    :catchall_35
    move-exception v3

    .end local v1  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v2  # "inputStream":Ljava/io/InputStream;
    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    :try_start_36
    throw v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 235
    .restart local v1  # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v2  # "inputStream":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    :catchall_37
    move-exception v4

    if-eqz v2, :cond_3d

    :try_start_3a
    invoke-static {v3, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .end local p1  # "urlStr":Ljava/lang/String;
    :cond_3d
    throw v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 236
    .end local v1  # "urlConn":Ljava/net/HttpURLConnection;
    .end local v2  # "inputStream":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    .restart local p1  # "urlStr":Ljava/lang/String;
    :catch_3e
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Download json file error"

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 248
    .end local v1  # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private getChars([B)[C
    .registers 6
    .param p1, "bytes"  # [B

    .line 252
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 253
    .local v0, "cs":Ljava/nio/charset/Charset;
    array-length v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 258
    .local v2, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method

.method private getCommonDowmloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonString"  # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "devicesInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;>;"
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "meizu_perf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 146
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_41

    .line 147
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 148
    .local v5, "jsonObject2":Lorg/json/JSONObject;
    new-instance v6, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;

    iget-object v7, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    invoke-direct {v6, v7, v1}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;-><init>(Lcom/android/server/os/IntelligentAppConfigService;Lcom/android/server/os/IntelligentAppConfigService$1;)V

    .line 149
    .local v6, "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    const-string/jumbo v7, "product"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->setProduct(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3d} :catch_42

    .line 146
    nop

    .end local v5  # "jsonObject2":Lorg/json/JSONObject;
    .end local v6  # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 155
    .end local v2  # "jsonObject":Lorg/json/JSONObject;
    .end local v4  # "i":I
    :cond_41
    goto :goto_46

    .line 153
    .end local v3  # "jsonArray":Lorg/json/JSONArray;
    :catch_42
    move-exception v2

    .line 154
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    .end local v2  # "e":Lorg/json/JSONException;
    :goto_46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;

    .line 160
    .local v3, "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    invoke-virtual {v3}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getProduct()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->getFlymeModelString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 161
    invoke-virtual {v3}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 158
    .end local v3  # "devicesDownloadInfo":Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 164
    .end local v2  # "i":I
    :cond_69
    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "perf_intelligent_app_config.conf"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v2, "pruductConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 114
    :cond_37
    const-string v3, "http://safe.res.meizu.com/pack/perf_config.json"

    invoke-direct {p0, v3}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->downloadJsonFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "jsonString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x0

    if-eqz v3, :cond_98

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 120
    invoke-direct {p0, v3}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->getCommonDowmloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "downloadUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 129
    if-eqz v6, :cond_8b

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 130
    invoke-direct {p0, v6, v2}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->downloadFile(Ljava/lang/String;Ljava/io/File;)V

    .line 131
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->reloadAppBoostConfig()V

    .line 137
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v7, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v7, v4}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 138
    return-void

    .line 133
    :cond_8b
    const-string v5, "get download config file failed"

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostFatal(Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v7, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v7, v4}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 135
    return-void

    .line 122
    .end local v6  # "downloadUrl":Ljava/lang/String;
    :cond_98
    const-string v5, "get download jason file failed"

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostFatal(Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    iget-object v6, p0, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/os/IntelligentAppConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 124
    return-void
.end method
