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
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"  # Ljava/lang/String;

    .line 2655
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2658
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2659
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2660
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2661
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_5b

    .line 2665
    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$7;
    :goto_14
    :try_start_14
    monitor-enter p0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_4a

    .line 2666
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2667
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/32 v4, 0xfffffff

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 2668
    .local v2, "nextCpuDelay":J
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    .line 2671
    .local v4, "nextWriteDelay":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_34

    .line 2672
    move-wide v2, v4

    .line 2674
    :cond_34
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_45

    .line 2675
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2676
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2678
    .end local v0  # "now":J
    .end local v2  # "nextCpuDelay":J
    .end local v4  # "nextWriteDelay":J
    :cond_45
    monitor-exit p0

    .line 2680
    goto :goto_4d

    .line 2678
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_47

    :try_start_49
    throw v0
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4a} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4a

    .line 2682
    :catch_4a
    move-exception v0

    goto :goto_53

    .line 2679
    :catch_4c
    move-exception v0

    .line 2681
    :goto_4d
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_4a

    goto :goto_5a

    .line 2683
    .local v0, "e":Ljava/lang/Exception;
    :goto_53
    const-string v1, "ActivityManager"

    const-string v2, "Unexpected exception collecting process stats"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2684
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_5a
    goto :goto_14

    .line 2661
    :catchall_5b
    move-exception v1

    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5e

    throw v1

    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$7;
    :catchall_5e
    move-exception v1

    goto :goto_5c
.end method
