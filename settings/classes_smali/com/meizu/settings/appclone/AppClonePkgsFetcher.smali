.class public Lcom/meizu/settings/appclone/AppClonePkgsFetcher;
.super Ljava/lang/Object;
.source "AppClonePkgsFetcher.java"


# static fields
.field private static sIgnorePkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSuggestedPkgs:Ljava/util/List;
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

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sIgnorePkgs:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.p1.mobile.putong"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    const-string v1, "com.baidu.tieba"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sIgnorePkgs:Ljava/util/List;

    const-string v1, "com.meizu.net.pedometer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sIgnorePkgs:Ljava/util/List;

    const-string v1, "com.meizu.datamigration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/meizu/settings/utils/VolleyRequestManager;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/VolleyRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mUrlParams:Ljava/util/HashMap;

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->getDefaultIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string v2, "imei"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeMD5Util;->MD5Encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mUrlParams:Ljava/util/HashMap;

    const-string/jumbo v2, "sign"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContext:Landroid/content/Context;

    .line 72
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->parseString(Ljava/lang/String;)V

    return-void
.end method

.method private parsePkgList(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "pkg"

    const-string v1, "AppClonePkgsFetcher"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 144
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3b

    .line 145
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 146
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_36} :catch_6f

    add-int/lit8 v4, v4, 0x1

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 155
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-lez v4, :cond_46

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parsePkgList pkgStr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lez v4, :cond_6e

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 162
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6e
    return-void

    :catch_6f
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parsePkgList e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .registers 4

    .line 127
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 128
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "white"

    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "mz_app_clone_suggested_pkgs"

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->parsePkgList(Lorg/json/JSONArray;Ljava/lang/String;)V

    const-string v0, "black"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "mz_app_clone_ignore_pkgs"

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->parsePkgList(Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_3c

    :catch_24
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onResponse e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppClonePkgsFetcher"

    invoke-static {p1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method


# virtual methods
.method public startFetch(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppClonePkgsFetcher"

    const-string/jumbo v1, "startFetch"

    .line 76
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;-><init>(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;)V

    iput-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    .line 85
    new-instance v1, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$2;-><init>(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;)V

    iput-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    .line 91
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_app_clone_suggested_pkgs"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_2c

    .line 94
    sget-object v1, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sSuggestedPkgs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 96
    :cond_2c
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :goto_37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFetch find inSuggestList pre pkg = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 102
    :cond_5d
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_app_clone_ignore_pkgs"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 105
    sget-object p1, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->sIgnorePkgs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7c

    .line 107
    :cond_71
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :goto_7c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFetch find inIgnoreList pre pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 113
    :cond_a2
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;

    if-eqz p1, :cond_ba

    .line 114
    new-instance p2, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mUrlParams:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mErrorListener:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;

    const-string v3, "http://safe.meizu.com/service/appdivide/list"

    invoke-direct {p2, v3, v1, p1, v2}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    .line 115
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mVolleyRequestManager:Lcom/meizu/settings/utils/VolleyRequestManager;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->mRequest:Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;

    invoke-virtual {p1, p0, v0}, Lcom/meizu/settings/utils/VolleyRequestManager;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    :cond_ba
    return-void
.end method
