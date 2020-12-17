.class public Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;
.super Ljava/lang/Object;
.source "ConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigController"


# instance fields
.field private final CHECK_UPDATE:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private pkgKey:Ljava/lang/String;

.field private sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->CHECK_UPDATE:I

    .line 61
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->pkgKey:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    const-string p2, "com.meizu.statsapp.v3.serverconfig"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    .line 64
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    .line 66
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "com.meizu.statsapp.v3.ConfigControllerWorker"

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Landroid/content/SharedPreferences;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;II)I
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->randInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->getConfigFromServer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getConfigFromServer()Z
    .registers 10

    const-string v0, " - Cause: "

    const-string v1, "Exception: "

    .line 136
    sget-boolean v2, Lcom/meizu/statsapp/v3/InitConfig;->offline:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 137
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    const-string v0, "getConfigFromServer, sdk offline mode"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 140
    :cond_11
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 141
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    const-string v0, "getConfigFromServer, network unavailable"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 144
    :cond_21
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfigFromServer, now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", last get time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    const-string v6, ""

    const-string v7, "getTime"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    const-string v5, "lastModified"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->HEADER_If_Modified_Since:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sp:Landroid/content/SharedPreferences;

    const-string v5, "ETag"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->HEADER_If_None_Match:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->pkgKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    sget-object v6, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try local... cdn url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v6, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/statsapp/v3/lib/plugin/utils/RequestFreqRestrict;->isAllow(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b3

    return v3

    .line 159
    :cond_b3
    :try_start_b3
    iget-object v6, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->postNoGslb(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v4
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_c2

    :catch_be
    move-exception v2

    .line 161
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :goto_c2
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConfigFromServer response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v4, :cond_157

    .line 164
    invoke-virtual {v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_157

    .line 165
    invoke-virtual {v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_169

    .line 168
    :try_start_e9
    sget-object v6, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully posted to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "response"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    invoke-direct {p0, v4}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->parseAndApply(Ljava/lang/String;)V
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_10e} :catch_133
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_10e} :catch_10f

    goto :goto_168

    :catch_10f
    move-exception p0

    .line 176
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_169

    :catch_133
    move-exception p0

    .line 174
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_169

    :cond_157
    if-eqz v4, :cond_169

    .line 179
    invoke-virtual {v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 v0, 0x130

    if-ne p0, v0, :cond_169

    .line 180
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    const-string v0, "config in server has no change"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_168
    move v3, v2

    :cond_169
    :goto_169
    return v3
.end method

.method private parseAndApply(Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 217
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    const-string v2, "parseConfigJson 1"

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseConfigJson 2, config json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "version"

    .line 222
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 223
    iget-object v4, v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v2, v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "active"

    .line 227
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v3, "uploadPolicy"

    .line 228
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "onStart"

    .line 229
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "onReconnect"

    .line 230
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v6, "onCharge"

    .line 231
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "interval"

    .line 232
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v14, 0x3c

    mul-long/2addr v8, v14

    const-wide/16 v16, 0x3e8

    mul-long v8, v8, v16

    const-string v10, "mobileQuota"

    .line 233
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v10, "cacheCapacity"

    .line 234
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v13, "neartimeInterval"

    .line 235
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 236
    iget-object v3, v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {v3}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getEmitter()Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    move-result-object v3

    invoke-virtual/range {v3 .. v13}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->updateConfig(ZZZZJIJI)V

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "events"

    .line 242
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 243
    :goto_8c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_b7

    .line 244
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    .line 245
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "realtime"

    .line 247
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "neartime"

    .line 248
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 249
    new-instance v10, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;

    invoke-direct {v10, v7, v8, v9, v6}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;-><init>(Ljava/lang/String;ZZZ)V

    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 251
    :cond_b7
    iget-object v2, v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getTracker()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->setEventFilterMap(Ljava/util/Map;)V

    const-string v2, "positioningInterval"

    .line 254
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v14

    mul-long v1, v1, v16

    .line 255
    iget-object v0, v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getLocationFetcher()Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->setInterval(J)V

    return-void
.end method

.method private randInt(II)I
    .registers 3

    .line 118
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 122
    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method checkUpdate(I)V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 110
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    :cond_e
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method init(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V
    .registers 5

    .line 96
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    .line 97
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    :try_start_12
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_3f

    :catch_18
    move-exception p1

    .line 103
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    const/16 p1, 0x3e8

    .line 105
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->checkUpdate(I)V

    return-void
.end method
