.class final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 1785
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V
    .registers 9
    .param p1, "bucket"  # I
    .param p2, "userId"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1792
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    .line 1793
    .local v0, "bucketIndex":I
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Quota"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_2c
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1798
    :try_start_31
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1799
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_46

    goto :goto_8a

    .line 1802
    :cond_46
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_4c
    if-ltz v3, :cond_5a

    .line 1803
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1804
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 1802
    .end local v4  # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_4c

    .line 1806
    .end local v3  # "i":I
    :cond_5a
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1807
    .local v3, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1808
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 1810
    :cond_71
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1812
    :cond_81
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1814
    .end local v2  # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_88
    monitor-exit v1

    .line 1815
    return-void

    .line 1800
    .restart local v2  # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_8a
    :goto_8a
    monitor-exit v1

    return-void

    .line 1814
    .end local v2  # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_8c
    move-exception v2

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_31 .. :try_end_8e} :catchall_8c

    throw v2
.end method

.method public synthetic lambda$onParoleStateChanged$1$QuotaController$StandbyTracker()V
    .registers 3

    .line 1826
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1827
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1800(Lcom/android/server/job/controllers/QuotaController;)V

    .line 1828
    monitor-exit v0

    .line 1829
    return-void

    .line 1828
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "idle"  # Z
    .param p4, "bucket"  # I
    .param p5, "reason"  # I

    .line 1791
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1816
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 4
    .param p1, "isParoleOn"  # Z

    .line 1820
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->access$1702(Lcom/android/server/job/controllers/QuotaController;Z)Z

    .line 1821
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global parole state now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1a

    const-string v1, "ON"

    goto :goto_1c

    :cond_1a
    const-string v1, "OFF"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    return-void
.end method
