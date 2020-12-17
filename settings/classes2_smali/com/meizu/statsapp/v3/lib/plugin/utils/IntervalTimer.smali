.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;
.super Ljava/lang/Object;
.source "IntervalTimer.java"


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private mTriggerTimeInFuture:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;-><init>(Landroid/os/Looper;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;J)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCancelled:Z

    .line 26
    iput-wide p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCountdownInterval:J

    .line 28
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;

    if-nez p1, :cond_10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_10
    invoke-direct {p2, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCancelled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mTriggerTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;J)J
    .registers 3

    .line 12
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mTriggerTimeInFuture:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 54
    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCancelled:Z

    .line 55
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 57
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onTrigger()V
.end method

.method public declared-synchronized start()Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 66
    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCancelled:Z

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mCountdownInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mTriggerTimeInFuture:J

    .line 68
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 69
    monitor-exit p0

    return-object p0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
