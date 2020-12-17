.class Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;
.super Landroid/os/Handler;
.source "IntervalTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;-><init>(Landroid/os/Looper;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;Landroid/os/Looper;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 30
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    monitor-enter v0

    .line 31
    :try_start_3
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    goto :goto_6d

    .line 37
    :cond_14
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4b

    .line 39
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->onTrigger()V

    .line 40
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {v4}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {v6}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$102(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;J)J

    .line 41
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6d

    .line 42
    :cond_4b
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6d

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6d

    .line 34
    :cond_5d
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->access$102(Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;J)J

    .line 48
    :cond_6d
    :goto_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method
