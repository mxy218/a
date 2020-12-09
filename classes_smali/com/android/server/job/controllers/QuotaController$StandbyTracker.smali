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

    .line 1785
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V
    .registers 8

    .line 1792
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result p1

    .line 1793
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to bucketIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_2c
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_31
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1799
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_46

    goto :goto_8a

    .line 1802
    :cond_46
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4c
    if-ltz v2, :cond_5a

    .line 1803
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1804
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 1802
    add-int/lit8 v2, v2, -0x1

    goto :goto_4c

    .line 1806
    :cond_5a
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1807
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1808
    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 1810
    :cond_71
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Z

    move-result p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 1812
    :cond_81
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1814
    :cond_88
    monitor-exit v0

    .line 1815
    return-void

    .line 1800
    :cond_8a
    :goto_8a
    monitor-exit v0

    return-void

    .line 1814
    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_31 .. :try_end_8e} :catchall_8c

    throw p1
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
    .registers 6

    .line 1791
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p5, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;

    invoke-direct {p5, p0, p4, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1816
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 4

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

    const-string p1, "ON"

    goto :goto_1c

    :cond_1a
    const-string p1, "OFF"

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.Quota"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    return-void
.end method
