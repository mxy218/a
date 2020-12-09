.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;,
        Lcom/android/server/job/JobServiceContext$JobCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_STANDBY:Z

.field public static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final NO_PREFERRED_UID:I = -0x1

.field private static final OP_BIND_TIMEOUT_MILLIS:J = 0x4650L

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Z

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mPreferredUid:I

.field private mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field private mTimeoutElapsed:J

.field mVerb:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 71
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 81
    const-string v0, "VERB_BINDING"

    const-string v1, "VERB_STARTING"

    const-string v2, "VERB_EXECUTING"

    const-string v3, "VERB_STOPPING"

    const-string v4, "VERB_FINISHED"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 184
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 185
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 186
    new-instance p1, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {p1, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 187
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 188
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 189
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 190
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .registers 12

    .line 176
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobServiceContext;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleOpTimeoutLocked()V

    return-void
.end method

.method private applyStoppedReasonLocked(Ljava/lang/String;)V
    .registers 4

    .line 810
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 811
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 812
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 813
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz p1, :cond_1c

    .line 814
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 815
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    .line 818
    :cond_1c
    return-void
.end method

.method private assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V
    .registers 7

    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    const-string v1, "Caller no longer running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 488
    const-string v1, ", last stopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 490
    const-string v1, " because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_31
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_3b
    return-void
.end method

.method private closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 780
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 781
    return-void

    .line 783
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 785
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v3

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    .line 787
    :try_start_16
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 788
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v7

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 789
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v8

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v9

    .line 787
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;IIII)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_39} :catch_3a

    .line 792
    goto :goto_3b

    .line 790
    :catch_3a
    move-exception p2

    .line 793
    :goto_3b
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p2, :cond_42

    .line 794
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 796
    :cond_42
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 797
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 798
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 799
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 800
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 801
    iput v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 802
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 803
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 804
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 805
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 806
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    invoke-interface {p2, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 807
    return-void
.end method

.method private deriveWorkSource(Lcom/android/server/job/controllers/JobStatus;)Landroid/os/WorkSource;
    .registers 5

    .line 448
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    .line 449
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 450
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 451
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 452
    invoke-virtual {v1, p1, v2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object p1

    const/16 v1, 0x3e8

    .line 453
    const-string v2, "JobScheduler"

    invoke-virtual {p1, v1, v2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 454
    return-object v0

    .line 456
    :cond_22
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0
.end method

.method private getRunningJobNameLocked()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<null>"

    :goto_b
    return-object v0
.end method

.method private handleCancelLocked(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 688
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2e

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2e
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    if-eq v0, v2, :cond_57

    const/4 v2, 0x2

    if-eq v0, v2, :cond_53

    const/4 p1, 0x3

    if-eq v0, p1, :cond_52

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancelling a job without a valid verb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 703
    :cond_52
    goto :goto_5d

    .line 699
    :cond_53
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 700
    goto :goto_5d

    .line 695
    :cond_57
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 697
    nop

    .line 708
    :goto_5d
    return-void
.end method

.method private handleFinishedLocked(ZLjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 665
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobServiceContext"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 668
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 669
    nop

    .line 674
    :goto_2e
    return-void
.end method

.method private handleOpTimeoutLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 713
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, ", dropping."

    const/4 v2, 0x0

    const-string v3, "JobServiceContext"

    if-eqz v0, :cond_98

    const/4 v4, 0x1

    if-eq v0, v4, :cond_79

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v5, :cond_53

    if-eq v0, v6, :cond_34

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling timeout for an invalid job state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v0, "invalid timeout"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto/16 :goto_ba

    .line 729
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string/jumbo v0, "timed out while stopping"

    invoke-direct {p0, v4, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 732
    goto :goto_ba

    .line 735
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client timed out while executing (no jobFinished received), sending onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v1, "client timed out"

    invoke-virtual {v0, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 738
    const-string/jumbo v0, "timeout while executing"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 739
    goto :goto_ba

    .line 723
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStartJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string/jumbo v0, "timed out while starting"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 726
    goto :goto_ba

    .line 715
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-out while trying to bind "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string/jumbo v0, "timed out while binding"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 718
    nop

    .line 745
    :goto_ba
    return-void
.end method

.method private handleServiceBoundLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 593
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_1e

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServiceBound for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1e
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_44

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x0

    const-string/jumbo v1, "started job not pending"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 600
    return-void

    .line 602
    :cond_44
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_69

    .line 603
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_63

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_63
    const-string v0, "cancelled while waiting for bind"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 608
    return-void

    .line 611
    :cond_69
    :try_start_69
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 612
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 613
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_76

    .line 620
    goto :goto_9a

    .line 614
    :catch_76
    move-exception v0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 619
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    :goto_9a
    return-void
.end method

.method private handleStartedLocked(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 632
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 634
    :cond_27
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 635
    if-nez p1, :cond_34

    .line 637
    const/4 p1, 0x0

    const-string/jumbo v0, "onStartJob returned false"

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 638
    return-void

    .line 640
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz p1, :cond_46

    .line 641
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_41

    .line 642
    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_41
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 646
    return-void

    .line 648
    :cond_46
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 649
    nop

    .line 655
    return-void
.end method

.method private removeOpTimeOutLocked()V
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    return-void
.end method

.method private scheduleOpTimeOutLocked()V
    .registers 6

    .line 826
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 829
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 839
    const-wide/16 v0, 0x1f40

    goto :goto_14

    .line 831
    :cond_d
    const-wide/32 v0, 0x927c0

    .line 832
    goto :goto_14

    .line 835
    :cond_11
    const-wide/16 v0, 0x4650

    .line 836
    nop

    .line 842
    :goto_14
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_57

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time out for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 844
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' jId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 845
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 843
    const-string v3, "JobServiceContext"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_57
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 848
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 849
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 850
    return-void
.end method

.method private sendStopMessageLocked(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 753
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 754
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_25

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 757
    return-void

    .line 760
    :cond_25
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 761
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 762
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 763
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_36

    .line 768
    goto :goto_42

    .line 764
    :catch_36
    move-exception p1

    .line 765
    const-string v0, "Error sending onStopJob to client."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    const/4 p1, 0x1

    const-string v0, "host crashed when trying to stop"

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 769
    :goto_42
    return-void
.end method

.method private verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq v0, p1, :cond_11

    .line 475
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_f

    .line 476
    const-string p1, "JobServiceContext"

    const-string v0, "Stale callback received, ignoring."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_f
    const/4 p1, 0x0

    return p1

    .line 480
    :cond_11
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method cancelExecutingJobLocked(ILjava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(ILjava/lang/String;)V

    .line 316
    return-void
.end method

.method clearPreferredUid()V
    .registers 2

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 329
    return-void
.end method

.method doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    .line 364
    const-string p2, "finished start"

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 365
    return-void
.end method

.method doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    .line 360
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 361
    return-void
.end method

.method doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .registers 7

    .line 540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 542
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    .line 543
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 544
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    return-void

    .line 546
    :cond_12
    :try_start_12
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 547
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    nop

    .line 551
    return-void

    .line 547
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 549
    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method doCallbackLocked(ZLjava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 555
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2a

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCallback of : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " v:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 561
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_36

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    goto :goto_5b

    .line 563
    :cond_36
    const/4 v2, 0x2

    if-eq v0, v2, :cond_58

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3d

    goto :goto_58

    .line 567
    :cond_3d
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_5b

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 565
    :cond_58
    :goto_58
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 571
    :cond_5b
    :goto_5b
    return-void
.end method

.method doCancelLocked(ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 575
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 576
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_10

    .line 577
    const-string p1, "JobServiceContext"

    const-string p2, "Trying to process cancel for torn-down context, ignoring."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_10
    return-void

    .line 582
    :cond_11
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 583
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 584
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    goto :goto_23

    .line 585
    :cond_22
    const/4 p1, -0x1

    :goto_23
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 587
    :cond_25
    invoke-direct {p0, p2}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .registers 7

    .line 391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 393
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1c

    .line 394
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V

    .line 395
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1, v2, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(Landroid/app/IActivityManager;I)Z

    move-result p1

    monitor-exit p2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    return p1

    .line 396
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 398
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .registers 7

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_39

    .line 371
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)V

    .line 372
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_30

    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_15

    goto :goto_30

    .line 378
    :cond_15
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object p1

    .line 379
    if-nez p1, :cond_2b

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 381
    const/4 v2, 0x0

    const-string v3, "last work dequeued"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 383
    :cond_2b
    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_36

    .line 386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    return-object p1

    .line 376
    :cond_30
    :goto_30
    const/4 p1, 0x0

    :try_start_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    .line 386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    return-object p1

    .line 384
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 386
    :catchall_39
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    .line 356
    const-string p2, "app called jobFinished"

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 357
    return-void
.end method

.method doServiceBoundLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 536
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    .line 537
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 20

    .line 200
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 202
    const-string v0, "JobServiceContext"

    const-string v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v3

    return v4

    .line 206
    :cond_15
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 208
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 209
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 210
    nop

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_38

    const/4 v13, 0x1

    goto :goto_39

    :cond_38
    move v13, v4

    .line 213
    :goto_39
    nop

    .line 214
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    const/4 v15, 0x0

    if-eqz v0, :cond_4e

    .line 215
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 216
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v14, v0

    goto :goto_4f

    .line 214
    :cond_4e
    move-object v14, v15

    .line 218
    :goto_4f
    nop

    .line 219
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_62

    .line 220
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 221
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_63

    .line 219
    :cond_62
    move-object v0, v15

    .line 223
    :goto_63
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 224
    new-instance v12, Landroid/app/job/JobParameters;

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 225
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v16

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object/from16 v17, v6

    move-object v6, v12

    move-object v5, v12

    move/from16 v12, v16

    move-object v15, v0

    move-object/from16 v16, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 227
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v5

    .line 230
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_d1

    .line 231
    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v9, v5

    .line 232
    const/16 v0, 0x1f40

    invoke-static {v0, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 233
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_d1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    const-string v5, "Starting job deferred for standby by "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 237
    const-string v5, " ms : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v5, "JobServiceContext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 247
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_e6
    .catchall {:try_start_7 .. :try_end_e6} :catchall_1a0

    .line 250
    nop

    .line 252
    :try_start_e7
    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const/16 v6, 0x105

    new-instance v9, Landroid/os/UserHandle;

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 252
    invoke-virtual {v5, v0, v1, v6, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0
    :try_end_f8
    .catch Ljava/lang/SecurityException; {:try_start_e7 .. :try_end_f8} :catch_f9
    .catchall {:try_start_e7 .. :try_end_f8} :catchall_1a0

    .line 263
    goto :goto_125

    .line 256
    :catch_f9
    move-exception v0

    .line 260
    :try_start_fa
    const-string v5, "JobServiceContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Job service "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be executed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move v0, v4

    .line 264
    :goto_125
    if-nez v0, :cond_15a

    .line 265
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_149

    .line 266
    const-string v0, "JobServiceContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_149
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 269
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 270
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 271
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 272
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 274
    monitor-exit v3

    return v4

    .line 276
    :cond_15a
    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_160
    .catchall {:try_start_fa .. :try_end_160} :catchall_1a0

    .line 278
    :try_start_160
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v11

    .line 278
    invoke-interface {v0, v6, v9, v10, v11}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;III)V
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_175} :catch_176
    .catchall {:try_start_160 .. :try_end_175} :catchall_1a0

    .line 282
    goto :goto_177

    .line 280
    :catch_176
    move-exception v0

    .line 283
    :goto_177
    :try_start_177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 285
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 286
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 287
    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    invoke-virtual {v6, v0, v2, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 288
    const-class v6, Lcom/android/server/job/JobSchedulerInternal;

    .line 289
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/JobSchedulerInternal;

    .line 290
    invoke-interface {v6, v0, v2}, Lcom/android/server/job/JobSchedulerInternal;->noteJobStart(Ljava/lang/String;I)V

    .line 291
    iput-boolean v4, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 292
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 293
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 294
    monitor-exit v3

    const/4 v1, 0x1

    return v1

    .line 295
    :catchall_1a0
    move-exception v0

    monitor-exit v3
    :try_end_1a2
    .catchall {:try_start_177 .. :try_end_1a2} :catchall_1a0

    throw v0
.end method

.method getExecutionStartTimeElapsed()J
    .registers 3

    .line 332
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getPreferredUid()I
    .registers 2

    .line 324
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return v0
.end method

.method getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method getTimeoutElapsed()J
    .registers 3

    .line 336
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 412
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 418
    const/4 v2, 0x1

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_79

    .line 423
    :cond_13
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 424
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "power"

    .line 425
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 426
    nop

    .line 427
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object p2

    .line 426
    invoke-virtual {p1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 428
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext;->deriveWorkSource(Lcom/android/server/job/controllers/JobStatus;)Landroid/os/WorkSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 429
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 430
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 437
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p2, :cond_72

    .line 438
    const-string p2, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bound new job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but live wakelock "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tag="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 439
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 442
    :cond_72
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 419
    :cond_79
    :goto_79
    const-string p1, "connected for different component"

    invoke-direct {p0, v2, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 421
    monitor-exit v0

    return-void

    .line 444
    :catchall_80
    move-exception p1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_80

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 463
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 464
    const/4 v0, 0x1

    :try_start_4
    const-string/jumbo v1, "unexpectedly disconnected"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 465
    monitor-exit p1

    .line 466
    return-void

    .line 465
    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method preemptExecutingJobLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 320
    const/4 v0, 0x2

    const-string v1, "cancelled due to preemption"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(ILjava/lang/String;)V

    .line 321
    return-void
.end method

.method timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_35

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_35

    :cond_f
    if-eqz p1, :cond_1b

    .line 344
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    :cond_1b
    if-eqz p3, :cond_23

    .line 345
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p4, p1, :cond_35

    .line 346
    :cond_23
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_35

    .line 347
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p5}, Landroid/app/job/JobParameters;->setStopReason(ILjava/lang/String;)V

    .line 348
    const-string p1, "force timeout from shell"

    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 349
    const/4 p1, 0x1

    return p1

    .line 352
    :cond_35
    const/4 p1, 0x0

    return p1
.end method
