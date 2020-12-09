.class final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2559
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 2567
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 4

    .line 2571
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_21

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global parole state now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const-string v1, "ON"

    goto :goto_15

    :cond_13
    const-string v1, "OFF"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_21
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iput-boolean p1, v0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    .line 2575
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 11

    .line 2579
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 2581
    if-gez v3, :cond_d

    .line 2583
    return-void

    .line 2586
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p1

    .line 2587
    const-wide/32 v0, 0xa4cb800

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_20

    .line 2589
    move-wide v6, v1

    goto :goto_21

    .line 2587
    :cond_20
    move-wide v6, p1

    .line 2591
    :goto_21
    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    .line 2592
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2593
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2594
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_57

    .line 2595
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result p2

    if-gtz p2, :cond_3d

    cmp-long p2, v6, v1

    if-lez p2, :cond_56

    .line 2596
    :cond_3d
    const-class p2, Landroid/os/BatteryStatsInternal;

    .line 2597
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryStatsInternal;

    .line 2598
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v0

    invoke-virtual {p2, v3, v0, v6, v7}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    .line 2599
    const/16 v2, 0x55

    const/4 v4, 0x0

    .line 2600
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v5

    .line 2599
    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IJ)I

    .line 2602
    :cond_56
    return-void

    .line 2594
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method
