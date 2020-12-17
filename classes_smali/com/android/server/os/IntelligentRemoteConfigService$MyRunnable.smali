.class Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;
.super Ljava/lang/Object;
.source "IntelligentRemoteConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentRemoteConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/os/IntelligentRemoteConfigService;

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/android/server/os/IntelligentRemoteConfigService;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"  # Landroid/app/job/JobParameters;

    .line 97
    iput-object p1, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentRemoteConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 98
    iput-object p2, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 99
    return-void
.end method

.method private byteToHexString(BZ)Ljava/lang/String;
    .registers 8
    .param p1, "b"  # B
    .param p2, "bigEnding"  # Z

    .line 135
    move v0, p1

    .line 136
    .local v0, "n":I
    if-gez v0, :cond_5

    .line 137
    add-int/lit16 v0, v0, 0x100

    .line 138
    :cond_5
    div-int/lit8 v1, v0, 0x10

    .line 139
    .local v1, "d1":I
    rem-int/lit8 v2, v0, 0x10

    .line 140
    .local v2, "d2":I
    if-eqz p2, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/os/IntelligentRemoteConfigService;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/os/IntelligentRemoteConfigService;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    .line 141
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/os/IntelligentRemoteConfigService;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/os/IntelligentRemoteConfigService;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    :goto_42
    return-object v3
.end method

.method private genRemoteURL()Ljava/lang/String;
    .registers 7

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://safe.meizu.com/service/cfg/pf?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getIMEI()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_28
    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "sn":Ljava/lang/String;
    const-string v3, "&"

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4e

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getSign()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "sign":Ljava/lang/String;
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_72

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sign="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request url string "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getIMEI()Ljava/lang/String;
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentRemoteConfigService;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentRemoteConfigService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 172
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_13

    move-object v2, v1

    goto :goto_15

    :cond_13
    const-string v2, "864044030041654"

    :goto_15
    move-object v1, v2

    .line 174
    return-object v1
.end method

.method private getRemoteConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "urlStr"  # Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v1, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 225
    .local v2, "urlConn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->url:Ljava/net/URL;

    .line 226
    iget-object v4, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v2, v4

    .line 227
    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 229
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 230
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 231
    .local v4, "code":I
    const/16 v5, 0xc8

    if-ne v5, v4, :cond_7a

    .line 232
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 233
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 235
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_3a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_45

    .line 236
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 238
    :cond_45
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 239
    .end local v5  # "reader":Ljava/io/BufferedReader;
    .end local v7  # "line":Ljava/lang/String;
    nop

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response string "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_97
    .catchall {:try_start_8 .. :try_end_69} :catchall_95

    .line 253
    if-eqz v0, :cond_71

    .line 254
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_71

    .line 259
    :catch_6f
    move-exception v5

    goto :goto_76

    .line 256
    :cond_71
    :goto_71
    nop

    .line 257
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_75} :catch_6f

    .line 261
    goto :goto_79

    .line 260
    .local v5, "e":Ljava/io/IOException;
    :goto_76
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    .end local v5  # "e":Ljava/io/IOException;
    :goto_79
    return-object v3

    .line 240
    :cond_7a
    :try_start_7a
    const-string/jumbo v5, "request remote service failed!"

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_97
    .catchall {:try_start_7a .. :try_end_83} :catchall_95

    .line 242
    nop

    .line 253
    if-eqz v0, :cond_8c

    .line 254
    :try_start_86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_8c

    .line 259
    :catch_8a
    move-exception v5

    goto :goto_91

    .line 256
    :cond_8c
    :goto_8c
    nop

    .line 257
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_90} :catch_8a

    .line 261
    goto :goto_94

    .line 260
    .restart local v5  # "e":Ljava/io/IOException;
    :goto_91
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    .end local v5  # "e":Ljava/io/IOException;
    :goto_94
    return-object v3

    .line 252
    .end local v4  # "code":I
    :catchall_95
    move-exception v3

    goto :goto_b2

    .line 248
    :catch_97
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v5, "get sgame mtr force open property failed!"

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_95

    .line 250
    nop

    .line 253
    if-eqz v0, :cond_a6

    .line 254
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_a6

    .line 259
    :catch_a4
    move-exception v5

    goto :goto_ac

    .line 256
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_b0

    .line 257
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ab} :catch_a4

    goto :goto_b0

    .line 260
    .restart local v5  # "e":Ljava/io/IOException;
    :goto_ac
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1

    .line 261
    .end local v5  # "e":Ljava/io/IOException;
    :cond_b0
    :goto_b0
    nop

    .line 250
    :goto_b1
    return-object v3

    .line 253
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_b2
    if-eqz v0, :cond_ba

    .line 254
    :try_start_b4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_ba

    .line 259
    :catch_b8
    move-exception v4

    goto :goto_c0

    .line 256
    :cond_ba
    :goto_ba
    if-eqz v2, :cond_c4

    .line 257
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bf} :catch_b8

    goto :goto_c4

    .line 260
    .local v4, "e":Ljava/io/IOException;
    :goto_c0
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c5

    .line 261
    .end local v4  # "e":Ljava/io/IOException;
    :cond_c4
    :goto_c4
    nop

    :goto_c5
    throw v3
.end method

.method private getSerialNumber()Ljava/lang/String;
    .registers 3

    .line 131
    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSign()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "perf.CTR#214mz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseJsonString(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .param p1, "jsonString"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 270
    .local v2, "value":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 271
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 272
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 273
    .local v5, "property":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "name":Ljava/lang/String;
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "code":Ljava/lang/String;
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    nop

    .end local v5  # "property":Lorg/json/JSONObject;
    .end local v6  # "name":Ljava/lang/String;
    .end local v7  # "code":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 277
    .end local v4  # "i":I
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remote properties "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_51} :catch_53

    .line 281
    .end local v1  # "jsonObject":Lorg/json/JSONObject;
    .end local v2  # "value":Lorg/json/JSONObject;
    .end local v3  # "jsonArray":Lorg/json/JSONArray;
    nop

    .line 283
    return-object v0

    .line 278
    :catch_53
    move-exception v1

    .line 279
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    const/4 v2, 0x0

    return-object v2
.end method

.method private setMTRForceOpen(Ljava/lang/String;)V
    .registers 4
    .param p1, "code"  # Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set mtr force open property to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 288
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "true"

    goto :goto_23

    :cond_21
    const-string v0, "false"

    :goto_23
    const-string/jumbo v1, "persist.sys.mtr_force_open"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method


# virtual methods
.method public byteArrayToHexString([B)Ljava/lang/String;
    .registers 6
    .param p1, "b"  # [B

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, "resultSb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 147
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 149
    .end local v1  # "i":I
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMD5Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "strObj"  # Ljava/lang/String;

    .line 159
    move-object v0, p1

    .line 162
    .local v0, "resultString":Ljava/lang/String;
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 164
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v2

    .line 166
    goto :goto_16

    .line 165
    .end local v1  # "md":Ljava/security/MessageDigest;
    :catch_15
    move-exception v1

    .line 167
    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reSchedRemoteConfigJob()V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentRemoteConfigService;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Lcom/android/server/os/IntelligentRemoteConfigService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 103
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 104
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/os/IntelligentRemoteConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v2, "remoteConfigServiceName":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 106
    const-wide/32 v4, 0x5265c00

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 108
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 111
    .local v1, "getRemoteConfigTask":Landroid/app/job/JobInfo;
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 112
    return-void
.end method

.method public run()V
    .registers 6

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->genRemoteURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->getRemoteConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "config":Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 120
    invoke-direct {p0, v1}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->parseJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 123
    :cond_29
    if-eqz v0, :cond_36

    .line 124
    const-string v2, "gm_multhd_sw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->setMTRForceOpen(Ljava/lang/String;)V

    .line 126
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->reSchedRemoteConfigJob()V

    .line 127
    iget-object v2, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->this$0:Lcom/android/server/os/IntelligentRemoteConfigService;

    iget-object v3, p0, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;->mParams:Landroid/app/job/JobParameters;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/os/IntelligentRemoteConfigService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 128
    return-void
.end method
