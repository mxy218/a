.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$ChargingTracker;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;,
        Lcom/android/server/job/controllers/QuotaController$Package;,
        Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field private static final DEBUG:Z

.field private static final MAX_PERIOD_MS:J = 0x5265c00L

.field private static final MSG_CHECK_PACKAGE:I = 0x2

.field private static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field private static final MSG_REACHED_QUOTA:I = 0x0

.field private static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedTimeIntoQuotaMs:J

.field private mAllowedTimePerPeriodMs:J

.field private final mBucketPeriodsMs:[J

.field private final mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

.field private final mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

.field private final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field private final mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mInParole:Z

.field private final mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mShouldThrottle:Z

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 110
    const-string v1, "JobScheduler.Quota"

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
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 10

    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 380
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 383
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 386
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 392
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 395
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 398
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 401
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 408
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 426
    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    .line 432
    const-wide/32 v1, 0xdbba00

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 438
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 444
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    .line 450
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 453
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 456
    const/16 p1, 0x14

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 463
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 466
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 467
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 475
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$2;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    .line 498
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$3;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    const/4 p1, 0x4

    new-array v1, p1, [J

    fill-array-data v1, :array_118

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 535
    new-array v1, p1, [I

    fill-array-data v1, :array_12c

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 549
    new-array p1, p1, [I

    fill-array-data p1, :array_138

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 560
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 1190
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1346
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 1849
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    .line 574
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    .line 575
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 576
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    .line 577
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 578
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 579
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 581
    new-instance v5, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v5, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 585
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 587
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 590
    const/4 p1, 0x1

    :try_start_104
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v3, 0x5

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_10e} :catch_10f

    .line 595
    goto :goto_110

    .line 593
    :catch_10f
    move-exception v0

    .line 597
    :goto_110
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    .line 598
    return-void

    :array_118
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
    .end array-data

    :array_12c
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
    .end array-data

    :array_138
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 107
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(J)I
    .registers 2

    .line 107
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 107
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCount(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/job/controllers/QuotaController;Z)Z
    .registers 2

    .line 107
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;)Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z
    .registers 3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;I)Z
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method static synthetic access$3202(Lcom/android/server/job/controllers/QuotaController;I)I
    .registers 2

    .line 107
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method static synthetic access$3402(Lcom/android/server/job/controllers/QuotaController;I)I
    .registers 2

    .line 107
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;JJ)J"
        }
    .end annotation

    .line 888
    nop

    .line 889
    nop

    .line 890
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v0, p4

    move-wide p4, p2

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3d

    .line 891
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 893
    iget-wide v6, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v6, v6, p2

    if-gez v6, :cond_1b

    .line 895
    goto :goto_3a

    .line 896
    :cond_1b
    iget-wide v6, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v6, v6, p2

    if-gtz v6, :cond_28

    .line 898
    iget-wide p4, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr p4, p2

    add-long/2addr v3, p4

    .line 899
    iget-wide p4, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_3a

    .line 903
    :cond_28
    iget-wide v6, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v6, p4

    .line 904
    cmp-long p4, v6, v0

    if-lez p4, :cond_30

    .line 905
    goto :goto_3d

    .line 907
    :cond_30
    iget-wide p4, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v8, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr p4, v8

    add-long/2addr p4, v6

    add-long/2addr v3, p4

    .line 909
    sub-long/2addr v0, v6

    .line 910
    iget-wide p4, v5, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 890
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 914
    :cond_3d
    :goto_3d
    add-long/2addr v3, v0

    .line 915
    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long p1, v3, p1

    if-lez p1, :cond_5a

    .line 916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calculated quota consumed time too high: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Quota"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_5a
    return-wide v3
.end method

.method private getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3

    .line 745
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_14

    .line 750
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result p1

    return p1

    .line 748
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 13

    .line 933
    const/4 v0, 0x4

    if-ne p3, v0, :cond_10

    .line 934
    const-string p1, "JobScheduler.Quota"

    const-string p2, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {p1}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object p1

    .line 937
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 938
    if-nez v0, :cond_24

    .line 939
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 940
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 942
    :cond_24
    aget-object v1, v0, p3

    .line 943
    if-nez v1, :cond_2f

    .line 944
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v1}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 945
    aput-object v1, v0, p3

    .line 947
    :cond_2f
    if-eqz p4, :cond_70

    .line 948
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, p4, p3

    .line 949
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p4, p4, p3

    .line 950
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p3, v0, p3

    .line 951
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 952
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_67

    :cond_4d
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 953
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_67

    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_67

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v0, p4, :cond_67

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v0, p3, :cond_70

    .line 958
    :cond_67
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 959
    iput p4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 960
    iput p3, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 961
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 965
    :cond_70
    return-object v1
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .registers 5

    .line 824
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 825
    const-wide/16 p1, 0x0

    return-wide p1

    .line 827
    :cond_6
    nop

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 827
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .registers 8

    .line 832
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleNewChargingStateLocked()V
    .registers 6

    .line 1233
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1234
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v2

    .line 1235
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 1236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewChargingStateLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.Quota"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_26
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v4, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$DLtQo5Uin5fgikFII8lOB91DOkc;-><init>(JZ)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1241
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1242
    return-void
.end method

.method private static hashLong(J)I
    .registers 4

    .line 248
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private incrementTimingSessionCount(ILjava/lang/String;)V
    .registers 9

    .line 1138
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1139
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1140
    if-nez v2, :cond_1a

    .line 1141
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1142
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1144
    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_40

    .line 1145
    aget-object v3, v2, p2

    .line 1146
    if-nez v3, :cond_2a

    .line 1147
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1148
    aput-object v3, v2, p2

    .line 1150
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1151
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1152
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1154
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1144
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 1156
    :cond_40
    return-void
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isUidInForeground(I)Z
    .registers 4

    .line 727
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 728
    const/4 p1, 0x1

    return p1

    .line 730
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_b
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 732
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p1
.end method

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 7

    .line 786
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 787
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_17

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v3, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v0, v3, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    .line 790
    :goto_18
    if-eqz v0, :cond_23

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p2, v0, p2

    if-ge p1, p2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 7

    .line 796
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 797
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_17

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v3, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v0, v3, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    .line 799
    :goto_18
    if-eqz v0, :cond_23

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p2, v0, p2

    if-ge p1, p2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method static synthetic lambda$handleNewChargingStateLocked$2(JZLcom/android/server/job/controllers/QuotaController$Timer;)V
    .registers 4

    .line 1239
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$1(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 5

    .line 1089
    if-eqz p2, :cond_f

    .line 1090
    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 1091
    aget-object v1, p2, v0

    .line 1092
    if-eqz v1, :cond_c

    .line 1093
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1090
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1097
    :cond_f
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .registers 7

    .line 1245
    nop

    .line 1246
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 1247
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v3

    .line 1248
    move v4, v2

    move v2, v0

    :goto_14
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v5

    if-ge v2, v5, :cond_2a

    .line 1249
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v5

    .line 1250
    invoke-direct {p0, v3, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1246
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_4

    .line 1253
    :cond_2e
    if-eqz v2, :cond_35

    .line 1254
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1256
    :cond_35
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z
    .registers 11

    .line 1265
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1266
    const/4 v1, 0x0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_76

    .line 1271
    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v2

    .line 1272
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v3

    .line 1273
    nop

    .line 1274
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_27
    if-ltz v4, :cond_55

    .line 1275
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1276
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1279
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v6

    or-int/2addr v1, v6

    goto :goto_52

    .line 1280
    :cond_3b
    if-eqz v2, :cond_49

    .line 1281
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    if-ne v2, v7, :cond_49

    .line 1285
    invoke-direct {p0, v6, v3}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v6

    or-int/2addr v1, v6

    goto :goto_52

    .line 1288
    :cond_49
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1274
    :goto_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 1291
    :cond_55
    if-nez v3, :cond_5b

    .line 1295
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    goto :goto_75

    .line 1297
    :cond_5b
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1298
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 1299
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1301
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1304
    :cond_75
    :goto_75
    return v1

    .line 1267
    :cond_76
    :goto_76
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .registers 4

    .line 1349
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1351
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1352
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean p1, p1, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1353
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1354
    return p1
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 7

    .line 1438
    if-nez p2, :cond_15

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 1440
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1442
    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result p1

    return p1
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method deleteObsoleteSessionsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1854
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1855
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    .line 2812
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 2813
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 2807
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3700(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2808
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 26
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

    .line 2671
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2672
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2674
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v7

    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2675
    iget-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    const-wide v10, 0x10800000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2676
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2677
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 2676
    const-wide v12, 0x10300000006L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2679
    const/4 v10, 0x0

    :goto_3a
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_53

    .line 2680
    const-wide v14, 0x20500000003L

    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 2681
    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 2680
    invoke-virtual {v1, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2679
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 2684
    :cond_53
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v11, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;

    invoke-direct {v11, v0, v2, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v10, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2709
    const/4 v10, 0x0

    :goto_5e
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v11

    if-ge v10, v11, :cond_1e8

    .line 2710
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v11, v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v11

    .line 2711
    const/4 v14, 0x0

    :goto_6d
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v15, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v15

    if-ge v14, v15, :cond_1d8

    .line 2712
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v15, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v15

    .line 2713
    const-wide v7, 0x20b00000005L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2715
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v12, 0x10b00000002L

    invoke-virtual {v9, v1, v12, v13, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 2718
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v11, v15}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2719
    if-eqz v9, :cond_c0

    .line 2720
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_a4
    if-ltz v12, :cond_bd

    .line 2721
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2722
    move-wide/from16 v16, v3

    const-wide v2, 0x20b00000003L

    invoke-virtual {v13, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2720
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    goto :goto_a4

    :cond_bd
    move-wide/from16 v16, v3

    goto :goto_c2

    .line 2719
    :cond_c0
    move-wide/from16 v16, v3

    .line 2727
    :goto_c2
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v11, v15}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2728
    if-eqz v2, :cond_18b

    .line 2729
    const/4 v9, 0x0

    :goto_cd
    array-length v12, v2

    if-ge v9, v12, :cond_186

    .line 2730
    aget-object v12, v2, v9

    .line 2731
    if-nez v12, :cond_da

    .line 2732
    move-wide/from16 v18, v5

    move/from16 v20, v14

    goto/16 :goto_17e

    .line 2734
    :cond_da
    const-wide v3, 0x20b00000004L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2736
    move-wide/from16 v18, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2739
    iget-wide v5, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    move/from16 v20, v14

    const-wide v13, 0x10300000002L

    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2742
    const-wide v5, 0x10300000003L

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2745
    const-wide v5, 0x1050000000eL

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2748
    const-wide v5, 0x1050000000fL

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2751
    const-wide v5, 0x10300000004L

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2754
    const-wide v5, 0x10500000005L

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2757
    iget-wide v5, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v13, 0x10300000006L

    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2760
    const-wide v5, 0x10500000007L

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2763
    const-wide v5, 0x1050000000bL

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    const-wide v5, 0x10300000008L

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2769
    const-wide v5, 0x10300000009L

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2772
    const-wide v5, 0x1050000000aL

    iget v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2775
    const-wide v5, 0x1030000000cL

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2778
    const-wide v5, 0x1050000000dL

    iget v12, v12, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2781
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2729
    :goto_17e
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    move/from16 v14, v20

    goto/16 :goto_cd

    :cond_186
    move-wide/from16 v18, v5

    move/from16 v20, v14

    goto :goto_18f

    .line 2728
    :cond_18b
    move-wide/from16 v18, v5

    move/from16 v20, v14

    .line 2785
    :goto_18f
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v11, v15}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2786
    if-eqz v2, :cond_1c0

    .line 2787
    const-wide v3, 0x10b00000005L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2789
    nop

    .line 2790
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v5

    .line 2789
    const-wide v12, 0x10800000001L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2791
    nop

    .line 2793
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v5

    .line 2791
    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2794
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1c5

    .line 2786
    :cond_1c0
    const-wide v12, 0x10800000001L

    .line 2797
    :goto_1c5
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2711
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v2, p4

    move-wide v8, v12

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    const-wide v12, 0x10300000006L

    goto/16 :goto_6d

    .line 2709
    :cond_1d8
    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide v12, v8

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    const-wide v12, 0x10300000006L

    goto/16 :goto_5e

    .line 2801
    :cond_1e8
    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2802
    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2803
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

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is throttling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In parole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2555
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2559
    const-string v0, "Cached UID->package map:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2561
    const/4 v0, 0x0

    move v1, v0

    :goto_7e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    const-string v3, ": "

    if-ge v1, v2, :cond_a0

    .line 2562
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 2563
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2564
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2565
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2561
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 2567
    :cond_a0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2570
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v2, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2601
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2602
    move v1, v0

    :goto_b4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v2

    if-ge v1, v2, :cond_117

    .line 2603
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v2

    .line 2604
    move v4, v0

    :goto_c3
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v5

    if-ge v4, v5, :cond_114

    .line 2605
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v1, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v5

    .line 2606
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 2607
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2608
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2609
    if-eqz v5, :cond_111

    .line 2610
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2611
    const-string v6, "Saved sessions:"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2613
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_fa
    if-ltz v6, :cond_108

    .line 2614
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2615
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2613
    add-int/lit8 v6, v6, -0x1

    goto :goto_fa

    .line 2617
    :cond_108
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2618
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2619
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2604
    :cond_111
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 2602
    :cond_114
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 2624
    :cond_117
    const-string p2, "Cached execution stats:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2626
    move p2, v0

    :goto_120
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge p2, v1, :cond_170

    .line 2627
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2628
    move v2, v0

    :goto_12f
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v2, v4, :cond_16d

    .line 2629
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2630
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2632
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2634
    move v4, v0

    :goto_150
    array-length v6, v5

    if-ge v4, v6, :cond_167

    .line 2635
    aget-object v6, v5, v4

    .line 2636
    if-eqz v6, :cond_164

    .line 2637
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2639
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2634
    :cond_164
    add-int/lit8 v4, v4, 0x1

    goto :goto_150

    .line 2642
    :cond_167
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2628
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    .line 2626
    :cond_16d
    add-int/lit8 p2, p2, 0x1

    goto :goto_120

    .line 2645
    :cond_170
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2647
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2648
    const-string p2, "In quota alarms:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2650
    move p2, v0

    :goto_17f
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge p2, v1, :cond_1c7

    .line 2651
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2652
    move v2, v0

    :goto_18e
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v2, v4, :cond_1c4

    .line 2653
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2654
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2656
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 2659
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    goto :goto_1c1

    .line 2661
    :cond_1bc
    const-string v4, "NOT WAITING"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    :goto_1c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_18e

    .line 2650
    :cond_1c4
    add-int/lit8 p2, p2, 0x1

    goto :goto_17f

    .line 2665
    :cond_1c7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2666
    return-void
.end method

.method getAllowedTimePerPeriodMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2469
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getBucketMaxJobCounts()[I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2475
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2481
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2487
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 926
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    return-object p1
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2493
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2499
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2504
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2509
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2514
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2519
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2541
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getRateLimitingWindowMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2524
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 812
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 813
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 812
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 814
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 805
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 806
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    .line 805
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 844
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 845
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    .line 847
    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 848
    const-wide/16 p1, 0x0

    return-wide p1

    .line 850
    :cond_10
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 851
    if-eqz v3, :cond_5a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_21

    goto :goto_5a

    .line 855
    :cond_21
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 856
    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v0, v4

    .line 857
    const-wide/32 v4, 0x5265c00

    sub-long v6, v0, v4

    .line 858
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v4

    .line 859
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v8, v4, v8

    .line 864
    iget-wide p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_48

    .line 865
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide p1

    return-wide p1

    .line 873
    :cond_48
    nop

    .line 874
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide p1

    .line 876
    move-wide v6, v10

    move-wide v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 873
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 852
    :cond_5a
    :goto_5a
    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method getTimingSessionCoalescingDurationMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2529
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    .line 2535
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method incrementJobCount(ILjava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1117
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1118
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1119
    if-nez v2, :cond_1a

    .line 1120
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1121
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1123
    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_3f

    .line 1124
    aget-object v3, v2, p2

    .line 1125
    if-nez v3, :cond_2a

    .line 1126
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1127
    aput-object v3, v2, p2

    .line 1129
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1130
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1131
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1133
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1123
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 1135
    :cond_3f
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1087
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1088
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1098
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1104
    if-eqz p1, :cond_1d

    .line 1105
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1106
    const/4 p2, 0x0

    :goto_11
    array-length v2, p1

    if-ge p2, v2, :cond_1d

    .line 1107
    aget-object v2, p1, p2

    .line 1108
    if-eqz v2, :cond_1a

    .line 1109
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1106
    :cond_1a
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .line 1113
    :cond_1d
    return-void
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 769
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    return v0

    .line 771
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    const/4 v2, 0x1

    if-nez v1, :cond_b

    return v2

    .line 774
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    if-eqz v1, :cond_18

    goto :goto_36

    .line 778
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_34

    .line 780
    invoke-direct {p0, p1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 781
    invoke-direct {p0, p1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result p1

    if-eqz p1, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    nop

    .line 779
    :goto_35
    return v0

    .line 775
    :cond_36
    :goto_36
    return v2
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    .line 760
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 761
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 763
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    .line 760
    :goto_26
    return p1
.end method

.method public synthetic lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 8

    .line 2571
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 2572
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2573
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2574
    goto :goto_76

    .line 2576
    :cond_14
    const-string v2, "#"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2578
    const-string v2, " from "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2580
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2581
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    :cond_35
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2585
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2586
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2587
    const-string v2, ", "

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2588
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2589
    const-string/jumbo v3, "within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_60

    .line 2591
    :cond_5a
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2593
    :goto_60
    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 2595
    const-string/jumbo v1, "ms remaining in quota"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2597
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2571
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2599
    :cond_79
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$4$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 12

    .line 2685
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 2686
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2687
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2688
    goto :goto_68

    .line 2690
    :cond_14
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2692
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2694
    const-wide v4, 0x10500000002L

    .line 2695
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 2694
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2696
    const-wide v4, 0x10e00000003L

    .line 2698
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    .line 2696
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2699
    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 2700
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2699
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2701
    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 2702
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 2701
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2703
    const-wide v4, 0x10300000006L

    .line 2704
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 2703
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2705
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2685
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2707
    :cond_6b
    return-void
.end method

.method public synthetic lambda$onConstantsUpdatedLocked$0$QuotaController()V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 684
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1195
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, "JobScheduler.Quota"

    if-lez v0, :cond_40

    .line 1198
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_3f

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1201
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_3f
    return-void

    .line 1205
    :cond_40
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1206
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1207
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1208
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_63

    .line 1211
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_62

    .line 1212
    const-string v0, "Didn\'t find a time to schedule cleanup"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_62
    return-void

    .line 1218
    :cond_63
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 1219
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_75

    .line 1222
    add-long/2addr v2, v6

    move-wide v6, v2

    goto :goto_76

    .line 1219
    :cond_75
    move-wide v6, v2

    .line 1224
    :goto_76
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1225
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v8, "*job.cleanup*"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1227
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled next cleanup for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_9e
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1364
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 1365
    return-void

    .line 1368
    :cond_c
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1369
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    .line 1370
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v6

    .line 1371
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    .line 1374
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1375
    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v9, v9, v11

    const-string v10, "JobScheduler.Quota"

    if-gez v9, :cond_7c

    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v9, v11, v13

    if-gez v9, :cond_7c

    if-eqz v6, :cond_7c

    if-eqz v7, :cond_7c

    .line 1380
    sget-boolean v5, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v5, :cond_64

    .line 1381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " even though it already has "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms in its quota."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1381
    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_64
    if-eqz v8, :cond_70

    .line 1388
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1390
    const-wide/16 v3, 0x0

    invoke-virtual {v8, v3, v4}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1392
    :cond_70
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1393
    return-void

    .line 1396
    :cond_7c
    if-nez v8, :cond_88

    .line 1397
    new-instance v8, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    invoke-direct {v8, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 1398
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, v2, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1402
    :cond_88
    iget-wide v1, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1403
    if-nez v6, :cond_98

    iget v3, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v6, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v3, v6, :cond_98

    .line 1405
    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1408
    :cond_98
    if-nez v7, :cond_a6

    iget v3, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v6, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v3, v6, :cond_a6

    .line 1411
    iget-wide v5, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1421
    :cond_a6
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 1422
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v5

    const-wide/32 v11, 0x2bf20

    sub-long/2addr v5, v11

    cmp-long v3, v1, v5

    if-ltz v3, :cond_da

    .line 1423
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_c1

    goto :goto_da

    .line 1432
    :cond_c1
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_104

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No need to schedule start alarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 1424
    :cond_da
    :goto_da
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v3, :cond_f2

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling start alarm for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_f2
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x3

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v15, "*job.quota_check*"

    move-wide v13, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1431
    invoke-virtual {v8, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1435
    :cond_104
    :goto_104
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 607
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 608
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 612
    if-nez v1, :cond_1c

    .line 613
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 614
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 616
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 617
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 618
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    if-eqz v1, :cond_3a

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 620
    invoke-direct {p0, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 621
    if-nez v1, :cond_39

    .line 622
    nop

    .line 623
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    .line 622
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 625
    :cond_39
    goto :goto_3e

    .line 627
    :cond_3a
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    .line 629
    :goto_3e
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5

    .line 660
    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 661
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p3

    .line 662
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 663
    if-eqz p2, :cond_1d

    .line 664
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 666
    :cond_1d
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p3

    .line 667
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 668
    if-eqz p2, :cond_32

    .line 669
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_32
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 673
    :cond_37
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 7

    .line 691
    const-string v0, "JobScheduler.Quota"

    if-nez p1, :cond_a

    .line 692
    const-string p1, "Told app removed but given null package name."

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 695
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 698
    if-eqz v2, :cond_31

    .line 699
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 700
    const-string/jumbo v3, "onAppRemovedLocked called before Timer turned off."

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 703
    :cond_2c
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 705
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 707
    if-eqz v0, :cond_4a

    .line 708
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 711
    :cond_4a
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 712
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 713
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 714
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 677
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-ne v0, v1, :cond_1c

    .line 678
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    .line 681
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$Nr0Q3oPwHBGHfHSdpzIm80t7M7s;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    :cond_1c
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V

    .line 603
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3

    .line 718
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 722
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(I)V

    .line 723
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p1}, Landroid/util/SparseSetArray;->clear()V

    .line 724
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 633
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1e

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepping for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 638
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_4d

    .line 639
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_47

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_47
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 644
    return-void

    .line 647
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 648
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 649
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 650
    if-nez v3, :cond_69

    .line 651
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 654
    :cond_69
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 655
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1163
    if-nez v1, :cond_17

    .line 1164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :cond_17
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1172
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 971
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 972
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 973
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 974
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 975
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 976
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 978
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 979
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 980
    const-wide/32 v10, 0x5265c00

    add-long v12, v8, v10

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 981
    if-eqz v7, :cond_73

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v12

    if-eqz v12, :cond_73

    .line 982
    nop

    .line 983
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 984
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v7

    iput v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 987
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 988
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v7, v12, v14

    if-ltz v7, :cond_5e

    .line 989
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v14, v8, v14

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v14, v4

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 992
    :cond_5e
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v12

    if-ltz v4, :cond_73

    .line 993
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v12, v8, v12

    add-long/2addr v12, v10

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 998
    :cond_73
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 999
    if-eqz v1, :cond_1c4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_1c4

    .line 1003
    :cond_85
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v4, v8, v4

    .line 1004
    sub-long v12, v8, v10

    .line 1005
    nop

    .line 1008
    const-wide v14, 0x7fffffffffffffffL

    .line 1011
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1012
    move v7, v6

    move v6, v2

    :goto_99
    if-ltz v6, :cond_1bb

    .line 1013
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1016
    move-wide/from16 v17, v8

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_132

    .line 1018
    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_c0

    .line 1019
    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1020
    move-wide/from16 p1, v8

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v4

    .line 1021
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v14, v8

    move-wide/from16 v8, p1

    goto :goto_c4

    .line 1025
    :cond_c0
    nop

    .line 1026
    move-wide v8, v4

    const-wide/16 v14, 0x0

    .line 1029
    :goto_c4
    move-wide/from16 p1, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v19, v14

    iget-wide v14, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v14, v8

    add-long/2addr v4, v14

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1030
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1031
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v4, v4, v14

    if-ltz v4, :cond_f0

    .line 1032
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v8, v14

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v8, v14

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v14

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1036
    :cond_f0
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_103

    .line 1037
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v14

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1040
    :cond_103
    if-eq v6, v2, :cond_11c

    add-int/lit8 v4, v6, 0x1

    .line 1041
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v4, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v8

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_119

    goto :goto_11c

    :cond_119
    move-wide/from16 v14, v19

    goto :goto_134

    .line 1044
    :cond_11c
    :goto_11c
    add-int/lit8 v7, v7, 0x1

    .line 1046
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v7, v4, :cond_12f

    .line 1047
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v14

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1054
    :cond_12f
    move-wide/from16 v14, v19

    goto :goto_134

    .line 1016
    :cond_132
    move-wide/from16 p1, v4

    .line 1054
    :goto_134
    iget-wide v4, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_176

    .line 1055
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-object v11, v1

    move/from16 v16, v2

    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v1

    add-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1057
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1058
    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v12

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1059
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v1, v1, v8

    if-ltz v1, :cond_171

    .line 1060
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v8, v14

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v8, v14

    const-wide/32 v14, 0x5265c00

    add-long/2addr v8, v14

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1012
    :cond_171
    move-wide v14, v4

    const-wide/32 v8, 0x5265c00

    goto :goto_1af

    .line 1064
    :cond_176
    move-object v11, v1

    move/from16 v16, v2

    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v12, v1

    if-gez v1, :cond_1bd

    .line 1067
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v4, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v12

    add-long/2addr v1, v4

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1068
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1069
    nop

    .line 1070
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1aa

    .line 1071
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v4, v12

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x5265c00

    add-long/2addr v4, v8

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1ad

    .line 1070
    :cond_1aa
    const-wide/32 v8, 0x5265c00

    .line 1012
    :goto_1ad
    const-wide/16 v14, 0x0

    :goto_1af
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v4, p1

    move-object v1, v11

    move/from16 v2, v16

    move-wide v10, v8

    move-wide/from16 v8, v17

    goto/16 :goto_99

    :cond_1bb
    move-wide/from16 v17, v8

    .line 1080
    :cond_1bd
    add-long v8, v17, v14

    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1081
    iput v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1082
    return-void

    .line 1000
    :cond_1c4
    :goto_1c4
    return-void
.end method
