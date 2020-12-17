.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

.field private mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

.field private mUrlParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->fetchNetworkFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->stopFetch()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->logMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    return-object p0
.end method

.method private fetchNetworkFinish(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->parseJsonString(Ljava/lang/String;Z)Ljava/util/HashMap;

    return-void
.end method

.method private getPackageVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    const-string p0, "FlymeRAngleAdjustNetworkFetcher"

    const-string p1, "getPackageVersionName, pkg is null."

    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 173
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2240

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 178
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 181
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_21
    return-object v1
.end method

.method private isLocalPackageVersionEqualOrBiggerThanNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 192
    :cond_8
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->getPackageVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    .line 198
    :cond_13
    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1e

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    return p1
.end method

.method private logMessage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private parseJsonString(Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseJsonString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->logMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    :try_start_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    invoke-interface {p0, v0, v0, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;->networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V

    :cond_28
    return-object v0

    .line 115
    :cond_29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    .line 116
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3b

    move v3, v5

    goto :goto_3c

    :cond_3b
    move v3, v2

    :goto_3c
    if-eqz v3, :cond_ac

    const-string/jumbo v3, "value"

    .line 118
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_bc

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 121
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_56} :catch_b8

    :goto_56
    if-ge v2, v3, :cond_9c

    .line 123
    :try_start_58
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "ver"

    .line 124
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkg"

    .line 125
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_6e} :catch_a9

    const-string/jumbo v9, "sw"

    if-nez v8, :cond_8e

    .line 127
    :try_start_73
    invoke-direct {p0, v7, v6}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->isLocalPackageVersionEqualOrBiggerThanNetwork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v0, -0x1

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 133
    :cond_82
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 137
    :cond_8e
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 140
    :cond_9c
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    if-eqz v0, :cond_a7

    if-eqz p2, :cond_a7

    .line 141
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    invoke-interface {p0, p1, v4, v5}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;->networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_a7} :catch_a9

    :cond_a7
    move-object v0, v4

    goto :goto_bc

    :catch_a9
    move-exception p0

    move-object v0, v4

    goto :goto_b9

    .line 145
    :cond_ac
    :try_start_ac
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    if-eqz p1, :cond_bc

    if-eqz p2, :cond_bc

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    invoke-interface {p0, v0, v0, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;->networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception p0

    .line 151
    :goto_b9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_bc
    :goto_bc
    return-object v0
.end method

.method private stopFetch()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    const-string v1, "FlymeRAngleAdjustNetworkFetcher"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/utils/VolleyRequestManager;->cancelPendingRequests(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    return-void
.end method


# virtual methods
.method public parseJsonString(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->parseJsonString(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public startFetch(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V
    .registers 7

    .line 56
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/VolleyRequestManager;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/VolleyRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    .line 58
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    .line 65
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mUrlParams:Ljava/util/HashMap;

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getDefaultIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string v2, "imei"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeMD5Util;->MD5Encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v2, "sign"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mUrlParams:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    iget-object v3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    const-string v4, "http://safe.meizu.com/service/settings/rangle?"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    const-string v2, "FlymeRAngleAdjustNetworkFetcher"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/utils/VolleyRequestManager;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->mNetworkFetchListener:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    return-void
.end method
