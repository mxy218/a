.class public Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;
.super Ljava/lang/Object;
.source "IntegrationAppPkgFetcher.java"


# static fields
.field private static APP_INTERGRATION_PKGS_KEY:Ljava/lang/String;

.field private static mIntegrationPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

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
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v0, "mz_app_integration_pkgs"

    .line 41
    sput-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->APP_INTERGRATION_PKGS_KEY:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.media.gallery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.media.music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.safe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.media.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.yellowpage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.account"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.customizecenter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.media.camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.wifiadmin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    const-string v1, "com.meizu.mzsyncservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/meizu/settings/utils/VolleyRequestManager;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/VolleyRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mUrlParams:Ljava/util/HashMap;

    .line 69
    iget-object v0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getDefaultIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string v2, "imei"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeMD5Util;->MD5Encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v4, "sign"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imei "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sn "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sign "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntegrationAppPkgFetcher"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->parseString(Ljava/lang/String;)V

    return-void
.end method

.method private parsePkgList(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "pkg"

    const-string v1, "IntegrationAppPkgFetcher"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 132
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 133
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 134
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 135
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_28

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 139
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3c} :catch_7d

    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 148
    :cond_3f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "null"

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parsePkgList pkgStr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_6d

    const-string p0, "mContentResolver    has released"

    .line 154
    invoke-static {v1, v3, p0}, Lcom/meizu/settings/utils/LogUtils;->e(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_7c

    .line 156
    :cond_6d
    invoke-static {v0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 158
    iget-object p0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7c
    :goto_7c
    return-void

    :catch_7d
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parsePkgList e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/meizu/settings/utils/LogUtils;->e(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .registers 4

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 120
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "fuses"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 123
    sget-object v0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->APP_INTERGRATION_PKGS_KEY:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->parsePkgList(Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_31

    :catch_18
    move-exception p0

    const/4 p1, 0x0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopFetch JSONException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IntegrationAppPkgFetcher"

    invoke-static {v0, p1, p0}, Lcom/meizu/settings/utils/LogUtils;->e(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_31
    return-void
.end method


# virtual methods
.method public startFetch(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "IntegrationAppPkgFetcher"

    const-string/jumbo v2, "startFetch"

    .line 82
    invoke-static {v1, v0, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->APP_INTERGRATION_PKGS_KEY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 86
    sget-object v2, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mIntegrationPkgs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    :cond_1d
    const-string v3, ","

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFetch find inSuggestList pre pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2e

    .line 94
    :cond_50
    new-instance p1, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;-><init>(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    .line 101
    new-instance p1, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$2;-><init>(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    .line 107
    new-instance p1, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    iget-object v0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mUrlParams:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    iget-object v3, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    const-string v4, "http://safe.meizu.com/service/settings/fuse"

    invoke-direct {p1, v4, v0, v2, v3}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    iget-object p0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    invoke-virtual {p1, p0, v1}, Lcom/meizu/settings/utils/VolleyRequestManager;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    return-void
.end method

.method public stopFetch()V
    .registers 4

    const-string v0, "IntegrationAppPkgFetcher"

    const/4 v1, 0x0

    const-string/jumbo v2, "stopFetch "

    .line 112
    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/VolleyRequestManager;->cancelPendingRequests(Ljava/lang/Object;)V

    return-void
.end method
