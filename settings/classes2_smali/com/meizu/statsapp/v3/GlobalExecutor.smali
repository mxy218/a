.class Lcom/meizu/statsapp/v3/GlobalExecutor;
.super Ljava/lang/Object;
.source "GlobalExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/GlobalExecutor$MessageHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GlobalExecutor"

.field private static handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/meizu/statsapp/v3/GlobalExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    .line 23
    sput-object p0, Lcom/meizu/statsapp/v3/GlobalExecutor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 71
    invoke-static {}, Lcom/meizu/statsapp/v3/GlobalExecutor;->getExecutor()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getExecutor()Landroid/os/Handler;
    .registers 4

    .line 35
    sget-object v0, Lcom/meizu/statsapp/v3/GlobalExecutor;->handler:Landroid/os/Handler;

    if-nez v0, :cond_22

    .line 36
    const-class v0, Lcom/meizu/statsapp/v3/GlobalExecutor;

    monitor-enter v0

    .line 37
    :try_start_7
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.meizu.statsapp.v3.apiWorker"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v2, Lcom/meizu/statsapp/v3/GlobalExecutor$MessageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/statsapp/v3/GlobalExecutor$MessageHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/meizu/statsapp/v3/GlobalExecutor;->handler:Landroid/os/Handler;

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
    sget-object v0, Lcom/meizu/statsapp/v3/GlobalExecutor;->handler:Landroid/os/Handler;

    return-object v0
.end method
