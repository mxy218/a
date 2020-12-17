.class public Lcom/meizu/statsrpk/RpkInstanceImpl;
.super Ljava/lang/Object;
.source "RpkInstanceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RpkInstanceImpl"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private rpkConfigController:Lcom/meizu/statsrpk/RpkConfigController;

.field private rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

.field private rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

.field private rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

.field private rpkTracker:Lcom/meizu/statsrpk/RpkTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_d5

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->applicationContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    .line 29
    new-instance p1, Lcom/meizu/statsrpk/RpkConfigController;

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, v2, p2}, Lcom/meizu/statsrpk/RpkConfigController;-><init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkConfigController:Lcom/meizu/statsrpk/RpkConfigController;

    .line 30
    sget-object p1, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### RpkInstanceImpl 1, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### RpkInstanceImpl 2, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### RpkInstanceImpl 3, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/meizu/statsrpk/RpkInstanceImpl;->buildEmitter(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)Lcom/meizu/statsrpk/RpkEmitter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/meizu/statsrpk/RpkInstanceImpl;->buildTrack(Landroid/content/Context;Lcom/meizu/statsrpk/RpkEmitter;)Lcom/meizu/statsrpk/RpkTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkTracker:Lcom/meizu/statsrpk/RpkTracker;

    .line 34
    sget-object p1, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkInstanceImpl 4, "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/meizu/statsrpk/RpkPageController;

    iget-object p2, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/meizu/statsrpk/RpkPageController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

    .line 36
    sget-object p1, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkInstanceImpl 5, "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/meizu/statsrpk/RpkInstanceImpl;->init()V

    .line 38
    sget-object p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "##### RpkInstanceImpl 6, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The applicationContext is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildEmitter(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)Lcom/meizu/statsrpk/RpkEmitter;
    .registers 4

    .line 66
    new-instance v0, Lcom/meizu/statsrpk/RpkEmitter;

    invoke-direct {v0, p1, p2}, Lcom/meizu/statsrpk/RpkEmitter;-><init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V

    iput-object v0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

    .line 67
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

    return-object p0
.end method

.method private buildTrack(Landroid/content/Context;Lcom/meizu/statsrpk/RpkEmitter;)Lcom/meizu/statsrpk/RpkTracker;
    .registers 4

    .line 62
    new-instance v0, Lcom/meizu/statsrpk/RpkTracker;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-direct {v0, p1, p2, p0}, Lcom/meizu/statsrpk/RpkTracker;-><init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/RpkInfo;)V

    return-object v0
.end method

.method private init()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkConfigController:Lcom/meizu/statsrpk/RpkConfigController;

    invoke-virtual {v0, p0}, Lcom/meizu/statsrpk/RpkConfigController;->init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V

    .line 43
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

    invoke-virtual {v0, p0}, Lcom/meizu/statsrpk/RpkPageController;->init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V

    .line 44
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkTracker:Lcom/meizu/statsrpk/RpkTracker;

    invoke-virtual {v0, p0}, Lcom/meizu/statsrpk/RpkTracker;->init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V

    return-void
.end method


# virtual methods
.method getRpkPageController()Lcom/meizu/statsrpk/RpkPageController;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

    return-object p0
.end method

.method getRpkTracker()Lcom/meizu/statsrpk/RpkTracker;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkTracker:Lcom/meizu/statsrpk/RpkTracker;

    return-object p0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkTracker:Lcom/meizu/statsrpk/RpkTracker;

    if-eqz v0, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_36

    .line 75
    :cond_31
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkTracker:Lcom/meizu/statsrpk/RpkTracker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/statsrpk/RpkTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .registers 5

    .line 84
    sget-object v0, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStart pageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

    if-nez p0, :cond_1b

    return-void

    .line 88
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkPageController;->startPage(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStop(Ljava/lang/String;)V
    .registers 5

    .line 97
    sget-object v0, Lcom/meizu/statsrpk/RpkInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStop pageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInstanceImpl;->rpkPageController:Lcom/meizu/statsrpk/RpkPageController;

    if-nez p0, :cond_1b

    return-void

    .line 101
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/meizu/statsrpk/RpkPageController;->stopPage(Ljava/lang/String;)V

    return-void
.end method
