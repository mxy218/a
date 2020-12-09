.class public final Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$TcConstants;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"


# instance fields
.field private final DEADLINE_TAG:Ljava/lang/String;

.field private final DELAY_TAG:Ljava/lang/String;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mChainedAttributionEnabled:Z

.field private final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mHandler:Landroid/os/Handler;

.field private mNextDelayExpiredElapsedMillis:J

.field private final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextJobExpiredElapsedMillis:J

.field private final mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 59
    const-string v1, "JobScheduler.Time"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 62
    const-string p1, "*job.deadline*"

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    .line 64
    const-string p1, "*job.delay*"

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    .line 74
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 76
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 438
    new-instance p1, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 448
    new-instance p1, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 81
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 82
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 83
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->isChainedAttributionEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    .line 85
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance p1, Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/TimeController$TcConstants;-><init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    .line 87
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    return v0
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 225
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, -0x80000000

    .line 226
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 227
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x40000000  # 2.0f

    .line 228
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 225
    :goto_20
    return p1
.end method

.method private deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 5

    .line 351
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController;->mChainedAttributionEnabled:Z

    if-eqz v0, :cond_19

    .line 352
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 353
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 354
    invoke-virtual {v1, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 355
    const-string v1, "JobScheduler"

    invoke-virtual {p1, p2, v1}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 356
    return-object v0

    .line 358
    :cond_19
    if-nez p2, :cond_21

    new-instance p2, Landroid/os/WorkSource;

    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_27

    :cond_21
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p2, v0

    :goto_27
    return-object p2
.end method

.method private ensureAlarmServiceLocked()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 233
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 235
    :cond_10
    return-void
.end method

.method private evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 6

    .line 286
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 288
    cmp-long p2, v0, p2

    if-gtz p2, :cond_16

    .line 289
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_12

    .line 290
    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 292
    :cond_12
    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    .line 293
    return p3

    .line 295
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 6

    .line 364
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    .line 365
    cmp-long p2, v0, p2

    if-gtz p2, :cond_d

    .line 366
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 367
    return p2

    .line 369
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private maybeAdjustAlarmTime(J)J
    .registers 5

    .line 419
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 6

    .line 379
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 382
    :cond_9
    return-void
.end method

.method private maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 6

    .line 373
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 376
    :cond_9
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 12

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 410
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_b

    .line 411
    return-void

    .line 413
    :cond_b
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 414
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    const-string v2, "*job.deadline*"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 416
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .registers 11

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 392
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_b

    .line 393
    return-void

    .line 395
    :cond_b
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 397
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean p1, p1, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    if-eqz p1, :cond_15

    .line 398
    const/4 p1, 0x3

    goto :goto_16

    :cond_15
    const/4 p1, 0x2

    :goto_16
    move v2, p1

    .line 399
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    const-string v1, "*job.delay*"

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 401
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .registers 19

    .line 424
    move-object v0, p0

    move-wide/from16 v2, p4

    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    .line 425
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    .line 426
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object v9, p3

    invoke-virtual {v0, p3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_4d

    .line 428
    :cond_16
    move-object v9, p3

    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v1, :cond_3b

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "JobScheduler.Time"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 428
    :cond_3b
    move-object v8, p1

    .line 431
    :goto_3c
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move v1, p2

    move-wide/from16 v2, p4

    move-object v8, p1

    move-object v9, p3

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 434
    :goto_4d
    return-void
.end method


# virtual methods
.method checkExpiredDeadlinesAndResetAlarm()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    const-wide v1, 0x7fffffffffffffffL

    .line 245
    const/4 v3, 0x0

    .line 246
    const/4 v4, 0x0

    .line 247
    :try_start_a
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 249
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 250
    :cond_16
    :goto_16
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 251
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 252
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v9

    if-nez v9, :cond_29

    .line 253
    goto :goto_16

    .line 256
    :cond_29
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 257
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 260
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9, v8}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 262
    :cond_3a
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    .line 278
    goto :goto_16

    .line 264
    :cond_3e
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v9, v9, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v9, :cond_6c

    const/high16 v9, 0x40000000  # 2.0f

    .line 265
    invoke-virtual {p0, v8, v9}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 267
    sget-boolean v9, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v9, :cond_16

    .line 268
    const-string v9, "JobScheduler.Time"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because deadline won\'t make it ready."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 273
    :cond_6c
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v1

    .line 274
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 275
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    .line 279
    :cond_78
    nop

    .line 280
    invoke-direct {p0, v3, v4}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    .line 279
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_a .. :try_end_84} :catchall_82

    throw v1
.end method

.method checkExpiredDelaysAndResetAlarm()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 306
    const-wide v3, 0x7fffffffffffffffL

    .line 307
    nop

    .line 308
    const/4 v5, 0x0

    .line 309
    nop

    .line 310
    iget-object v6, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v5

    move v5, v7

    .line 311
    :cond_1a
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 312
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 313
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 314
    goto :goto_1a

    .line 316
    :cond_2d
    invoke-direct {p0, v9, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 317
    invoke-direct {p0, v9}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 318
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 320
    :cond_3c
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 321
    const/4 v7, 0x1

    goto :goto_86

    .line 324
    :cond_44
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v10, v10, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v10, :cond_72

    const/high16 v10, -0x80000000

    .line 325
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v10

    if-nez v10, :cond_72

    .line 327
    sget-boolean v10, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v10, :cond_1a

    .line 328
    const-string v10, "JobScheduler.Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because delay won\'t make it ready."

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 334
    :cond_72
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v10

    .line 335
    cmp-long v12, v3, v10

    if-lez v12, :cond_86

    .line 336
    nop

    .line 337
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 338
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v8, v4

    move-wide v3, v10

    .line 341
    :cond_86
    :goto_86
    goto :goto_1a

    .line 342
    :cond_87
    if-eqz v7, :cond_8e

    .line 343
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 345
    :cond_8e
    nop

    .line 346
    invoke-direct {p0, v5, v8}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v1

    .line 345
    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 641
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 636
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 600
    const-wide v4, 0x10b00000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 602
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 603
    const-wide v8, 0x10300000001L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 604
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 606
    iget-wide v8, v0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v8, v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 609
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 610
    move-object/from16 v9, p4

    invoke-interface {v9, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_50

    .line 611
    goto :goto_3b

    .line 613
    :cond_50
    const-wide v10, 0x20b00000004L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 614
    const-wide v12, 0x10b00000001L

    invoke-virtual {v8, v1, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 616
    const-wide v12, 0x10800000003L

    .line 617
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v14

    .line 616
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 618
    const-wide v12, 0x10300000004L

    .line 619
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v14

    sub-long/2addr v14, v6

    .line 618
    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 621
    const-wide v12, 0x10800000005L

    .line 622
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v14

    .line 621
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 623
    const-wide v12, 0x10300000006L

    .line 624
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v14

    sub-long/2addr v14, v6

    .line 623
    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 626
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 627
    goto :goto_3b

    .line 629
    :cond_97
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 630
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 631
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapsed clock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v2, "Next delay alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 565
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 566
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 567
    const-string v2, "Next deadline alarm in "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 568
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 569
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 570
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 572
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 573
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 574
    goto :goto_3d

    .line 576
    :cond_50
    const-string v4, "#"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 578
    const-string v4, " from "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 580
    const-string v4, ": Delay="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    const-string v5, "N/A"

    if-eqz v4, :cond_79

    .line 582
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_7c

    .line 584
    :cond_79
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 586
    :goto_7c
    const-string v4, ", Deadline="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 588
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_92

    .line 590
    :cond_8f
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 592
    :goto_92
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 593
    goto :goto_3d

    .line 594
    :cond_96
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 11

    .line 171
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-nez v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 179
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    .line 180
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_51

    .line 181
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_51

    .line 182
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 183
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_51

    .line 186
    :cond_34
    nop

    .line 187
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_41

    move v5, v3

    goto :goto_42

    :cond_41
    move v5, v4

    .line 188
    :goto_42
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    .line 190
    if-eqz v5, :cond_4a

    if-eqz v2, :cond_4e

    :cond_4a
    if-nez v5, :cond_51

    if-eqz v2, :cond_51

    .line 191
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 195
    :cond_51
    :goto_51
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 196
    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 197
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8f

    .line 198
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 199
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    goto :goto_8f

    .line 201
    :cond_73
    nop

    .line 202
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v3, v4

    .line 203
    :goto_80
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result p1

    .line 205
    if-eqz v3, :cond_88

    if-eqz p1, :cond_8c

    :cond_88
    if-nez v3, :cond_8f

    if-eqz p1, :cond_8f

    .line 206
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 210
    :cond_8f
    :goto_8f
    return-void
.end method

.method getTcConstants()Lcom/android/server/job/controllers/TimeController$TcConstants;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 100
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-eqz p2, :cond_b4

    .line 101
    :cond_c
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 108
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 109
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 110
    return-void

    .line 111
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateTimingDelayConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 113
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p2

    if-nez p2, :cond_37

    .line 115
    return-void

    .line 119
    :cond_37
    nop

    .line 120
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 121
    :goto_42
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 122
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 123
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5c

    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_5d

    .line 128
    :cond_5c
    goto :goto_42

    .line 129
    :cond_5d
    :goto_5d
    if-eqz v0, :cond_62

    .line 130
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 132
    :cond_62
    invoke-interface {p2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 134
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 135
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/job/controllers/TimeController;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 137
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v3

    goto :goto_87

    :cond_86
    move-wide v3, v1

    .line 139
    :goto_87
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v1

    .line 140
    :cond_91
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eqz v0, :cond_ae

    .line 141
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 142
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 144
    :cond_a2
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TimeController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 145
    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    goto :goto_b4

    .line 148
    :cond_ae
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDelayAlarmLocked(JLandroid/os/WorkSource;)V

    .line 149
    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateDeadlineAlarmLocked(JLandroid/os/WorkSource;)V

    .line 152
    :cond_b4
    :goto_b4
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 161
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 162
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 163
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 167
    :cond_16
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTcConstants:Lcom/android/server/job/controllers/TimeController$TcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V

    .line 92
    return-void
.end method

.method recheckAlarmsLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 461
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 462
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .registers 2

    .line 214
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 216
    return-void
.end method
