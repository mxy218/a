.class public Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;
.super Ljava/lang/Object;
.source "SessionController.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SessionController"


# instance fields
.field private activityLifecycleCallback:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field protected sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

.field private sessionId:Ljava/lang/String;

.field private sessionTimeoutMillis:I

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 29
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionTimeoutMillis:I

    .line 33
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "com.meizu.statsapp.v3.SessionControllerWorker"

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->handler:Landroid/os/Handler;

    .line 48
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->registerApplicationLifeCycle()V

    .line 49
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    const-string p1, "SessionController init"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->endSessionId()V

    return-void
.end method

.method private endSessionId()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 68
    monitor-enter p0

    .line 69
    :try_start_5
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end a session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->source:Ljava/lang/String;

    .line 72
    monitor-exit p0

    goto :goto_27

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :goto_27
    return-void
.end method

.method private registerApplicationLifeCycle()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 121
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 122
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->activityLifecycleCallback:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    if-eqz v1, :cond_15

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->activityLifecycleCallback:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    .line 127
    :cond_15
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V

    iput-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->activityLifecycleCallback:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    .line 128
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->activityLifecycleCallback:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 129
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    const-string v0, "registerApplicationLifeCycle"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    return-void
.end method

.method public getOrGenerateSessionId()Ljava/lang/String;
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 58
    monitor-enter p0

    .line 59
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate a sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0

    .line 63
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->source:Ljava/lang/String;

    return-object p0
.end method

.method public onBackground()V
    .registers 4

    .line 82
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    const-string v1, "onBackground"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->handler:Landroid/os/Handler;

    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sessionTimeoutMillis:I

    int-to-long v1, p0

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onForeground()V
    .registers 3

    .line 77
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->TAG:Ljava/lang/String;

    const-string v1, "onForeground"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
