.class Lcom/meizu/statsrpk/RpkExecutor;
.super Ljava/lang/Object;
.source "RpkExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsrpk/RpkExecutor$MessageHandler;
    }
.end annotation


# static fields
.field private static final KILL_WORKER:I = 0x5

.field private static TAG:Ljava/lang/String; = "RpkExecutor"

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/meizu/statsrpk/RpkExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    .line 23
    sput-object p0, Lcom/meizu/statsrpk/RpkExecutor;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static cancel(Ljava/lang/Runnable;)V
    .registers 2

    .line 100
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 71
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getExecutor()Landroid/os/Handler;
    .registers 4

    .line 35
    sget-object v0, Lcom/meizu/statsrpk/RpkExecutor;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_22

    .line 36
    const-class v0, Lcom/meizu/statsrpk/RpkExecutor;

    monitor-enter v0

    .line 37
    :try_start_7
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.meizu.statsrpk.apiWorker"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v2, Lcom/meizu/statsrpk/RpkExecutor$MessageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/statsrpk/RpkExecutor$MessageHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/meizu/statsrpk/RpkExecutor;->sHandler:Landroid/os/Handler;

    .line 40
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 42
    :cond_22
    :goto_22
    sget-object v0, Lcom/meizu/statsrpk/RpkExecutor;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getLooper()Landroid/os/Looper;
    .registers 1

    .line 121
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private static isDead()Z
    .registers 2

    .line 115
    const-class v0, Lcom/meizu/statsrpk/RpkExecutor;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/meizu/statsrpk/RpkExecutor;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 117
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static schedule(Ljava/lang/Runnable;J)V
    .registers 4

    .line 81
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 90
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static shutdown()V
    .registers 2

    .line 109
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 110
    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static status()Z
    .registers 1

    .line 130
    invoke-static {}, Lcom/meizu/statsrpk/RpkExecutor;->isDead()Z

    move-result v0

    return v0
.end method
