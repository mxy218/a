.class public Lcom/meizu/statsrpk/RpkConfigController;
.super Ljava/lang/Object;
.source "RpkConfigController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RpkConfigController"

.field private static final WORK_THREAD_NAME:Ljava/lang/String; = "rpk.ConfigControllerWorker"


# instance fields
.field private final CHECK_UPDATE:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

.field private mSP:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/meizu/statsrpk/RpkConfigController;->CHECK_UPDATE:I

    .line 46
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/meizu/statsrpk/RpkConfigController;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    .line 48
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statsrpk_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkConfigController;->mSP:Landroid/content/SharedPreferences;

    .line 50
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "rpk.ConfigControllerWorker"

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance p2, Lcom/meizu/statsrpk/RpkConfigController$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/meizu/statsrpk/RpkConfigController$1;-><init>(Lcom/meizu/statsrpk/RpkConfigController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/meizu/statsrpk/RpkConfigController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsrpk/RpkConfigController;)Landroid/content/SharedPreferences;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mSP:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/statsrpk/RpkConfigController;II)I
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsrpk/RpkConfigController;->randInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/statsrpk/RpkConfigController;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/meizu/statsrpk/RpkConfigController;->getConfigFromServer()V

    return-void
.end method

.method private checkUpdate(I)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    :cond_e
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getConfigFromServer()V
    .registers 7

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigFromServer, now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", last get time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkConfigController;->mSP:Landroid/content/SharedPreferences;

    const-string v2, ""

    const-string v3, "getTime"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpkConfigController"

    invoke-static {v1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string p0, "getConfigFromServer, network unavailable"

    .line 97
    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_3a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    iget-object v3, p0, Lcom/meizu/statsrpk/RpkConfigController;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "lastModified"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->HEADER_If_Modified_Since:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/meizu/statsrpk/RpkConfigController;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "ETag"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->HEADER_If_None_Match:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "rpk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/statsrpk/RpkConfigController;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    iget-object v4, v4, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try local... cdn url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/statsapp/v3/lib/plugin/utils/RequestFreqRestrict;->isAllow(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a6

    return-void

    .line 113
    :cond_a6
    :try_start_a6
    iget-object v4, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->postNoGslb(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v2
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b0} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_b0} :catch_b1

    goto :goto_ba

    :catch_b1
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_ba

    :catch_b6
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    :goto_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigFromServer response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_f6

    .line 120
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_f6

    .line 121
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 124
    :try_start_de
    iget-object v2, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/statsrpk/RpkConfigController;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-static {v2, v0, v3}, Lcom/meizu/statsrpk/RpkUxipConfig;->parseAppInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/statsrpk/RpkInfo;)V

    .line 125
    iget-object v2, p0, Lcom/meizu/statsrpk/RpkConfigController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkConfigController;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-static {v2, v0, p0}, Lcom/meizu/statsrpk/RpkUxipConfig;->parseConfig(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/statsrpk/RpkInfo;)V
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_ec} :catch_ed

    goto :goto_105

    :catch_ed
    move-exception p0

    .line 127
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    :cond_f6
    if-eqz v2, :cond_105

    .line 130
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result p0

    const/16 v0, 0x130

    if-ne p0, v0, :cond_105

    const-string p0, "config in server has no change"

    .line 131
    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    :goto_105
    return-void
.end method

.method private randInt(II)I
    .registers 3

    .line 87
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 91
    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V
    .registers 2

    const/16 p1, 0x3e8

    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkConfigController;->checkUpdate(I)V

    return-void
.end method
