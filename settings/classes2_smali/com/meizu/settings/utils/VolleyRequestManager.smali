.class public Lcom/meizu/settings/utils/VolleyRequestManager;
.super Ljava/lang/Object;
.source "VolleyRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;,
        Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;,
        Lcom/meizu/settings/utils/VolleyRequestManager$VolleyStringPostRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolleyRequestManager"

.field private static sInstance:Lcom/meizu/settings/utils/VolleyRequestManager;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/utils/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/VolleyRequestManager;
    .registers 3

    .line 36
    sget-object v0, Lcom/meizu/settings/utils/VolleyRequestManager;->sInstance:Lcom/meizu/settings/utils/VolleyRequestManager;

    if-nez v0, :cond_1b

    .line 37
    const-class v0, Lcom/meizu/settings/utils/VolleyRequestManager;

    monitor-enter v0

    .line 38
    :try_start_7
    sget-object v1, Lcom/meizu/settings/utils/VolleyRequestManager;->sInstance:Lcom/meizu/settings/utils/VolleyRequestManager;

    if-nez v1, :cond_16

    .line 39
    new-instance v1, Lcom/meizu/settings/utils/VolleyRequestManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/settings/utils/VolleyRequestManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/utils/VolleyRequestManager;->sInstance:Lcom/meizu/settings/utils/VolleyRequestManager;

    .line 41
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 43
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/meizu/settings/utils/VolleyRequestManager;->sInstance:Lcom/meizu/settings/utils/VolleyRequestManager;

    return-object p0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/meizu/settings/utils/VolleyRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToRequestQueue tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/utils/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_2a

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object p2, Lcom/meizu/settings/utils/VolleyRequestManager;->TAG:Ljava/lang/String;

    :cond_22
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/utils/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_2a
    return-void
.end method

.method public cancelPendingRequests(Ljava/lang/Object;)V
    .registers 5

    .line 55
    sget-object v0, Lcom/meizu/settings/utils/VolleyRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPendingRequests tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/utils/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz p0, :cond_1d

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
