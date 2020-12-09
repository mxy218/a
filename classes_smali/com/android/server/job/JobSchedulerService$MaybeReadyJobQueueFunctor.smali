.class final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MaybeReadyJobQueueFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field backoffCount:I

.field batteryNotLowCount:I

.field chargingCount:I

.field connectivityCount:I

.field contentCount:I

.field idleCount:I

.field runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field storageNotLowCount:I

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2032
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2034
    return-void
.end method

.method private reset()V
    .registers 2

    .line 2109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    .line 2110
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    .line 2111
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    .line 2112
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    .line 2113
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    .line 2114
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    .line 2115
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    .line 2116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2117
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 2039
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 2041
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2041
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2043
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_5d} :catch_5f

    .line 2046
    return-void

    .line 2049
    :cond_5e
    goto :goto_60

    .line 2048
    :catch_5f
    move-exception v0

    .line 2050
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    if-lez v0, :cond_6c

    .line 2051
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    .line 2053
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2054
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    .line 2056
    :cond_78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2057
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    .line 2059
    :cond_84
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2060
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    .line 2062
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2063
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    .line 2065
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 2066
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    .line 2068
    :cond_a8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2069
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    .line 2071
    :cond_b4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-nez v0, :cond_bf

    .line 2072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2074
    :cond_bf
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 2076
    :cond_c5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$900(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2078
    :goto_ca
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 2022
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public postProcess()V
    .registers 4

    .line 2081
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->backoffCount:I

    const-string v1, "JobScheduler"

    if-gtz v0, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->idleCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    if-ge v0, v2, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->connectivityCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    if-ge v0, v2, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->chargingCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    if-ge v0, v2, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->batteryNotLowCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_BATTERY_NOT_LOW_COUNT:I

    if-ge v0, v2, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->storageNotLowCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_STORAGE_NOT_LOW_COUNT:I

    if-ge v0, v2, :cond_5d

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->contentCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    if-ge v0, v2, :cond_5d

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    if-eqz v0, :cond_53

    .line 2089
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    if-lt v0, v2, :cond_53

    goto :goto_5d

    .line 2099
    :cond_53
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_8a

    .line 2100
    const-string v0, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 2090
    :cond_5d
    :goto_5d
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_66

    .line 2091
    const-string v0, "maybeQueueReadyJobsForExecutionLocked: Running jobs."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :cond_66
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    .line 2094
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2095
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8a

    .line 2096
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2105
    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2106
    return-void
.end method
