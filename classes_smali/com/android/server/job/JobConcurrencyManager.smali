.class Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;,
        Lcom/android/server/job/JobConcurrencyManager$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field private static final SYSTEM_STATE_REFRESH_MIN_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "JobScheduler"


# instance fields
.field private final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mCurrentInteractiveState:Z

.field private mEffectiveInteractiveState:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

.field private mLastMemoryTrimLevel:I

.field private mLastScreenOffRealtime:J

.field private mLastScreenOnRealtime:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

.field private mNextSystemStateRefreshTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRampUpForScreenOff:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mRecycledPreferredUidForContext:[I

.field mRecycledSlotChanged:[Z

.field private final mService:Lcom/android/server/job/JobSchedulerService;

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 78
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    .line 85
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    .line 94
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 125
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 108
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 109
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    return v0
.end method

.method private assignJobsToContextsInternalLocked()V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 274
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v2, "JobScheduler"

    if-eqz v1, :cond_f

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_f
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 279
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 280
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 281
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateMaxCountsLocked()V

    .line 286
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 287
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    .line 288
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    .line 292
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 293
    invoke-virtual {v10}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMaxTotal()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 294
    invoke-virtual {v11}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMaxBg()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 295
    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->getMinBg()I

    move-result v12

    .line 292
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->reset(III)V

    .line 297
    const/4 v9, 0x0

    move v10, v9

    :goto_41
    const/16 v11, 0x10

    if-ge v10, v11, :cond_6b

    .line 298
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v11, v11, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    .line 299
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    .line 301
    aput-object v12, v6, v10

    if-eqz v12, :cond_60

    .line 302
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->incrementRunningJobCount(Z)V

    .line 305
    :cond_60
    aput-boolean v9, v7, v10

    .line 306
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v11

    aput v11, v8, v10

    .line 297
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 308
    :cond_6b
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_79

    .line 309
    const-string/jumbo v10, "running jobs initial"

    invoke-static {v6, v10}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_79
    move v10, v9

    :goto_7a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, -0x1

    if-ge v10, v12, :cond_a2

    .line 314
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 317
    invoke-static {v12, v6}, Lcom/android/server/job/JobConcurrencyManager;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 318
    if-eq v14, v13, :cond_8e

    .line 319
    goto :goto_9f

    .line 322
    :cond_8e
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v13

    .line 323
    iput v13, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 325
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->incrementPendingJobCount(Z)V

    .line 313
    :goto_9f
    add-int/lit8 v10, v10, 0x1

    goto :goto_7a

    .line 328
    :cond_a2
    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v10}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->onCountDone()V

    .line 330
    move v10, v9

    :goto_a8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_13b

    .line 331
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 334
    invoke-static {v12, v6}, Lcom/android/server/job/JobConcurrencyManager;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v15

    .line 335
    if-eq v15, v13, :cond_bf

    .line 336
    move-object/from16 v18, v8

    move v11, v13

    goto/16 :goto_131

    .line 339
    :cond_bf
    invoke-direct {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v15

    .line 344
    const v16, 0x7fffffff

    .line 345
    nop

    .line 346
    nop

    .line 347
    move/from16 v17, v13

    move/from16 v14, v16

    :goto_cc
    if-ge v9, v11, :cond_11d

    .line 348
    aget-object v11, v6, v9

    .line 349
    aget v13, v8, v9

    .line 350
    if-nez v11, :cond_f4

    .line 351
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    if-eq v13, v11, :cond_e0

    const/4 v11, -0x1

    if-ne v13, v11, :cond_de

    goto :goto_e0

    :cond_de
    const/4 v11, 0x0

    goto :goto_e1

    :cond_e0
    :goto_e0
    const/4 v11, 0x1

    .line 354
    :goto_e1
    if-eqz v11, :cond_f1

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v11, v15}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->canJobStart(Z)Z

    move-result v11

    if-eqz v11, :cond_f1

    .line 357
    nop

    .line 358
    nop

    .line 359
    move-object/from16 v18, v8

    const/4 v8, 0x1

    goto :goto_122

    .line 354
    :cond_f1
    move-object/from16 v18, v8

    goto :goto_115

    .line 366
    :cond_f4
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    move-object/from16 v18, v8

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    if-eq v13, v8, :cond_101

    .line 367
    goto :goto_115

    .line 370
    :cond_101
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v8, v11}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    .line 371
    iget v11, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v8, v11, :cond_10c

    .line 372
    goto :goto_115

    .line 376
    :cond_10c
    iget v8, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-le v14, v8, :cond_115

    .line 377
    iget v8, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 378
    move v14, v8

    move/from16 v17, v9

    .line 347
    :cond_115
    :goto_115
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v18

    const/16 v11, 0x10

    const/4 v13, -0x1

    goto :goto_cc

    :cond_11d
    move-object/from16 v18, v8

    move/from16 v9, v17

    const/4 v8, 0x0

    .line 383
    :goto_122
    const/4 v11, -0x1

    if-eq v9, v11, :cond_12a

    .line 384
    aput-object v12, v6, v9

    .line 385
    const/4 v12, 0x1

    aput-boolean v12, v7, v9

    .line 387
    :cond_12a
    if-eqz v8, :cond_131

    .line 389
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8, v15}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->onStartingNewJob(Z)V

    .line 330
    :cond_131
    :goto_131
    add-int/lit8 v10, v10, 0x1

    move v13, v11

    move-object/from16 v8, v18

    const/4 v9, 0x0

    const/16 v11, 0x10

    goto/16 :goto_a8

    .line 392
    :cond_13b
    const/4 v12, 0x1

    sget-boolean v8, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v8, :cond_14a

    .line 393
    const-string/jumbo v8, "running jobs final"

    invoke-static {v6, v8}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_14a
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->logStatus()V

    .line 398
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->getTotalRunningJobCountToNote()I

    move-result v8

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    .line 399
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->getFgRunningJobCountToNote()I

    move-result v0

    .line 398
    invoke-virtual {v1, v8, v0}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    .line 401
    const/4 v0, 0x0

    :goto_15f
    const/16 v8, 0x10

    if-ge v0, v8, :cond_210

    .line 402
    nop

    .line 403
    aget-boolean v9, v7, v0

    if-eqz v9, :cond_200

    .line 404
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    .line 405
    if-eqz v9, :cond_1a2

    .line 406
    sget-boolean v9, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v9, :cond_197

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preempting job: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_197
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->preemptExecutingJobLocked()V

    .line 412
    move v9, v12

    goto :goto_201

    .line 414
    :cond_1a2
    aget-object v9, v6, v0

    .line 415
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_1c4

    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "About to run job on context "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", job: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1c4
    const/4 v10, 0x0

    :goto_1c5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d7

    .line 420
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v11, v9}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 419
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c5

    .line 422
    :cond_1d7
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-nez v10, :cond_1f7

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error executing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1f7
    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_200

    .line 426
    invoke-virtual {v1, v9}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 430
    :cond_200
    const/4 v9, 0x0

    :goto_201
    if-nez v9, :cond_20c

    .line 431
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 401
    :cond_20c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15f

    .line 434
    :cond_210
    return-void
.end method

.method private static findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6

    .line 437
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 438
    aget-object v1, p1, v0

    if-eqz v1, :cond_19

    aget-object v1, p1, v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 439
    return v0

    .line 437
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private isFgJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 208
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v0, 0x28

    if-lt p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public static synthetic lambda$5dmb0pQscXPwEG6SBnhs7aCwpSs(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method private onInteractiveStateChanged(Z)V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_9

    .line 145
    monitor-exit v0

    return-void

    .line 147
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 148
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 149
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_25
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 153
    if-eqz p1, :cond_3a

    .line 154
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 155
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 157
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4c

    .line 159
    :cond_3a
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 168
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 169
    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    int-to-long v2, v2

    .line 168
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :goto_4c
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method private static printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    const/4 p1, 0x0

    :goto_17
    array-length v1, p0

    if-ge p1, v1, :cond_45

    .line 463
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    aget-object v1, p0, p1

    const/4 v2, -0x1

    if-nez v1, :cond_26

    move v1, v2

    goto :goto_2c

    :cond_26
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    aget-object v1, p0, p1

    if-nez v1, :cond_34

    goto :goto_3a

    :cond_34
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    :goto_3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 468
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printPendingQueueLocked()Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 449
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 451
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    goto :goto_f

    .line 457
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rampUpForScreenOff()V
    .registers 8

    .line 181
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_9

    .line 185
    monitor-exit v0

    return-void

    .line 187
    :cond_9
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 191
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:Landroid/util/KeyValueListParser$IntValue;

    .line 192
    invoke-virtual {v5}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_2b

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_2b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 199
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_39

    .line 200
    const-string v1, "JobScheduler"

    const-string v2, "Ramping up concurrency"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_39
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private refreshSystemStateLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 217
    return-void

    .line 220
    :cond_d
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 221
    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 225
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    .line 227
    goto :goto_27

    .line 226
    :catch_26
    move-exception v0

    .line 229
    :goto_27
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 230
    return-void
.end method

.method private updateMaxCountsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()V

    .line 236
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_c

    .line 237
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_ON:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    goto :goto_10

    .line 238
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_JOB_COUNTS_SCREEN_OFF:Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;

    .line 241
    :goto_10
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    .line 252
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    goto :goto_2f

    .line 249
    :cond_20
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 250
    goto :goto_2f

    .line 246
    :cond_25
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 247
    goto :goto_2f

    .line 243
    :cond_2a
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxJobCounts:Lcom/android/server/job/JobSchedulerService$MaxJobCounts;

    .line 244
    nop

    .line 255
    :goto_2f
    return-void
.end method


# virtual methods
.method assignJobsToContextsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 267
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    .line 269
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 270
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;JJ)V
    .registers 9

    .line 473
    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 477
    :try_start_8
    const-string v0, "Screen state: current "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_76

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz v0, :cond_17

    move-object v0, v1

    goto :goto_18

    :cond_17
    move-object v0, v2

    :goto_18
    :try_start_18
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move-object v1, v2

    :goto_26
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 483
    const-string v0, "Last screen ON : "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    sub-long p4, p2, p4

    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, p4

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 487
    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr p4, v0

    invoke-static {p1, p4, p5, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 491
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 493
    const-string p2, "Current max jobs:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    const-string p2, "  "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 499
    const-string p2, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 500
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 503
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_71
    .catchall {:try_start_18 .. :try_end_71} :catchall_76

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 506
    nop

    .line 507
    return-void

    .line 505
    :catchall_76
    move-exception p2

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    throw p2
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 10

    .line 510
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 512
    iget-boolean p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    const-wide v0, 0x10800000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 514
    iget-boolean p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 517
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long p4, p6, p4

    const-wide v0, 0x10300000003L

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 519
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long/2addr p6, p4

    const-wide p4, 0x10300000004L

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 522
    iget-object p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mJobCountTracker:Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;

    const-wide p5, 0x10b00000005L

    invoke-virtual {p4, p1, p5, p6}, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 524
    iget p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const-wide p5, 0x10500000006L

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 527
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 528
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 123
    return-void
.end method
