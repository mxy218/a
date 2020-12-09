.class Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 3

    .line 2532
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2535
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2536
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2537
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2538
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_5d

    .line 2542
    :goto_14
    :try_start_14
    monitor-enter p0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_4c

    .line 2543
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2544
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/32 v4, 0xfffffff

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 2545
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    sub-long v0, v4, v0

    .line 2548
    cmp-long v4, v0, v2

    if-gez v4, :cond_35

    .line 2549
    goto :goto_36

    .line 2548
    :cond_35
    move-wide v0, v2

    .line 2551
    :goto_36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_47

    .line 2552
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2553
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 2555
    :cond_47
    monitor-exit p0

    .line 2557
    goto :goto_4f

    .line 2555
    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4c} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 2559
    :catch_4c
    move-exception v0

    goto :goto_55

    .line 2556
    :catch_4e
    move-exception v0

    .line 2558
    :goto_4f
    :try_start_4f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_4c

    goto :goto_5c

    .line 2560
    :goto_55
    const-string v1, "ActivityManager"

    const-string v2, "Unexpected exception collecting process stats"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2561
    :goto_5c
    goto :goto_14

    .line 2538
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method
