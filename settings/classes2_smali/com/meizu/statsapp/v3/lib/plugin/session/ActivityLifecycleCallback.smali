.class Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final ONCE_USE:I

.field private endElapse:J

.field private endTime:J

.field private initElapse:J

.field private initTime:J

.field private mainHandler:Landroid/os/Handler;

.field private sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

.field private startElapse:J

.field private startTime:J


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->ONCE_USE:I

    .line 28
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endElapse:J

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startElapse:J

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->initTime:J

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->initElapse:J

    .line 32
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->initTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startElapse:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->initElapse:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->onceUse()V

    return-void
.end method

.method static synthetic access$602(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endElapse:J

    return-wide p1
.end method

.method private onceUse()V
    .registers 9

    .line 84
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    sub-long/2addr v0, v2

    .line 85
    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endElapse:J

    iget-wide v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startElapse:J

    sub-long/2addr v2, v4

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onceUse, startTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", endTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", duration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityLifecycleCallback"

    invoke-static {v5, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-wide v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7f

    iget-wide v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_7f

    cmp-long v4, v0, v6

    if-lez v4, :cond_7f

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    iget-wide v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "startTime"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-wide v5, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "endTime"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration2"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    if-eqz p0, :cond_7f

    const/4 v0, 0x0

    const-string v1, "_onceuse_"

    .line 94
    invoke-virtual {p0, v1, v0, v4}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityPaused, process:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityLifecycleCallback"

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endTime:J

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->endElapse:J

    .line 70
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->mainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResumed, process:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityLifecycleCallback"

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_33

    .line 59
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->onForeground()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startTime:J

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->startElapse:J

    .line 63
    :cond_33
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->mainHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
