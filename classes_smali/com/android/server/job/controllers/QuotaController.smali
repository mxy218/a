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
    .registers 11
    .param p1, "service"  # Lcom/android/server/job/JobSchedulerService;

    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 380
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 383
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 386
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 392
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 395
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    .line 398
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 401
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 408
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 426
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    .line 432
    const-wide/32 v4, 0xdbba00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 438
    const-wide/16 v4, 0x7530

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 444
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    .line 450
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 453
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 456
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 463
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 466
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 467
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 475
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$2;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    .line 498
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    const/4 v0, 0x4

    new-array v2, v0, [J

    fill-array-data v2, :array_116

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 535
    new-array v2, v0, [I

    fill-array-data v2, :array_12a

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 549
    new-array v0, v0, [I

    fill-array-data v0, :array_136

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 560
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 1190
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1346
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 1849
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Lcom/android/server/job/controllers/QuotaController$DeleteTimingSessionsFunctor;

    .line 574
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    .line 575
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 576
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    .line 577
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 578
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 579
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 581
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 582
    .local v6, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 585
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 587
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 590
    const/4 v2, 0x1

    :try_start_101
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v2, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10b} :catch_10c

    .line 595
    goto :goto_10d

    .line 593
    :catch_10c
    move-exception v1

    .line 597
    :goto_10d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    .line 598
    return-void

    nop

    :array_116
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
    .end array-data

    :array_12a
    .array-data 4
        0x14
        0x78
        0xc8
        0x30
    .end array-data

    :array_136
    .array-data 4
        0x14
        0xa
        0x8
        0x3
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # I
    .param p1, "x1"  # Ljava/lang/String;

    .line 107
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(J)I
    .registers 3
    .param p0, "x0"  # J

    .line 107
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 107
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCount(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/job/controllers/QuotaController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController;->mInParole:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # I

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/job/controllers/QuotaController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # I

    .line 107
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/job/controllers/QuotaController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # I

    .line 107
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/job/controllers/QuotaController;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"  # Z

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .registers 21
    .param p2, "windowStartElapsed"  # J
    .param p4, "deadSpaceMs"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;JJ)J"
        }
    .end annotation

    .line 888
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    const-wide/16 v0, 0x0

    .line 889
    .local v0, "timeUntilQuotaConsumedMs":J
    move-wide/from16 v2, p2

    .line 890
    .local v2, "start":J
    const/4 v4, 0x0

    move-wide v5, v0

    move-wide/from16 v0, p4

    .end local p4  # "deadSpaceMs":J
    .local v0, "deadSpaceMs":J
    .local v4, "i":I
    .local v5, "timeUntilQuotaConsumedMs":J
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_40

    .line 891
    move-object/from16 v7, p1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 893
    .local v8, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v9, p2

    if-gez v9, :cond_1d

    .line 895
    goto :goto_3d

    .line 896
    :cond_1d
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_2b

    .line 898
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v9, v9, p2

    add-long/2addr v5, v9

    .line 899
    iget-wide v2, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_3d

    .line 903
    :cond_2b
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v9, v2

    .line 904
    .local v9, "diff":J
    cmp-long v11, v9, v0

    if-lez v11, :cond_33

    .line 905
    goto :goto_42

    .line 907
    :cond_33
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v13, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    add-long/2addr v5, v11

    .line 909
    sub-long/2addr v0, v9

    .line 910
    iget-wide v2, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 890
    .end local v8  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v9  # "diff":J
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_40
    move-object/from16 v7, p1

    .line 914
    .end local v4  # "i":I
    :goto_42
    add-long/2addr v5, v0

    .line 915
    move-object v4, p0

    iget-wide v8, v4, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v8, v5, v8

    if-lez v8, :cond_60

    .line 916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculated quota consumed time too high: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JobScheduler.Quota"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_60
    return-wide v5
.end method

.method private getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;

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

    move-result v0

    return v0

    .line 748
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 16
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "standbyBucket"  # I
    .param p4, "refreshStatsIfOld"  # Z

    .line 933
    const/4 v0, 0x4

    if-ne p3, v0, :cond_10

    .line 934
    const-string v0, "JobScheduler.Quota"

    const-string v1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v0

    .line 937
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 938
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v0, :cond_24

    .line 939
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 940
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 942
    :cond_24
    aget-object v1, v0, p3

    .line 943
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v1, :cond_30

    .line 944
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v1, v2

    .line 945
    aput-object v1, v0, p3

    .line 947
    :cond_30
    if-eqz p4, :cond_71

    .line 948
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, v2, p3

    .line 949
    .local v2, "bucketWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v4, v4, p3

    .line 950
    .local v4, "jobCountLimit":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v5, v5, p3

    .line 951
    .local v5, "sessionCountLimit":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 952
    .local v6, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_4e

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v7

    if-nez v7, :cond_68

    :cond_4e
    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 953
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_68

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v7, v7, v2

    if-nez v7, :cond_68

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v7, v4, :cond_68

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v7, v5, :cond_71

    .line 958
    :cond_68
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 959
    iput v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 960
    iput v5, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 961
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 965
    .end local v2  # "bucketWindowSizeMs":J
    .end local v4  # "jobCountLimit":I
    .end local v5  # "sessionCountLimit":I
    .end local v6  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_71
    return-object v1
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "standbyBucket"  # I

    .line 824
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 825
    const-wide/16 v0, 0x0

    return-wide v0

    .line 827
    :cond_6
    nop

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 827
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .registers 8
    .param p1, "stats"  # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

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
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v2

    .line 1235
    .local v2, "isCharging":Z
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
    .param p0, "val"  # J

    .line 248
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private incrementTimingSessionCount(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1138
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1139
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1140
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_1a

    .line 1141
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1142
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1144
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-ge v3, v4, :cond_41

    .line 1145
    aget-object v4, v2, v3

    .line 1146
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_2a

    .line 1147
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1148
    aput-object v4, v2, v3

    .line 1150
    :cond_2a
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_38

    .line 1151
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1152
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1154
    :cond_38
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1144
    .end local v4  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1156
    .end local v3  # "i":I
    :cond_41
    return-void
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;

    .line 737
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 727
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 728
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_b
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 732
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 10
    .param p1, "stats"  # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"  # I

    .line 786
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 787
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_17

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 790
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_18
    if-eqz v2, :cond_23

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_23

    move v3, v4

    :cond_23
    return v3
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 10
    .param p1, "stats"  # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"  # I

    .line 796
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 797
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_17

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 799
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_18
    if-eqz v2, :cond_23

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_23

    move v3, v4

    :cond_23
    return v3
.end method

.method static synthetic lambda$handleNewChargingStateLocked$2(JZLcom/android/server/job/controllers/QuotaController$Timer;)V
    .registers 4
    .param p0, "nowElapsed"  # J
    .param p2, "isCharging"  # Z
    .param p3, "t"  # Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1239
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$1(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 5
    .param p0, "nowElapsed"  # J
    .param p2, "appStats"  # [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1089
    if-eqz p2, :cond_f

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 1091
    aget-object v1, p2, v0

    .line 1092
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v1, :cond_c

    .line 1093
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1090
    .end local v1  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1097
    .end local v0  # "i":I
    :cond_f
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .registers 7

    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1247
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v2

    .line 1248
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_11
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 1249
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1248
    .end local v4  # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1246
    .end local v2  # "userId":I
    .end local v3  # "p":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1253
    .end local v1  # "u":I
    :cond_2a
    if-eqz v0, :cond_31

    .line 1254
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1256
    :cond_31
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(ILjava/lang/String;)Z
    .registers 11
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1265
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1266
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_76

    .line 1271
    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    .line 1272
    .local v1, "realStandbyBucket":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    .line 1273
    .local v2, "realInQuota":Z
    const/4 v3, 0x0

    .line 1274
    .local v3, "changed":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_27
    if-ltz v4, :cond_55

    .line 1275
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1276
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1279
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_52

    .line 1280
    :cond_3b
    if-eqz v1, :cond_49

    .line 1281
    invoke-direct {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    if-ne v1, v7, :cond_49

    .line 1285
    invoke-direct {p0, v6, v2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_52

    .line 1288
    :cond_49
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1274
    .end local v6  # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 1291
    .end local v4  # "i":I
    :cond_55
    if-nez v2, :cond_5b

    .line 1295
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    goto :goto_75

    .line 1297
    :cond_5b
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1298
    .local v4, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v4, :cond_75

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1299
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1301
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1304
    .end local v4  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :cond_75
    :goto_75
    return v3

    .line 1267
    .end local v1  # "realStandbyBucket":I
    .end local v2  # "realInQuota":Z
    .end local v3  # "changed":Z
    :cond_76
    :goto_76
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 1349
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1352
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1353
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1354
    return v0
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 7
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "isWithinQuota"  # Z

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

    move-result v0

    return v0
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"  # I
    .param p1, "packageName"  # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 2812
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 2813
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2807
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$3700(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2808
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 27
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
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
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2672
    .local v3, "token":J
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2674
    .local v5, "mToken":J
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
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3a
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_53

    .line 2680
    const-wide v10, 0x20500000003L

    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 2681
    invoke-virtual {v14, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 2680
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2679
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 2684
    .end local v7  # "i":I
    :cond_53
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v10, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;

    invoke-direct {v10, v0, v2, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$URLEdatPa0Sor76K2xt12wlVxx4;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2709
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_5e
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v10

    if-ge v7, v10, :cond_1fb

    .line 2710
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v10, v7}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v10

    .line 2711
    .local v10, "userId":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_6d
    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v14, v10}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v14

    if-ge v11, v14, :cond_1e5

    .line 2712
    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v14, v7, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v14

    .line 2713
    .local v14, "pkgName":Ljava/lang/String;
    const-wide v8, 0x20b00000005L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2715
    .local v8, "psToken":J
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v15, v7, v11}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v12, 0x10b00000002L

    invoke-virtual {v15, v1, v12, v13, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 2718
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v12, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2719
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v12, :cond_c0

    .line 2720
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .local v13, "j":I
    :goto_a4
    if-ltz v13, :cond_bd

    .line 2721
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2722
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide/from16 v17, v3

    .end local v3  # "token":J
    .local v17, "token":J
    const-wide v2, 0x20b00000003L

    invoke-virtual {v15, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2720
    .end local v15  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v17

    goto :goto_a4

    .end local v17  # "token":J
    .restart local v3  # "token":J
    :cond_bd
    move-wide/from16 v17, v3

    .end local v3  # "token":J
    .restart local v17  # "token":J
    goto :goto_c2

    .line 2719
    .end local v13  # "j":I
    .end local v17  # "token":J
    .restart local v3  # "token":J
    :cond_c0
    move-wide/from16 v17, v3

    .line 2727
    .end local v3  # "token":J
    .restart local v17  # "token":J
    :goto_c2
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2728
    .local v2, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v2, :cond_193

    .line 2729
    const/4 v13, 0x0

    .local v13, "bucketIndex":I
    :goto_cd
    array-length v15, v2

    if-ge v13, v15, :cond_18c

    .line 2730
    aget-object v15, v2, v13

    .line 2731
    .local v15, "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v15, :cond_dc

    .line 2732
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    goto/16 :goto_182

    .line 2734
    :cond_dc
    const-wide v3, 0x20b00000004L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2736
    .local v3, "esToken":J
    move-wide/from16 v19, v5

    .end local v5  # "mToken":J
    .local v19, "mToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2739
    iget-wide v5, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    move/from16 v16, v11

    move-object/from16 v21, v12

    const-wide v11, 0x10300000002L

    .end local v11  # "p":I
    .end local v12  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .local v16, "p":I
    .local v21, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2742
    const-wide v5, 0x10300000003L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2745
    const-wide v5, 0x1050000000eL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2748
    const-wide v5, 0x1050000000fL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2751
    const-wide v5, 0x10300000004L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2754
    const-wide v5, 0x10500000005L

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2757
    iget-wide v5, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v11, 0x10300000006L

    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2760
    const-wide v5, 0x10500000007L

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2763
    const-wide v5, 0x1050000000bL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    const-wide v5, 0x10300000008L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2769
    const-wide v5, 0x10300000009L

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2772
    const-wide v5, 0x1050000000aL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2775
    const-wide v5, 0x1030000000cL

    iget-wide v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2778
    const-wide v5, 0x1050000000dL

    iget v11, v15, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2781
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2729
    .end local v3  # "esToken":J
    .end local v15  # "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :goto_182
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    move-wide/from16 v5, v19

    move-object/from16 v12, v21

    goto/16 :goto_cd

    .end local v16  # "p":I
    .end local v19  # "mToken":J
    .end local v21  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v5  # "mToken":J
    .restart local v11  # "p":I
    .restart local v12  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_18c
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    .end local v5  # "mToken":J
    .end local v11  # "p":I
    .end local v12  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v16  # "p":I
    .restart local v19  # "mToken":J
    .restart local v21  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    goto :goto_199

    .line 2728
    .end local v13  # "bucketIndex":I
    .end local v16  # "p":I
    .end local v19  # "mToken":J
    .end local v21  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v5  # "mToken":J
    .restart local v11  # "p":I
    .restart local v12  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_193
    move-wide/from16 v19, v5

    move/from16 v16, v11

    move-object/from16 v21, v12

    .line 2785
    .end local v5  # "mToken":J
    .end local v11  # "p":I
    .end local v12  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v16  # "p":I
    .restart local v19  # "mToken":J
    .restart local v21  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :goto_199
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v10, v14}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2786
    .local v3, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v3, :cond_1cc

    .line 2787
    const-wide v4, 0x10b00000005L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2789
    .local v4, "alToken":J
    nop

    .line 2790
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v6

    .line 2789
    const-wide v11, 0x10800000001L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2791
    nop

    .line 2793
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    .line 2791
    move-object v6, v2

    move-object v13, v3

    const-wide v2, 0x10300000002L

    .end local v2  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v3  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .local v6, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .local v13, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    invoke-virtual {v1, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2794
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1ce

    .line 2786
    .end local v4  # "alToken":J
    .end local v6  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v13  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .restart local v2  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .restart local v3  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :cond_1cc
    move-object v6, v2

    move-object v13, v3

    .line 2797
    .end local v2  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v3  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .restart local v6  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .restart local v13  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :goto_1ce
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2711
    .end local v6  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v8  # "psToken":J
    .end local v13  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    .end local v14  # "pkgName":Ljava/lang/String;
    .end local v21  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    add-int/lit8 v11, v16, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    const-wide v8, 0x10800000001L

    const-wide v12, 0x10300000006L

    .end local v16  # "p":I
    .restart local v11  # "p":I
    goto/16 :goto_6d

    .end local v17  # "token":J
    .end local v19  # "mToken":J
    .local v3, "token":J
    .restart local v5  # "mToken":J
    :cond_1e5
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move/from16 v16, v11

    .line 2709
    .end local v3  # "token":J
    .end local v5  # "mToken":J
    .end local v10  # "userId":I
    .end local v11  # "p":I
    .restart local v17  # "token":J
    .restart local v19  # "mToken":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    const-wide v8, 0x10800000001L

    const-wide v12, 0x10300000006L

    goto/16 :goto_5e

    .end local v17  # "token":J
    .end local v19  # "mToken":J
    .restart local v3  # "token":J
    .restart local v5  # "mToken":J
    :cond_1fb
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 2801
    .end local v3  # "token":J
    .end local v5  # "mToken":J
    .end local v7  # "u":I
    .restart local v17  # "token":J
    .restart local v19  # "mToken":J
    move-wide/from16 v2, v19

    .end local v19  # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2802
    move-wide/from16 v4, v17

    .end local v17  # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2803
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 12
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
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
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
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

    .local v0, "i":I
    :goto_7d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_9f

    .line 2562
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    .line 2563
    .local v1, "uid":I
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2564
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2565
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2561
    .end local v1  # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 2567
    .end local v0  # "i":I
    :cond_9f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2570
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$LrhE3MR6b_HLbgtFW6XDyRkYhjc;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2601
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2602
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_b3
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_116

    .line 2603
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2604
    .local v1, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_c2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_113

    .line 2605
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2606
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 2607
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2608
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v1, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2609
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_110

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

    .local v6, "j":I
    :goto_f9
    if-ltz v6, :cond_107

    .line 2614
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2615
    .local v7, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2613
    .end local v7  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v6, v6, -0x1

    goto :goto_f9

    .line 2617
    .end local v6  # "j":I
    :cond_107
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2618
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2619
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2604
    .end local v4  # "pkgName":Ljava/lang/String;
    .end local v5  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_110
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 2602
    .end local v1  # "userId":I
    .end local v3  # "p":I
    :cond_113
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 2624
    .end local v0  # "u":I
    :cond_116
    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2626
    const/4 v0, 0x0

    .restart local v0  # "u":I
    :goto_11f
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_16f

    .line 2627
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2628
    .restart local v1  # "userId":I
    const/4 v3, 0x0

    .restart local v3  # "p":I
    :goto_12e
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_16c

    .line 2629
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2630
    .restart local v4  # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 2632
    .local v5, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2634
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14f
    array-length v7, v5

    if-ge v6, v7, :cond_166

    .line 2635
    aget-object v7, v5, v6

    .line 2636
    .local v7, "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v7, :cond_163

    .line 2637
    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2639
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2634
    .end local v7  # "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_163
    add-int/lit8 v6, v6, 0x1

    goto :goto_14f

    .line 2642
    .end local v6  # "i":I
    :cond_166
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2628
    .end local v4  # "pkgName":Ljava/lang/String;
    .end local v5  # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12e

    .line 2626
    .end local v1  # "userId":I
    .end local v3  # "p":I
    :cond_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11f

    .line 2645
    .end local v0  # "u":I
    :cond_16f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2647
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2648
    const-string v0, "In quota alarms:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2650
    const/4 v0, 0x0

    .restart local v0  # "u":I
    :goto_17e
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_1c6

    .line 2651
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 2652
    .restart local v1  # "userId":I
    const/4 v3, 0x0

    .restart local v3  # "p":I
    :goto_18d
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v4

    if-ge v3, v4, :cond_1c3

    .line 2653
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 2654
    .restart local v4  # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 2656
    .local v5, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 2659
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    goto :goto_1c0

    .line 2661
    :cond_1bb
    const-string v6, "NOT WAITING"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    .end local v4  # "pkgName":Ljava/lang/String;
    .end local v5  # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :goto_1c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_18d

    .line 2650
    .end local v1  # "userId":I
    .end local v3  # "p":I
    :cond_1c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_17e

    .line 2665
    .end local v0  # "u":I
    :cond_1c6
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
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "standbyBucket"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 926
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
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
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
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
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 5
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
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

    move-result v2

    .line 805
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 25
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 844
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 845
    .local v9, "nowElapsed":J
    invoke-static {v8, v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 847
    .local v11, "standbyBucket":I
    const/4 v0, 0x4

    if-ne v11, v0, :cond_16

    .line 848
    const-wide/16 v0, 0x0

    return-wide v0

    .line 850
    :cond_16
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 851
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v12, :cond_6e

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_6e

    .line 855
    :cond_28
    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v13

    .line 856
    .local v13, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v14, v9, v0

    .line 857
    .local v14, "startWindowElapsed":J
    const-wide/32 v0, 0x5265c00

    sub-long v16, v9, v0

    .line 858
    .local v16, "startMaxElapsed":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v18, v0, v2

    .line 859
    .local v18, "allowedTimeRemainingMs":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v20, v0, v2

    .line 864
    .local v20, "maxExecutionTimeRemainingMs":J
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 865
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    .line 873
    :cond_55
    nop

    .line 874
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v4

    .line 876
    move-wide v2, v14

    move-wide v7, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 873
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 852
    .end local v13  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v14  # "startWindowElapsed":J
    .end local v16  # "startMaxElapsed":J
    .end local v18  # "allowedTimeRemainingMs":J
    .end local v20  # "maxExecutionTimeRemainingMs":J
    :cond_6e
    :goto_6e
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
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
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
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

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCount(ILjava/lang/String;I)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "count"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1117
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1118
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1119
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_1a

    .line 1120
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1121
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1123
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-ge v3, v4, :cond_40

    .line 1124
    aget-object v4, v2, v3

    .line 1125
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_2a

    .line 1126
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1127
    aput-object v4, v2, v3

    .line 1129
    :cond_2a
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_38

    .line 1130
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1131
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1133
    :cond_38
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1123
    .end local v4  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1135
    .end local v3  # "i":I
    :cond_40
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
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$_TfEfRX3HfrCL4MPpYyPFNwGLtM;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1098
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1104
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v0, :cond_1d

    .line 1105
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1106
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_1d

    .line 1107
    aget-object v4, v0, v3

    .line 1108
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v4, :cond_1a

    .line 1109
    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1106
    .end local v4  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1113
    .end local v1  # "nowElapsed":J
    .end local v3  # "i":I
    :cond_1d
    return-void
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .registers 11
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "standbyBucket"  # I
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

    move-result-object v1

    .line 779
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_34

    .line 780
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 781
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    nop

    .line 779
    :goto_35
    return v0

    .line 775
    .end local v1  # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_36
    :goto_36
    return v2
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    .line 760
    .local v0, "standbyBucket":I
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

    move-result-object v2

    .line 762
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    .line 760
    :goto_26
    return v1
.end method

.method public synthetic lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 8
    .param p1, "predicate"  # Ljava/util/function/Predicate;
    .param p2, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "jobs"  # Landroid/util/ArraySet;

    .line 2571
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 2572
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2573
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
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

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 2595
    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2597
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2571
    .end local v1  # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2599
    .end local v0  # "j":I
    :cond_79
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$4$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 12
    .param p1, "predicate"  # Ljava/util/function/Predicate;
    .param p2, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p3, "jobs"  # Landroid/util/ArraySet;

    .line 2685
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 2686
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2687
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
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
    .local v2, "jsToken":J
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
    .end local v1  # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2  # "jsToken":J
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2707
    .end local v0  # "j":I
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
    .registers 14
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
    .local v2, "earliestEndElapsed":J
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

    add-long/2addr v4, v2

    .line 1219
    .local v4, "nextCleanupElapsed":J
    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_73

    .line 1222
    add-long/2addr v4, v8

    .line 1224
    :cond_73
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1225
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x3

    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v10, "*job.cleanup*"

    move-wide v8, v4

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1227
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_9c

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduled next cleanup for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_9c
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .registers 24
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "standbyBucket"  # I
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
    .local v4, "pkgString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    .line 1370
    .local v5, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v6

    .line 1371
    .local v6, "isUnderJobCountQuota":Z
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    .line 1374
    .local v7, "isUnderTimingSessionCountQuota":Z
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1375
    .local v8, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v9, v9, v11

    const-string v10, "JobScheduler.Quota"

    if-gez v9, :cond_7d

    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v9, v11, v13

    if-gez v9, :cond_7d

    if-eqz v6, :cond_7d

    if-eqz v7, :cond_7d

    .line 1380
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_65

    .line 1381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " even though it already has "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms in its quota."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_65
    if-eqz v8, :cond_71

    .line 1388
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v9, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1390
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1392
    :cond_71
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1393
    return-void

    .line 1396
    :cond_7d
    if-nez v8, :cond_8a

    .line 1397
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    move-object v8, v9

    .line 1398
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v1, v2, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1402
    :cond_8a
    iget-wide v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1403
    .local v11, "inQuotaTimeElapsed":J
    if-nez v6, :cond_9a

    iget v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v9, v13, :cond_9a

    .line 1405
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1408
    :cond_9a
    if-nez v7, :cond_aa

    iget v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v9, v13, :cond_aa

    .line 1411
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-wide v13, v11

    goto :goto_ab

    .line 1421
    :cond_aa
    move-wide v13, v11

    .end local v11  # "inQuotaTimeElapsed":J
    .local v13, "inQuotaTimeElapsed":J
    :goto_ab
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v9

    if-eqz v9, :cond_e2

    .line 1422
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    const-wide/32 v15, 0x2bf20

    sub-long/2addr v11, v15

    cmp-long v9, v13, v11

    if-ltz v9, :cond_e2

    .line 1423
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->getTriggerTimeElapsed()J

    move-result-wide v11

    cmp-long v9, v11, v13

    if-gez v9, :cond_c6

    goto :goto_e2

    .line 1432
    :cond_c6
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_e0

    .line 1433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No need to schedule start alarm for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v11, v13

    goto :goto_10f

    .line 1432
    :cond_e0
    move-wide v11, v13

    goto :goto_10f

    .line 1424
    :cond_e2
    :goto_e2
    sget-boolean v9, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v9, :cond_fa

    .line 1425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling start alarm for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_fa
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x3

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Landroid/os/Handler;

    const-string v15, "*job.quota_check*"

    move-wide/from16 v18, v13

    .end local v13  # "inQuotaTimeElapsed":J
    .local v18, "inQuotaTimeElapsed":J
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1431
    move-wide/from16 v11, v18

    .end local v18  # "inQuotaTimeElapsed":J
    .restart local v11  # "inQuotaTimeElapsed":J
    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1435
    :goto_10f
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"  # Lcom/android/server/job/controllers/JobStatus;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 608
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 612
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_1d

    .line 613
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 614
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 616
    :cond_1d
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 617
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 618
    iget-boolean v3, p0, Lcom/android/server/job/controllers/QuotaController;->mShouldThrottle:Z

    if-eqz v3, :cond_3b

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 620
    .local v3, "isWithinQuota":Z
    invoke-direct {p0, p1, v3}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 621
    if-nez v3, :cond_3a

    .line 622
    nop

    .line 623
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getEffectiveStandbyBucket(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    .line 622
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 625
    .end local v3  # "isWithinQuota":Z
    :cond_3a
    goto :goto_3f

    .line 627
    :cond_3b
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(Z)Z

    .line 629
    :goto_3f
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 8
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"  # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"  # Z

    .line 660
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 661
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 662
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 663
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_1d

    .line 664
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 666
    :cond_1d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 667
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 668
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_32

    .line 669
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_32
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 673
    .end local v0  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v1  # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_37
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 691
    const-string v0, "JobScheduler.Quota"

    if-nez p1, :cond_a

    .line 692
    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 695
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 696
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 698
    .local v2, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
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
    .local v0, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v0, :cond_4a

    .line 708
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 709
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListeners:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 711
    :cond_4a
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->delete(ILjava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 713
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseSetArray;->remove(I)V

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
    .param p1, "userId"  # I

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
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 724
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;

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
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_4d

    .line 639
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is top started job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_47
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 644
    return-void

    .line 647
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 648
    .local v1, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 650
    .local v3, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v3, :cond_6a

    .line 651
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;)V

    move-object v3, v4

    .line 652
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 654
    :cond_6a
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 655
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "session"  # Lcom/android/server/job/controllers/QuotaController$TimingSession;
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
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-nez v1, :cond_18

    .line 1164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 1165
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :cond_18
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1172
    .end local v1  # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 34
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "stats"  # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
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
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 979
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 980
    .local v5, "nowElapsed":J
    const-wide/32 v7, 0x5265c00

    add-long v9, v5, v7

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 981
    if-eqz v4, :cond_73

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 982
    nop

    .line 983
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 984
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v9

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 987
    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 988
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5e

    .line 989
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 992
    :cond_5e
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_73

    .line 993
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    add-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 998
    :cond_73
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 999
    .local v9, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v9, :cond_1e1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_89

    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    goto/16 :goto_1e5

    .line 1003
    :cond_89
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    .line 1004
    .local v10, "startWindowElapsed":J
    sub-long v12, v5, v7

    .line 1005
    .local v12, "startMaxElapsed":J
    const/4 v14, 0x0

    .line 1008
    .local v14, "sessionCountInWindow":I
    const-wide v15, 0x7fffffffffffffffL

    .line 1011
    .local v15, "emptyTimeMs":J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 1012
    .local v7, "loopStart":I
    move v8, v7

    move-wide/from16 v28, v15

    move/from16 v16, v14

    move-wide/from16 v14, v28

    .end local v15  # "emptyTimeMs":J
    .local v8, "i":I
    .local v14, "emptyTimeMs":J
    .local v16, "sessionCountInWindow":I
    :goto_a2
    if-ltz v8, :cond_1d0

    .line 1013
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1016
    .local v1, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    .end local v4  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5  # "nowElapsed":J
    .local v17, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v20, "nowElapsed":J
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_143

    .line 1018
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_cb

    .line 1019
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1020
    .local v4, "start":J
    move-wide/from16 v22, v4

    .end local v4  # "start":J
    .local v22, "start":J
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v10

    .line 1021
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v14, v4

    move-wide/from16 v4, v22

    .end local v14  # "emptyTimeMs":J
    .local v4, "emptyTimeMs":J
    goto :goto_ce

    .line 1025
    .end local v4  # "emptyTimeMs":J
    .end local v22  # "start":J
    .restart local v14  # "emptyTimeMs":J
    :cond_cb
    move-wide v4, v10

    .line 1026
    .local v4, "start":J
    const-wide/16 v14, 0x0

    .line 1029
    :goto_ce
    move-wide/from16 v22, v10

    .end local v10  # "startWindowElapsed":J
    .local v22, "startWindowElapsed":J
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v24, v14

    .end local v14  # "emptyTimeMs":J
    .local v24, "emptyTimeMs":J
    iget-wide v14, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v14, v4

    add-long/2addr v10, v14

    iput-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1030
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v6, v10

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1031
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v6, v10, v14

    if-ltz v6, :cond_fd

    .line 1032
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v14, v4

    move-wide/from16 v26, v4

    .end local v4  # "start":J
    .local v26, "start":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v14, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_ff

    .line 1031
    .end local v26  # "start":J
    .restart local v4  # "start":J
    :cond_fd
    move-wide/from16 v26, v4

    .line 1036
    .end local v4  # "start":J
    .restart local v26  # "start":J
    :goto_ff
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_112

    .line 1037
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v14

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1040
    :cond_112
    if-eq v8, v7, :cond_12b

    add-int/lit8 v4, v8, 0x1

    .line 1041
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v4, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_128

    goto :goto_12b

    :cond_128
    move-wide/from16 v14, v24

    goto :goto_145

    .line 1044
    :cond_12b
    :goto_12b
    add-int/lit8 v4, v16, 0x1

    .line 1046
    .end local v16  # "sessionCountInWindow":I
    .local v4, "sessionCountInWindow":I
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v4, v5, :cond_13e

    .line 1047
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v14

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1054
    .end local v26  # "start":J
    :cond_13e
    move/from16 v16, v4

    move-wide/from16 v14, v24

    goto :goto_145

    .line 1016
    .end local v4  # "sessionCountInWindow":I
    .end local v22  # "startWindowElapsed":J
    .end local v24  # "emptyTimeMs":J
    .restart local v10  # "startWindowElapsed":J
    .restart local v14  # "emptyTimeMs":J
    .restart local v16  # "sessionCountInWindow":I
    :cond_143
    move-wide/from16 v22, v10

    .line 1054
    .end local v10  # "startWindowElapsed":J
    .restart local v22  # "startWindowElapsed":J
    :goto_145
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_186

    .line 1055
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 v24, v7

    .end local v7  # "loopStart":I
    .local v24, "loopStart":I
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v6

    add-long/2addr v4, v10

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1057
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1058
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1059
    .end local v14  # "emptyTimeMs":J
    .local v4, "emptyTimeMs":J
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_181

    .line 1060
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v10, v14

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v10, v14

    const-wide/32 v14, 0x5265c00

    add-long/2addr v10, v14

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1012
    .end local v1  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_181
    move-wide v14, v4

    const-wide/32 v18, 0x5265c00

    goto :goto_1bf

    .line 1064
    .end local v4  # "emptyTimeMs":J
    .end local v24  # "loopStart":I
    .restart local v1  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .restart local v7  # "loopStart":I
    .restart local v14  # "emptyTimeMs":J
    :cond_186
    move/from16 v24, v7

    .end local v7  # "loopStart":I
    .restart local v24  # "loopStart":I
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_1cd

    .line 1067
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1068
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1069
    const-wide/16 v4, 0x0

    .line 1070
    .end local v14  # "emptyTimeMs":J
    .restart local v4  # "emptyTimeMs":J
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_1bb

    .line 1071
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v10, v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v10, v14

    const-wide/32 v18, 0x5265c00

    add-long v10, v10, v18

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1be

    .line 1070
    :cond_1bb
    const-wide/32 v18, 0x5265c00

    .line 1012
    .end local v1  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_1be
    move-wide v14, v4

    .end local v4  # "emptyTimeMs":J
    .restart local v14  # "emptyTimeMs":J
    :goto_1bf
    add-int/lit8 v8, v8, -0x1

    move/from16 v1, p1

    move-object/from16 v4, v17

    move-wide/from16 v5, v20

    move-wide/from16 v10, v22

    move/from16 v7, v24

    goto/16 :goto_a2

    .line 1064
    .restart local v1  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_1cd
    move/from16 v1, v16

    goto :goto_1da

    .line 1012
    .end local v1  # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v17  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v20  # "nowElapsed":J
    .end local v22  # "startWindowElapsed":J
    .end local v24  # "loopStart":I
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5  # "nowElapsed":J
    .restart local v7  # "loopStart":I
    .restart local v10  # "startWindowElapsed":J
    :cond_1d0
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    move/from16 v24, v7

    move-wide/from16 v22, v10

    .end local v4  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5  # "nowElapsed":J
    .end local v7  # "loopStart":I
    .end local v10  # "startWindowElapsed":J
    .restart local v17  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v20  # "nowElapsed":J
    .restart local v22  # "startWindowElapsed":J
    .restart local v24  # "loopStart":I
    move/from16 v1, v16

    .line 1080
    .end local v8  # "i":I
    .end local v16  # "sessionCountInWindow":I
    .local v1, "sessionCountInWindow":I
    :goto_1da
    add-long v5, v20, v14

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1081
    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1082
    return-void

    .line 999
    .end local v1  # "sessionCountInWindow":I
    .end local v12  # "startMaxElapsed":J
    .end local v14  # "emptyTimeMs":J
    .end local v17  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v20  # "nowElapsed":J
    .end local v22  # "startWindowElapsed":J
    .end local v24  # "loopStart":I
    .restart local v4  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5  # "nowElapsed":J
    :cond_1e1
    move-object/from16 v17, v4

    move-wide/from16 v20, v5

    .line 1000
    .end local v4  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5  # "nowElapsed":J
    .restart local v17  # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v20  # "nowElapsed":J
    :goto_1e5
    return-void
.end method
