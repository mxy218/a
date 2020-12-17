.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCountsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobSchedulerService$MaxJobCounts;,
        Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field private static final ENFORCE_MAX_JOBS:Z = true

.field public static final FREQUENT_INDEX:I = 0x2

.field static final HEARTBEAT_TAG:Ljava/lang/String; = "*job.heartbeat*"

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field private static final MAX_JOBS_PER_APP:I = 0x64

.field static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field private static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field public static final RARE_INDEX:I = 0x3

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field static final mEnqueueTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static sElapsedRealtimeClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sSystemClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sUptimeMillisClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTracker;

.field final mBackingUpUids:Landroid/util/SparseIntArray;

.field private final mBatteryController:Lcom/android/server/job/controllers/BatteryController;

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field mHeartbeat:J

.field final mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

.field volatile mInParole:Z

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLastHeartbeatTime:J

.field final mLastJobHeartbeats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field final mNextBucketHeartbeat:[J

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private mThermalConstraint:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mThermalService:Landroid/os/IThermalService;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 140
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 141
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 151
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillisClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 778
    sget-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 1304
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 202
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 232
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 237
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 246
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_17c

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 248
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    .line 273
    new-instance v0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    .line 797
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 923
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 993
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1351
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1371
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 2016
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 2119
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1306
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1307
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1308
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1307
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1310
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1311
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1312
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1313
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1315
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1318
    new-instance v0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1319
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1320
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1323
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1326
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1330
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    .line 1334
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    new-instance v0, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1336
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1340
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v0

    if-nez v0, :cond_17a

    .line 1346
    const-string v0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1349
    :cond_17a
    return-void

    nop

    :array_17c
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x7fffffffffffffffL
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/server/job/JobSchedulerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Z

    .line 137
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;

    .line 137
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;

    .line 137
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;

    .line 137
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"  # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "x3"  # Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;

    .line 137
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"  # Lcom/android/server/job/controllers/JobStatus;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method static addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 786
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 787
    .local v0, "where":I
    if-gez v0, :cond_7

    .line 788
    not-int v0, v0

    .line 790
    :cond_7
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 791
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 5
    .param p1, "curPriority"  # I
    .param p2, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2414
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1f

    .line 2415
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 2416
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_15

    .line 2417
    add-int/lit8 p1, p1, -0x50

    goto :goto_1f

    .line 2418
    :cond_15
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1f

    .line 2419
    add-int/lit8 p1, p1, -0x28

    .line 2422
    .end local v0  # "factor":F
    :cond_1f
    :goto_1f
    return p1
.end method

.method private areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2209
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 2210
    .local v0, "sourceStarted":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 2211
    return v0

    .line 2213
    :cond_15
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .registers 7
    .param p1, "cancelled"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"  # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "reason"  # Ljava/lang/String;

    .line 1195
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CANCEL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_1e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1197
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1200
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1203
    :cond_36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z

    .line 1205
    if-eqz p2, :cond_5b

    .line 1206
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking replacement job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_58
    invoke-direct {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1209
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1210
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .registers 5

    .line 1121
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1122
    .local v0, "umi":Landroid/os/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    :try_start_b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfNonUsers([I)V

    .line 1124
    monitor-exit v1

    .line 1125
    return-void

    .line 1124
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v2
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 3219
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    return-void
.end method

.method private evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2358
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2359
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2360
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2358
    .end local v1  # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2362
    .end local v0  # "c":I
    :cond_18
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 918
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 919
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 920
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    return-object v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2334
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2335
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2336
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    .line 2334
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_69

    .line 2339
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    nop

    .line 2341
    const-string v1, "JobScheduler"

    if-nez v0, :cond_3b

    .line 2342
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_39
    const/4 v1, 0x0

    return v1

    .line 2350
    :cond_3b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 2351
    .local v2, "appIsBad":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_66

    if-eqz v2, :cond_66

    .line 2352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App is bad for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " so not runnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_66
    xor-int/lit8 v1, v2, 0x1

    return v1

    .line 2337
    .end local v0  # "service":Landroid/content/pm/ServiceInfo;
    .end local v2  # "appIsBad":Z
    :catch_69
    move-exception v0

    .line 2338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 1535
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1536
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1537
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1538
    const/4 v3, 0x1

    return v3

    .line 1534
    .end local v1  # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2  # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1541
    .end local v0  # "i":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1940
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1941
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1940
    :goto_15
    return v0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 16
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2226
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 2228
    .local v0, "jobReady":Z
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_2b

    .line 2229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ready="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_2b
    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    NOT READY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_4e
    return v1

    .line 2243
    :cond_4f
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    .line 2245
    .local v4, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2247
    .local v5, "userStarted":Z
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_83

    .line 2248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_83
    if-eqz v4, :cond_1e7

    if-nez v5, :cond_89

    goto/16 :goto_1e7

    .line 2258
    :cond_89
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 2259
    return v1

    .line 2262
    :cond_90
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2263
    .local v6, "jobPending":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    .line 2265
    .local v7, "jobActive":Z
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v9, " active="

    if-eqz v8, :cond_c4

    .line 2266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pending="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_c4
    if-nez v6, :cond_1e6

    if-eqz v7, :cond_ca

    goto/16 :goto_1e6

    .line 2277
    :cond_ca
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v8, :cond_1e1

    .line 2284
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_10c

    .line 2285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parole="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " exempt="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2285
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_10c
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    if-nez v2, :cond_1e1

    iget-boolean v2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v2, :cond_1e1

    .line 2291
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-nez v2, :cond_1e1

    .line 2292
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v2

    .line 2293
    .local v2, "bucket":I
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_150

    .line 2294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  bucket="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " heartbeat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v9, v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_150
    iget-wide v8, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v10, v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_1e1

    .line 2302
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    .line 2303
    .local v8, "appLastRan":J
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v10, v10

    if-ge v2, v10, :cond_19b

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    cmp-long v12, v10, v8

    if-lez v12, :cond_178

    iget-object v12, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v12, v12, v2

    int-to-long v12, v12

    add-long/2addr v12, v8

    cmp-long v10, v10, v12

    if-gez v10, :cond_178

    goto :goto_19b

    .line 2316
    :cond_178
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v1, :cond_1e1

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bucket deferred job aged into runnability at "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e1

    .line 2306
    :cond_19b
    :goto_19b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1e0

    .line 2307
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_1d7

    .line 2308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bucket deferral: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v11, v11, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v11, v11, v2

    int-to-long v11, v11

    add-long/2addr v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_1d7
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 2314
    :cond_1e0
    return v1

    .line 2327
    .end local v2  # "bucket":I
    .end local v8  # "appLastRan":J
    :cond_1e1
    :goto_1e1
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1

    .line 2274
    :cond_1e6
    :goto_1e6
    return v1

    .line 2255
    .end local v6  # "jobPending":Z
    .end local v7  # "jobActive":Z
    :cond_1e7
    :goto_1e7
    return v1
.end method

.method private isUidActive(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 990
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$AauD0it1BcgWldVm_V1m2Jo7_Zc(Lcom/android/server/job/JobSchedulerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dumpInternal$3(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterUidFinal"  # I
    .param p1, "js"  # Lcom/android/server/job/controllers/JobStatus;

    .line 3249
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3250
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3249
    :goto_1b
    return v0
.end method

.method static synthetic lambda$dumpInternalProto$4(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterUidFinal"  # I
    .param p1, "js"  # Lcom/android/server/job/controllers/JobStatus;

    .line 3444
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3445
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3444
    :goto_1b
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p0, "o1"  # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "o2"  # Lcom/android/server/job/controllers/JobStatus;

    .line 779
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 780
    const/4 v0, -0x1

    return v0

    .line 782
    :cond_a
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .registers 3

    .line 2122
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 2125
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2126
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2127
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcess()V

    .line 2129
    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .registers 5

    .line 1968
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_c

    .line 1969
    const-string/jumbo v0, "queuing all ready jobs for execution:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1972
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1973
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 1974
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1975
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->postProcess()V

    .line 1977
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 1978
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1979
    .local v0, "queuedJobs":I
    if-nez v0, :cond_37

    .line 1980
    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 1982
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    .end local v0  # "queuedJobs":I
    :cond_4b
    :goto_4b
    return-void
.end method

.method private static sortJobs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3227
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3240
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .registers 8
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "userId"  # I
    .param p2, "elapsedNow"  # J

    .line 2631
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2633
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v0, :cond_f

    .line 2634
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_10

    .line 2635
    :cond_f
    const/4 v1, 0x0

    :goto_10
    nop

    .line 2637
    .local v1, "bucket":I
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2639
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_3a

    .line 2640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standby bucket index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_3a
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .registers 2
    .param p0, "bucket"  # I

    .line 2622
    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    const/4 v0, 0x4

    return v0

    .line 2623
    :cond_6
    const/16 v0, 0x1e

    if-le p0, v0, :cond_c

    const/4 v0, 0x3

    return v0

    .line 2624
    :cond_c
    const/16 v0, 0x14

    if-le p0, v0, :cond_12

    const/4 v0, 0x2

    return v0

    .line 2625
    :cond_12
    const/16 v0, 0xa

    if-le p0, v0, :cond_18

    const/4 v0, 0x1

    return v0

    .line 2626
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_1c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1484
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1485
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_4c

    .line 1486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 1487
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1488
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_46

    .line 1489
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1491
    :cond_46
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1486
    .end local v2  # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1494
    .end local v1  # "i":I
    :cond_4c
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z
    .registers 9
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"  # I
    .param p3, "debugReason"  # Ljava/lang/String;

    .line 1517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1518
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1519
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1520
    .local v2, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1521
    invoke-virtual {v1, p2, p3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1522
    const/4 v3, 0x1

    return v3

    .line 1517
    .end local v1  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2  # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1525
    .end local v0  # "i":I
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private stopNonReadyActiveJobsLocked()V
    .registers 6

    .line 1945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1946
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1947
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1948
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-nez v2, :cond_18

    .line 1949
    goto :goto_31

    .line 1951
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1952
    const/4 v3, 0x1

    const-string v4, "cancelled due to unsatisfied constraints"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    goto :goto_31

    .line 1955
    :cond_25
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1956
    const/4 v3, 0x5

    const-string v4, "cancelled due to thermal condition"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1945
    .end local v1  # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2  # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1961
    .end local v0  # "i":I
    :cond_34
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 8
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"  # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "writeBack"  # Z

    .line 1503
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 1507
    .local v0, "removed":Z
    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2b

    .line 1508
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1509
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1510
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1508
    .end local v2  # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1513
    .end local v1  # "i":I
    :cond_2b
    return v0
.end method


# virtual methods
.method advanceHeartbeatLocked(J)V
    .registers 11
    .param p1, "beatsElapsed"  # J

    .line 2152
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-nez v0, :cond_7

    .line 2153
    return-void

    .line 2155
    :cond_7
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 2156
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_30

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advancing standby heartbeat by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_30
    const/4 v0, 0x0

    .line 2165
    .local v0, "didAdvanceBucket":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_32
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_80

    .line 2167
    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-ltz v3, :cond_42

    .line 2168
    const/4 v0, 0x1

    .line 2170
    :cond_42
    :goto_42
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v6, v5, v2

    cmp-long v3, v3, v6

    if-lez v3, :cond_59

    .line 2171
    aget-wide v3, v5, v2

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v3, v6

    aput-wide v3, v5, v2

    goto :goto_42

    .line 2173
    :cond_59
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_7d

    .line 2174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Bucket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " next heartbeat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 2179
    .end local v2  # "i":I
    :cond_80
    if-eqz v0, :cond_94

    .line 2180
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_8b

    .line 2181
    const-string v2, "Hit bucket boundary; reevaluating job runnability"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_8b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2185
    :cond_94
    return-void
.end method

.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2372
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2373
    .local v0, "jobExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 2375
    .local v1, "userStarted":Z
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 2376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areComponentsInPlaceLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_38
    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    if-nez v1, :cond_3e

    goto :goto_4a

    .line 2386
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobThermalConstrainedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2387
    return v2

    .line 2397
    :cond_45
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    return v2

    .line 2383
    :cond_4a
    :goto_4a
    return v2
.end method

.method public cancelJob(III)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "jobId"  # I
    .param p3, "callingUid"  # I

    .line 1177
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1179
    .local v1, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_30

    .line 1180
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() called by app, callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1184
    :cond_30
    if-eqz v1, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    monitor-exit v0

    return v2

    .line 1185
    .end local v1  # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "reason"  # Ljava/lang/String;

    .line 1128
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1129
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-void

    .line 1132
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1133
    :try_start_13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1134
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_38

    .line 1135
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1136
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1137
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1134
    .end local v3  # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 1140
    .end local v1  # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2  # "i":I
    :cond_38
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public cancelJobsForUid(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 1151
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_d

    .line 1152
    const-string v1, "JobScheduler"

    const-string v2, "Can\'t cancel all jobs for system uid"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return v0

    .line 1156
    :cond_d
    const/4 v1, 0x0

    .line 1157
    .local v1, "jobsCanceled":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1158
    :try_start_11
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v3

    .line 1159
    .local v3, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    nop

    .local v0, "i":I
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2c

    .line 1160
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1161
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1162
    const/4 v1, 0x1

    .line 1159
    .end local v4  # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1164
    .end local v0  # "i":I
    .end local v3  # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2c
    monitor-exit v2

    .line 1165
    return v1

    .line 1164
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method cancelJobsForUser(I)V
    .registers 8
    .param p1, "userHandle"  # I

    .line 1111
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 1113
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 1114
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1115
    .local v3, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v4, 0x0

    const-string/jumbo v5, "user removed"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1113
    .end local v3  # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1117
    .end local v1  # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2  # "i":I
    :cond_20
    monitor-exit v0

    .line 1118
    return-void

    .line 1117
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 26
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "filterUid"  # I

    .line 3243
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 3244
    .local v9, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3245
    .local v10, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3246
    .local v12, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3248
    .local v14, "nowUptime":J
    new-instance v6, Lcom/android/server/job/-$$Lambda$JobSchedulerService$e8zIA2HHN2tnGMuc6TZ2xWw_c20;

    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v6, v9}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$e8zIA2HHN2tnGMuc6TZ2xWw_c20;-><init>(I)V

    .line 3252
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3253
    :try_start_22
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3254
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_46e

    if-eqz v2, :cond_50

    :try_start_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3255
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3256
    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3257
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_44

    .line 3258
    nop

    .end local v2  # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_2d

    .line 3433
    :catchall_44
    move-exception v0

    move-object/from16 v22, v7

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v6

    goto/16 :goto_478

    .line 3259
    :cond_50
    :try_start_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3261
    const-string v0, "  Heartbeat:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const-string v0, "    Current:    "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3263
    const-string v0, "    Next"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v0, "      ACTIVE:   "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v16, 0x0

    aget-wide v2, v0, v16

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3265
    const-string v0, "      WORKING:  "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v17, 0x1

    aget-wide v2, v0, v17

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3266
    const-string v0, "      FREQUENT: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3267
    const-string v0, "      RARE:     "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3268
    const-string v0, "    Last heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3269
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3270
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3271
    const-string v0, "    Next heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3272
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v2, v4

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3274
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3275
    const-string v0, "    In parole?: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3276
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3277
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3278
    const-string v0, "    In thermal throttling?: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3279
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3280
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3281
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3284
    const-string v0, "Registered "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3285
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3286
    const-string v0, " jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_10c
    .catchall {:try_start_50 .. :try_end_10c} :catchall_46e

    if-lez v0, :cond_20f

    .line 3288
    :try_start_10e
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    .line 3289
    .local v18, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static/range {v18 .. v18}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3290
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_11f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fd

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v5, v0

    .line 3291
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v0, "  JOB #"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v0, ": "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    invoke-interface {v6, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    .line 3296
    goto :goto_11f

    .line 3299
    :cond_147
    const-string v4, "    "
    :try_end_149
    .catchall {:try_start_10e .. :try_end_149} :catchall_203

    const/4 v0, 0x1

    move-object v2, v5

    move-object/from16 v3, p1

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v5  # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v20, "now":J
    move v5, v0

    move-object v11, v6

    move-object/from16 v22, v7

    .end local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v6, v12

    :try_start_155
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3300
    const-string v0, "    Last run heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3301
    invoke-virtual {v1, v10}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3302
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3304
    const-string v0, "    Ready: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3305
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3306
    const-string v0, " (job="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3307
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3308
    const-string v0, " user="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3309
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3310
    const-string v0, " !pending="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3311
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b

    move/from16 v0, v17

    goto :goto_19d

    :cond_19b
    move/from16 v0, v16

    :goto_19d
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3312
    const-string v0, " !active="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3313
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1ae

    move/from16 v0, v17

    goto :goto_1b0

    :cond_1ae
    move/from16 v0, v16

    :goto_1b0
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3314
    const-string v0, " !backingup="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3315
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1c7

    move/from16 v0, v17

    goto :goto_1c9

    :cond_1c7
    move/from16 v0, v16

    :goto_1c9
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3316
    const-string v0, " comp="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_1d1
    .catchall {:try_start_155 .. :try_end_1d1} :catchall_25e

    .line 3317
    const/4 v2, 0x0

    .line 3319
    .local v2, "componentPresent":Z
    :try_start_1d2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3320
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 3322
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    .line 3319
    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1e4
    .catch Landroid/os/RemoteException; {:try_start_1d2 .. :try_end_1e4} :catch_1ed
    .catchall {:try_start_1d2 .. :try_end_1e4} :catchall_25e

    if-eqz v0, :cond_1e9

    move/from16 v0, v17

    goto :goto_1eb

    :cond_1e9
    move/from16 v0, v16

    :goto_1eb
    move v2, v0

    .line 3324
    goto :goto_1ee

    .line 3323
    :catch_1ed
    move-exception v0

    .line 3325
    :goto_1ee
    :try_start_1ee
    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3326
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f6
    .catchall {:try_start_1ee .. :try_end_1f6} :catchall_25e

    .line 3327
    .end local v2  # "componentPresent":Z
    .end local v10  # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object v6, v11

    move-wide/from16 v10, v20

    move-object/from16 v7, v22

    goto/16 :goto_11f

    .line 3290
    .end local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20  # "now":J
    .restart local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "now":J
    :cond_1fd
    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    .line 3328
    .end local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10  # "now":J
    .end local v18  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20  # "now":J
    goto :goto_219

    .line 3433
    .end local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20  # "now":J
    .restart local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10  # "now":J
    :catchall_203
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    move/from16 v16, v9

    move/from16 v9, p2

    .end local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10  # "now":J
    .restart local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20  # "now":J
    goto/16 :goto_478

    .line 3329
    .end local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v20  # "now":J
    .restart local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10  # "now":J
    :cond_20f
    move-object/from16 v22, v7

    move-wide/from16 v20, v10

    move-object v11, v6

    .end local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10  # "now":J
    .restart local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v20  # "now":J
    :try_start_214
    const-string v0, "  None."

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    :goto_219
    move/from16 v0, v16

    .local v0, "i":I
    :goto_21b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_221
    .catchall {:try_start_214 .. :try_end_221} :catchall_468

    if-ge v0, v2, :cond_265

    .line 3332
    :try_start_223
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3335
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2, v8, v11}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3336
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_25b
    .catchall {:try_start_223 .. :try_end_25b} :catchall_25e

    .line 3331
    add-int/lit8 v0, v0, 0x1

    goto :goto_21b

    .line 3433
    .end local v0  # "i":I
    :catchall_25e
    move-exception v0

    move/from16 v16, v9

    move/from16 v9, p2

    goto/16 :goto_478

    .line 3338
    :cond_265
    :try_start_265
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3339
    const-string v0, "Uid priority overrides:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    move/from16 v0, v16

    .restart local v0  # "i":I
    :goto_26f
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_275
    .catchall {:try_start_265 .. :try_end_275} :catchall_468

    const/4 v10, -0x1

    if-ge v0, v2, :cond_2a3

    .line 3341
    :try_start_278
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3342
    .local v2, "uid":I
    if-eq v9, v10, :cond_286

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v9, v3, :cond_2a0

    .line 3343
    :cond_286
    const-string v3, "  "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3344
    const-string v3, ": "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V
    :try_end_2a0
    .catchall {:try_start_278 .. :try_end_2a0} :catchall_25e

    .line 3340
    .end local v2  # "uid":I
    :cond_2a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_26f

    .line 3347
    .end local v0  # "i":I
    :cond_2a3
    :try_start_2a3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0
    :try_end_2a9
    .catchall {:try_start_2a3 .. :try_end_2a9} :catchall_468

    if-lez v0, :cond_2e7

    .line 3348
    :try_start_2ab
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3349
    const-string v0, "Backing up uids:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    const/4 v0, 0x1

    .line 3351
    .local v0, "first":Z
    move/from16 v2, v16

    .local v2, "i":I
    :goto_2b6
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e4

    .line 3352
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3353
    .local v3, "uid":I
    if-eq v9, v10, :cond_2cc

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v9, v4, :cond_2e1

    .line 3354
    :cond_2cc
    if-eqz v0, :cond_2d5

    .line 3355
    const-string v4, "  "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3356
    const/4 v0, 0x0

    goto :goto_2da

    .line 3358
    :cond_2d5
    const-string v4, ", "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3360
    :goto_2da
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    .end local v3  # "uid":I
    :cond_2e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b6

    .line 3363
    .end local v2  # "i":I
    :cond_2e4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_2e7
    .catchall {:try_start_2ab .. :try_end_2e7} :catchall_25e

    .line 3365
    .end local v0  # "first":Z
    :cond_2e7
    :try_start_2e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3366
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 3367
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3368
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2fc
    .catchall {:try_start_2e7 .. :try_end_2fc} :catchall_468

    if-eqz v0, :cond_301

    .line 3369
    :try_start_2fe
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_301
    .catchall {:try_start_2fe .. :try_end_301} :catchall_25e

    .line 3371
    :cond_301
    :try_start_301
    const-string v0, "Pending queue:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3372
    move/from16 v0, v16

    .local v0, "i":I
    :goto_308
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_30e
    .catchall {:try_start_301 .. :try_end_30e} :catchall_468

    if-ge v0, v2, :cond_366

    .line 3373
    :try_start_310
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object v6, v2

    .line 3374
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  Pending #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3375
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    const-string v4, "    "

    const/4 v5, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v10, v6

    .end local v6  # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3377
    invoke-virtual {v1, v10}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3378
    .local v2, "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3379
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    const-string v3, "    Tag: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    const-string v3, "    Enq: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3383
    iget-wide v3, v10, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3384
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_362
    .catchall {:try_start_310 .. :try_end_362} :catchall_25e

    .line 3372
    .end local v2  # "priority":I
    .end local v10  # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    const/4 v10, -0x1

    goto :goto_308

    .line 3386
    .end local v0  # "i":I
    :cond_366
    :try_start_366
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3387
    const-string v0, "Active jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3388
    move/from16 v0, v16

    .restart local v0  # "i":I
    :goto_370
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_425

    .line 3389
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    move-object v10, v2

    .line 3390
    .local v10, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string v2, "  Slot #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2
    :try_end_392
    .catchall {:try_start_366 .. :try_end_392} :catchall_468

    move-object v6, v2

    .line 3392
    .restart local v6  # "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v6, :cond_3ba

    .line 3393
    :try_start_395
    iget-object v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_3b1

    .line 3394
    const-string/jumbo v2, "inactive since "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3395
    iget-wide v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3396
    const-string v2, ", stopped because: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3397
    iget-object v2, v10, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v16, v9

    goto :goto_41b

    .line 3399
    :cond_3b1
    const-string/jumbo v2, "inactive"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b7
    .catchall {:try_start_395 .. :try_end_3b7} :catchall_25e

    .line 3401
    move/from16 v16, v9

    goto :goto_41b

    .line 3403
    :cond_3ba
    :try_start_3ba
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3404
    const-string v2, "    Running for: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v2

    sub-long v2, v12, v2

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3406
    const-string v2, ", timeout at: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3408
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3409
    const-string v4, "    "
    :try_end_3e1
    .catchall {:try_start_3ba .. :try_end_3e1} :catchall_468

    const/4 v5, 0x0

    move-object v2, v6

    move-object/from16 v3, p1

    move/from16 v16, v9

    move-object v9, v6

    .end local v6  # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v16, "filterUidFinal":I
    move-wide v6, v12

    :try_start_3e9
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3410
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3411
    .restart local v2  # "priority":I
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3412
    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3414
    const-string v3, "    Active at "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3415
    iget-wide v3, v9, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3416
    const-string v3, ", pending for "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3417
    iget-wide v3, v9, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v5, v9, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3418
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_41b
    .catchall {:try_start_3e9 .. :try_end_41b} :catchall_421

    .line 3388
    .end local v2  # "priority":I
    .end local v9  # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10  # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_41b
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v16

    goto/16 :goto_370

    .line 3433
    .end local v0  # "i":I
    :catchall_421
    move-exception v0

    move/from16 v9, p2

    goto :goto_478

    .line 3388
    .end local v16  # "filterUidFinal":I
    .restart local v0  # "i":I
    .local v9, "filterUidFinal":I
    :cond_425
    move/from16 v16, v9

    .line 3421
    .end local v0  # "i":I
    .end local v9  # "filterUidFinal":I
    .restart local v16  # "filterUidFinal":I
    move/from16 v9, p2

    const/4 v0, -0x1

    if-ne v9, v0, :cond_445

    .line 3422
    :try_start_42c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3423
    const-string/jumbo v0, "mReadyToRock="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3424
    const-string/jumbo v0, "mReportedActive="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3426
    :cond_445
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3428
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v3, p1

    move-wide/from16 v4, v20

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;JJ)V

    .line 3430
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3431
    const-string v0, "PersistStats: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3432
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3433
    monitor-exit v22
    :try_end_464
    .catchall {:try_start_42c .. :try_end_464} :catchall_47a

    .line 3434
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3435
    return-void

    .line 3433
    .end local v16  # "filterUidFinal":I
    .restart local v9  # "filterUidFinal":I
    :catchall_468
    move-exception v0

    move/from16 v16, v9

    move/from16 v9, p2

    .end local v9  # "filterUidFinal":I
    .restart local v16  # "filterUidFinal":I
    goto :goto_478

    .end local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v16  # "filterUidFinal":I
    .end local v20  # "now":J
    .local v6, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v9  # "filterUidFinal":I
    .local v10, "now":J
    :catchall_46e
    move-exception v0

    move-object/from16 v22, v7

    move/from16 v16, v9

    move-wide/from16 v20, v10

    move/from16 v9, p2

    move-object v11, v6

    .end local v6  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v9  # "filterUidFinal":I
    .end local v10  # "now":J
    .restart local v11  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16  # "filterUidFinal":I
    .restart local v20  # "now":J
    :goto_478
    :try_start_478
    monitor-exit v22
    :try_end_479
    .catchall {:try_start_478 .. :try_end_479} :catchall_47a

    throw v0

    :catchall_47a
    move-exception v0

    goto :goto_478
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .registers 34
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "filterUid"  # I

    .line 3438
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 3439
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 3440
    .local v12, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 3441
    .local v13, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 3442
    .local v15, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    .line 3443
    .local v17, "nowUptime":J
    new-instance v10, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;

    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v10, v12}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$rARZcsrvtM2sYbF4SrEE2BXDQ3U;-><init>(I)V

    .line 3448
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3449
    const-wide v5, 0x10b00000001L

    :try_start_2d
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3450
    .local v3, "settingsToken":J
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3451
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_3e7

    if-eqz v7, :cond_58

    :try_start_42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 3452
    .local v7, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, v11}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    .line 3453
    .end local v7  # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_3c

    .line 3592
    .end local v3  # "settingsToken":J
    :catchall_4c
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v19, v8

    move/from16 v25, v12

    move-wide/from16 v27, v13

    move-object v12, v10

    goto/16 :goto_3f1

    .line 3454
    .restart local v3  # "settingsToken":J
    :cond_58
    :try_start_58
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3456
    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    move-wide/from16 v22, v3

    const-wide v2, 0x1050000000eL

    .end local v3  # "settingsToken":J
    .local v22, "settingsToken":J
    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3457
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide v5, 0x2050000000fL

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3458
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v21, 0x1

    aget-wide v3, v0, v21

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3459
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3460
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3461
    const-wide v3, 0x10300000010L

    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long v5, v5, v17

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3463
    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v5, v2

    sub-long v5, v5, v17

    const-wide v2, 0x10300000011L

    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3465
    const-wide v2, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v11, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3466
    const-wide v2, 0x10800000013L

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mThermalConstraint:Z

    invoke-virtual {v11, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3468
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v2, v0
    :try_end_c1
    .catchall {:try_start_58 .. :try_end_c1} :catchall_3e7

    const/4 v3, 0x0

    :goto_c2
    if-ge v3, v2, :cond_d1

    :try_start_c4
    aget v4, v0, v3

    .line 3469
    .local v4, "u":I
    const-wide v5, 0x20500000002L

    invoke-virtual {v11, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_4c

    .line 3468
    .end local v4  # "u":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 3471
    :cond_d1
    :try_start_d1
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_3e7

    if-lez v0, :cond_1bc

    .line 3472
    :try_start_d9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 3473
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3474
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_e9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v9, v0

    .line 3475
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000003L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 3476
    .local v5, "rjToken":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v9, v11, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3479
    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10c
    .catchall {:try_start_d9 .. :try_end_10c} :catchall_1b0

    if-nez v0, :cond_10f

    .line 3480
    goto :goto_e9

    .line 3483
    :cond_10f
    const-wide v19, 0x10b00000002L

    const/4 v7, 0x1

    move-wide/from16 v25, v3

    move-object v3, v9

    move-object v4, v11

    move-wide/from16 v27, v13

    move-wide v13, v5

    .end local v5  # "rjToken":J
    .local v13, "rjToken":J
    .local v27, "now":J
    move-wide/from16 v5, v19

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v9  # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v20, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_123
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3486
    const-wide v3, 0x10800000003L

    .line 3487
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 3486
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3488
    const-wide v3, 0x10800000004L

    .line 3489
    move-object/from16 v5, v20

    .end local v20  # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {v1, v5}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 3488
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3490
    const-wide v3, 0x10800000005L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 3491
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3490
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3492
    const-wide v3, 0x10800000006L

    .line 3493
    invoke-direct {v1, v5}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 3492
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3494
    const-wide v3, 0x10800000007L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 3495
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_16e

    move/from16 v0, v21

    goto :goto_16f

    :cond_16e
    const/4 v0, 0x0

    .line 3494
    :goto_16f
    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_172
    .catchall {:try_start_123 .. :try_end_172} :catchall_1db

    .line 3496
    const/4 v3, 0x0

    .line 3498
    .local v3, "componentPresent":Z
    :try_start_173
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3499
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/high16 v6, 0x10000000

    .line 3501
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    .line 3498
    invoke-interface {v0, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_185} :catch_18d
    .catchall {:try_start_173 .. :try_end_185} :catchall_1db

    if-eqz v0, :cond_18a

    move/from16 v0, v21

    goto :goto_18b

    :cond_18a
    const/4 v0, 0x0

    :goto_18b
    move v3, v0

    .line 3503
    goto :goto_18e

    .line 3502
    :catch_18d
    move-exception v0

    .line 3504
    :goto_18e
    const-wide v6, 0x10800000008L

    :try_start_193
    invoke-virtual {v11, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3506
    const-wide v6, 0x10300000009L

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    invoke-virtual {v11, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3508
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1a5
    .catchall {:try_start_193 .. :try_end_1a5} :catchall_1db

    .line 3509
    .end local v3  # "componentPresent":Z
    .end local v5  # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13  # "rjToken":J
    move-object/from16 v8, v19

    move-wide/from16 v13, v27

    goto/16 :goto_e9

    .line 3474
    .end local v27  # "now":J
    .local v13, "now":J
    :cond_1ab
    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    .end local v13  # "now":J
    .restart local v27  # "now":J
    goto :goto_1c0

    .line 3592
    .end local v2  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v22  # "settingsToken":J
    .end local v27  # "now":J
    .restart local v13  # "now":J
    :catchall_1b0
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v13  # "now":J
    .restart local v27  # "now":J
    goto/16 :goto_3f1

    .line 3471
    .end local v27  # "now":J
    .restart local v13  # "now":J
    .restart local v22  # "settingsToken":J
    :cond_1bc
    move-object/from16 v19, v8

    move-wide/from16 v27, v13

    .line 3511
    .end local v13  # "now":J
    .restart local v27  # "now":J
    :goto_1c0
    :try_start_1c0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1ca
    .catchall {:try_start_1c0 .. :try_end_1ca} :catchall_3e0

    if-eqz v2, :cond_1e3

    :try_start_1cc
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3512
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, v11, v3, v4, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_1da
    .catchall {:try_start_1cc .. :try_end_1da} :catchall_1db

    .line 3514
    .end local v2  # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_1c6

    .line 3592
    .end local v22  # "settingsToken":J
    :catchall_1db
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    goto/16 :goto_3f1

    .line 3515
    .restart local v22  # "settingsToken":J
    :cond_1e3
    const/4 v2, 0x0

    move v0, v2

    .local v0, "i":I
    :goto_1e5
    :try_start_1e5
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_1eb
    .catchall {:try_start_1e5 .. :try_end_1eb} :catchall_3e0

    const/4 v13, -0x1

    if-ge v0, v2, :cond_221

    .line 3516
    :try_start_1ee
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3517
    .local v2, "uid":I
    if-eq v12, v13, :cond_1fc

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v12, v3, :cond_21e

    .line 3518
    :cond_1fc
    const-wide v3, 0x20b00000005L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3519
    .local v3, "pToken":J
    const-wide v5, 0x10500000001L

    invoke-virtual {v11, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3520
    const-wide v5, 0x11100000002L

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 3521
    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 3520
    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3522
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21e
    .catchall {:try_start_1ee .. :try_end_21e} :catchall_1db

    .line 3515
    .end local v2  # "uid":I
    .end local v3  # "pToken":J
    :cond_21e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e5

    .line 3525
    .end local v0  # "i":I
    :cond_221
    const/4 v2, 0x0

    move v0, v2

    .restart local v0  # "i":I
    :goto_223
    :try_start_223
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_229
    .catchall {:try_start_223 .. :try_end_229} :catchall_3e0

    if-ge v0, v2, :cond_244

    .line 3526
    :try_start_22b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3527
    .restart local v2  # "uid":I
    if-eq v12, v13, :cond_239

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v12, v3, :cond_241

    .line 3528
    :cond_239
    const-wide v3, 0x20500000006L

    invoke-virtual {v11, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_241
    .catchall {:try_start_22b .. :try_end_241} :catchall_1db

    .line 3525
    .end local v2  # "uid":I
    :cond_241
    add-int/lit8 v0, v0, 0x1

    goto :goto_223

    .line 3532
    .end local v0  # "i":I
    :cond_244
    :try_start_244
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v0, v11, v2, v3, v12}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3534
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v0, v11, v2, v3, v12}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3537
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_262
    .catchall {:try_start_244 .. :try_end_262} :catchall_3e0

    if-eqz v2, :cond_2a9

    :try_start_264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 3538
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000009L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    .line 3540
    .local v8, "pjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v2, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3541
    const-wide v20, 0x10b00000002L

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v11

    move-wide v13, v5

    move-wide/from16 v5, v20

    move-wide v13, v8

    .end local v8  # "pjToken":J
    .local v13, "pjToken":J
    move-wide v8, v15

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3542
    const-wide v3, 0x11100000003L

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3543
    const-wide v3, 0x10300000004L

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3545
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2a7
    .catchall {:try_start_264 .. :try_end_2a7} :catchall_1db

    .line 3546
    .end local v2  # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13  # "pjToken":J
    const/4 v13, -0x1

    goto :goto_25e

    .line 3547
    :cond_2a9
    :try_start_2a9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2b3
    .catchall {:try_start_2a9 .. :try_end_2b3} :catchall_3e0

    if-eqz v2, :cond_3a5

    :try_start_2b5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 3548
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    const-wide v3, 0x20b0000000aL

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v13, v3

    .line 3549
    .local v13, "ajToken":J
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3
    :try_end_2c9
    .catchall {:try_start_2b5 .. :try_end_2c9} :catchall_39e

    move-object v8, v3

    .line 3551
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v8, :cond_312

    .line 3552
    const-wide v3, 0x10b00000001L

    :try_start_2d1
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 3554
    .local v3, "ijToken":J
    iget-wide v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J
    :try_end_2d8
    .catchall {:try_start_2d1 .. :try_end_2d8} :catchall_30a

    sub-long v5, v15, v5

    move-object/from16 v24, v10

    const-wide v9, 0x10300000001L

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v24, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_2e1
    invoke-virtual {v11, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3556
    iget-object v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v5, :cond_2f2

    .line 3557
    const-wide v5, 0x10900000002L

    iget-object v7, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3561
    :cond_2f2
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2f5
    .catchall {:try_start_2e1 .. :try_end_2f5} :catchall_301

    .line 3562
    .end local v3  # "ijToken":J
    move-object v10, v8

    move/from16 v25, v12

    move-wide/from16 v29, v13

    const-wide v20, 0x10b00000001L

    goto/16 :goto_384

    .line 3592
    .end local v2  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v8  # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13  # "ajToken":J
    .end local v22  # "settingsToken":J
    :catchall_301
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object/from16 v12, v24

    goto/16 :goto_3f1

    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_30a
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto/16 :goto_3f1

    .line 3563
    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v2  # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v8  # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v13  # "ajToken":J
    .restart local v22  # "settingsToken":J
    :cond_312
    move-object/from16 v24, v10

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-wide v3, 0x10b00000002L

    :try_start_319
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v9, v3

    .line 3565
    .local v9, "rjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v8, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3567
    const-wide v3, 0x10300000002L

    .line 3568
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v20

    sub-long v5, v15, v20

    .line 3567
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3569
    const-wide v3, 0x10300000003L

    .line 3570
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 3569
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_341
    .catchall {:try_start_319 .. :try_end_341} :catchall_396

    .line 3572
    const-wide v5, 0x10b00000004L

    const/4 v7, 0x0

    move-object v3, v8

    move-object v4, v11

    const-wide v20, 0x10b00000001L

    move/from16 v25, v12

    move-wide/from16 v29, v13

    move-wide v12, v9

    move-object v10, v8

    .end local v8  # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v9  # "rjToken":J
    .end local v13  # "ajToken":J
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "rjToken":J
    .local v25, "filterUidFinal":I
    .local v29, "ajToken":J
    move-wide v8, v15

    :try_start_355
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3574
    const-wide v3, 0x11100000005L

    .line 3575
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    .line 3574
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3577
    const-wide v3, 0x10300000006L

    iget-wide v5, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3579
    const-wide v3, 0x10300000007L

    iget-wide v5, v10, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v7, v10, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v5, v7

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3582
    invoke-virtual {v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3584
    .end local v12  # "rjToken":J
    :goto_384
    move-wide/from16 v3, v29

    .end local v29  # "ajToken":J
    .local v3, "ajToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_389
    .catchall {:try_start_355 .. :try_end_389} :catchall_38f

    .line 3585
    .end local v2  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v3  # "ajToken":J
    .end local v10  # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, v24

    move/from16 v12, v25

    goto/16 :goto_2af

    .line 3592
    .end local v22  # "settingsToken":J
    :catchall_38f
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v12, v24

    goto/16 :goto_3f1

    .end local v25  # "filterUidFinal":I
    .local v12, "filterUidFinal":I
    :catchall_396
    move-exception v0

    move/from16 v25, v12

    move/from16 v2, p2

    move-object/from16 v12, v24

    .end local v12  # "filterUidFinal":I
    .restart local v25  # "filterUidFinal":I
    goto :goto_3f1

    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v25  # "filterUidFinal":I
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12  # "filterUidFinal":I
    :catchall_39e
    move-exception v0

    move/from16 v25, v12

    move/from16 v2, p2

    move-object v12, v10

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12  # "filterUidFinal":I
    .restart local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25  # "filterUidFinal":I
    goto :goto_3f1

    .line 3586
    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v25  # "filterUidFinal":I
    .restart local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12  # "filterUidFinal":I
    .restart local v22  # "settingsToken":J
    :cond_3a5
    move-object/from16 v24, v10

    move/from16 v25, v12

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12  # "filterUidFinal":I
    .restart local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25  # "filterUidFinal":I
    move/from16 v2, p2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_3c7

    .line 3587
    const-wide v3, 0x1080000000bL

    :try_start_3b3
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3588
    const-wide v3, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_3c2
    .catchall {:try_start_3b3 .. :try_end_3c2} :catchall_3c3

    goto :goto_3c7

    .line 3592
    .end local v22  # "settingsToken":J
    :catchall_3c3
    move-exception v0

    move-object/from16 v12, v24

    goto :goto_3f1

    .line 3590
    .restart local v22  # "settingsToken":J
    :cond_3c7
    :goto_3c7
    :try_start_3c7
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_3c9
    .catchall {:try_start_3c7 .. :try_end_3c9} :catchall_3dc

    const-wide v5, 0x10b00000014L

    move-object v4, v11

    move-wide/from16 v7, v27

    move-object/from16 v12, v24

    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v9, v15

    :try_start_3d4
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3592
    .end local v22  # "settingsToken":J
    monitor-exit v19
    :try_end_3d8
    .catchall {:try_start_3d4 .. :try_end_3d8} :catchall_3f3

    .line 3594
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3595
    return-void

    .line 3592
    .end local v12  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_3dc
    move-exception v0

    move-object/from16 v12, v24

    .end local v24  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v12  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_3f1

    .end local v25  # "filterUidFinal":I
    .restart local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterUidFinal":I
    :catchall_3e0
    move-exception v0

    move/from16 v2, p2

    move/from16 v25, v12

    move-object v12, v10

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25  # "filterUidFinal":I
    goto :goto_3f1

    .end local v25  # "filterUidFinal":I
    .end local v27  # "now":J
    .restart local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterUidFinal":I
    .local v13, "now":J
    :catchall_3e7
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v19, v8

    move/from16 v25, v12

    move-wide/from16 v27, v13

    move-object v12, v10

    .end local v10  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v13  # "now":J
    .local v12, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25  # "filterUidFinal":I
    .restart local v27  # "now":J
    :goto_3f1
    :try_start_3f1
    monitor-exit v19
    :try_end_3f2
    .catchall {:try_start_3f1 .. :try_end_3f2} :catchall_3f3

    throw v0

    :catchall_3f3
    move-exception v0

    goto :goto_3f1
.end method

.method evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 2426
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    .line 2427
    .local v0, "priority":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 2428
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 2430
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2431
    .local v1, "override":I
    if-eqz v1, :cond_1f

    .line 2432
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 2434
    :cond_1f
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "hasJobId"  # Z
    .param p5, "jobId"  # I

    .line 3029
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_2a
    const/4 v0, -0x1

    .line 3035
    .local v0, "pkgUid":I
    const/4 v1, 0x0

    :try_start_2c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3036
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_36

    move v0, v3

    .end local v2  # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_37

    .line 3037
    :catch_36
    move-exception v2

    :goto_37
    nop

    .line 3039
    if-gez v0, :cond_56

    .line 3040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const/16 v1, -0x3e8

    return v1

    .line 3044
    :cond_56
    const-string v2, " in user "

    if-nez p4, :cond_82

    .line 3045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling all jobs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string v2, "cancel shell command for package"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 3047
    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b1

    .line 3050
    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, p5, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(III)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 3052
    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    :cond_b1
    :goto_b1
    return v1
.end method

.method executeHeartbeatCommand(Ljava/io/PrintWriter;I)I
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "numBeats"  # I

    .line 3193
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_c

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3195
    return v0

    .line 3198
    :cond_c
    const-string v1, "Advancing standby heartbeat by "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3199
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 3200
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3201
    int-to-long v2, p2

    :try_start_18
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 3202
    monitor-exit v1

    .line 3203
    return v0

    .line 3202
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method executeRunCommand(Ljava/lang/String;IIZ)I
    .registers 10
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "jobId"  # I
    .param p4, "force"  # Z

    .line 2966
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 2967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRunCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2973
    const/4 v2, -0x1

    if-eq p2, v2, :cond_3c

    move v2, p2

    goto :goto_3d

    :cond_3c
    move v2, v0

    .line 2972
    :goto_3d
    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 2974
    .local v1, "uid":I
    if-gez v1, :cond_46

    .line 2975
    const/16 v0, -0x3e8

    return v0

    .line 2978
    :cond_46
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_49} :catch_73

    .line 2979
    :try_start_49
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2980
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v3, :cond_55

    .line 2981
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 2984
    :cond_55
    if-eqz p4, :cond_59

    const/4 v4, 0x2

    goto :goto_5a

    :cond_59
    const/4 v4, 0x1

    :goto_5a
    iput v4, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2985
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_68

    .line 2986
    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2987
    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    .line 2990
    :cond_68
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2992
    .end local v3  # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 2995
    .end local v1  # "uid":I
    goto :goto_74

    .line 2992
    .restart local v1  # "uid":I
    :catchall_70
    move-exception v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_49 .. :try_end_72} :catchall_70

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1  # "pkgName":Ljava/lang/String;
    .end local p2  # "userId":I
    .end local p3  # "jobId":I
    .end local p4  # "force":Z
    :try_start_72
    throw v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_73} :catch_73

    .line 2993
    .end local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1  # "pkgName":Ljava/lang/String;
    .restart local p2  # "userId":I
    .restart local p3  # "jobId":I
    .restart local p4  # "force":Z
    :catch_73
    move-exception v1

    .line 2996
    :goto_74
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 22
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "hasJobId"  # Z
    .param p5, "jobId"  # I

    .line 3002
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 3003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeTimeoutCommand(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "JobScheduler"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 3002
    :cond_35
    move-object/from16 v3, p2

    move/from16 v10, p3

    move/from16 v11, p5

    .line 3006
    :goto_3b
    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3007
    const/4 v0, 0x0

    .line 3008
    .local v0, "foundSome":Z
    const/4 v13, 0x0

    move v4, v13

    move v14, v0

    move v0, v4

    .local v0, "i":I
    .local v14, "foundSome":Z
    :goto_43
    :try_start_43
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_86

    .line 3009
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 3010
    .local v4, "jc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    move-object v15, v5

    .line 3011
    .local v15, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v9, "shell"

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3012
    const/4 v5, 0x1

    .line 3013
    .end local v14  # "foundSome":Z
    .local v5, "foundSome":Z
    const-string v6, "Timing out: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v15, v2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 3015
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v5

    .line 3008
    .end local v4  # "jc":Lcom/android/server/job/JobServiceContext;
    .end local v5  # "foundSome":Z
    .end local v15  # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14  # "foundSome":Z
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 3019
    .end local v0  # "i":I
    :cond_86
    if-nez v14, :cond_8d

    .line 3020
    const-string v0, "No matching executing jobs found."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    .end local v14  # "foundSome":Z
    :cond_8d
    monitor-exit v12

    .line 3023
    return v13

    .line 3022
    :catchall_8f
    move-exception v0

    monitor-exit v12
    :try_end_91
    .catchall {:try_start_43 .. :try_end_91} :catchall_8f

    throw v0
.end method

.method getBatteryCharging()Z
    .registers 3

    .line 3074
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    .line 3076
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 3075
    return v1

    .line 3077
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getBatteryNotLow()Z
    .registers 3

    .line 3081
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    .line 3083
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 3082
    return v1

    .line 3084
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getBatterySeq()I
    .registers 3

    .line 3068
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3069
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 3070
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getCurrentHeartbeat()J
    .registers 4

    .line 3101
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3102
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    monitor-exit v0

    return-wide v1

    .line 3103
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .registers 15
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "jobId"  # I

    .line 3109
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3110
    const/4 v2, -0x1

    if-eq p3, v2, :cond_a

    move v2, p3

    goto :goto_b

    :cond_a
    move v2, v0

    .line 3109
    :goto_b
    invoke-interface {v1, p2, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 3111
    .local v1, "uid":I
    if-gez v1, :cond_22

    .line 3112
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const/16 v0, -0x3e8

    return v0

    .line 3116
    :cond_22
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_130

    .line 3117
    :try_start_25
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3118
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_55

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_55
    if-nez v3, :cond_71

    .line 3120
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3121
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3125
    :cond_71
    const/4 v4, 0x0

    .line 3126
    .local v4, "printed":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 3127
    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3128
    const/4 v4, 0x1

    .line 3130
    :cond_81
    invoke-direct {p0, v3}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 3131
    if-eqz v4, :cond_8e

    .line 3132
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    :cond_8e
    const/4 v4, 0x1

    .line 3135
    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    :cond_94
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 3138
    if-eqz v4, :cond_a7

    .line 3139
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    :cond_a7
    const/4 v4, 0x1

    .line 3142
    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    :cond_ae
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_c8

    .line 3145
    if-eqz v4, :cond_c1

    .line 3146
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3148
    :cond_c1
    const/4 v4, 0x1

    .line 3149
    const-string/jumbo v5, "source-user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    :cond_c8
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_e1

    .line 3152
    if-eqz v4, :cond_db

    .line 3153
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3155
    :cond_db
    const/4 v4, 0x1

    .line 3156
    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_25 .. :try_end_e1} :catchall_12d

    .line 3158
    :cond_e1
    const/4 v5, 0x0

    .line 3160
    .local v5, "componentPresent":Z
    :try_start_e2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 3161
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 3163
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    .line 3160
    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_f4} :catch_fb
    .catchall {:try_start_e2 .. :try_end_f4} :catchall_12d

    if-eqz v6, :cond_f8

    const/4 v6, 0x1

    goto :goto_f9

    :cond_f8
    move v6, v0

    :goto_f9
    move v5, v6

    .line 3165
    goto :goto_fc

    .line 3164
    :catch_fb
    move-exception v6

    .line 3166
    :goto_fc
    if-nez v5, :cond_10c

    .line 3167
    if-eqz v4, :cond_105

    .line 3168
    :try_start_100
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3170
    :cond_105
    const/4 v4, 0x1

    .line 3171
    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    :cond_10c
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_120

    .line 3174
    if-eqz v4, :cond_119

    .line 3175
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    :cond_119
    const/4 v4, 0x1

    .line 3178
    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    :cond_120
    if-nez v4, :cond_128

    .line 3181
    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3183
    :cond_128
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3184
    .end local v3  # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4  # "printed":Z
    .end local v5  # "componentPresent":Z
    monitor-exit v2

    .line 3187
    .end local v1  # "uid":I
    goto :goto_131

    .line 3184
    .restart local v1  # "uid":I
    :catchall_12d
    move-exception v3

    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_100 .. :try_end_12f} :catchall_12d

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    .end local p2  # "pkgName":Ljava/lang/String;
    .end local p3  # "userId":I
    .end local p4  # "jobId":I
    :try_start_12f
    throw v3
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_130} :catch_130

    .line 3185
    .end local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    .restart local p2  # "pkgName":Ljava/lang/String;
    .restart local p3  # "userId":I
    .restart local p4  # "jobId":I
    :catch_130
    move-exception v1

    .line 3188
    :goto_131
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 2

    .line 953
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .registers 8
    .param p1, "uid"  # I
    .param p2, "jobId"  # I

    .line 1098
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1100
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_26

    .line 1101
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1102
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_23

    .line 1103
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 1100
    .end local v3  # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 1106
    .end local v2  # "i":I
    :cond_26
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1107
    .end local v1  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1088
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1089
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_2b

    .line 1090
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1091
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    nop

    .end local v4  # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1093
    .end local v3  # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1094
    .end local v1  # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2  # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 28
    .param p1, "failureToReschedule"  # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1572
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 1573
    .local v15, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v17

    .line 1575
    .local v17, "job":Landroid/app/job/JobInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v18

    .line 1576
    .local v18, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v12, v1, 0x1

    .line 1579
    .local v12, "backoffAttempts":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasWorkLocked()Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, ": attempt #"

    const-string v5, "Not rescheduling "

    const-string v6, "JobScheduler"

    if-eqz v1, :cond_51

    .line 1580
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    if-le v12, v1, :cond_7c

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > work limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-object v3

    .line 1586
    :cond_51
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    if-le v12, v1, :cond_7c

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > std limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return-object v3

    .line 1592
    :cond_7c
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    if-eqz v1, :cond_a4

    if-eq v1, v2, :cond_8d

    .line 1601
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_8d

    .line 1602
    const-string v1, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_8d
    move-wide/from16 v1, v18

    .line 1606
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_9b

    .line 1607
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 1609
    :cond_9b
    long-to-float v3, v1

    add-int/lit8 v4, v12, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v1, v3

    .local v1, "delayMillis":J
    goto :goto_b5

    .line 1594
    .end local v1  # "delayMillis":J
    :cond_a4
    move-wide/from16 v1, v18

    .line 1595
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_b2

    .line 1596
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 1598
    :cond_b2
    int-to-long v3, v12

    mul-long/2addr v1, v3

    .line 1599
    .local v1, "delayMillis":J
    nop

    .line 1612
    :goto_b5
    const-wide/32 v3, 0x112a880

    .line 1613
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 1614
    .end local v1  # "delayMillis":J
    .local v20, "delayMillis":J
    new-instance v22, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v3

    add-long v5, v15, v20

    const-wide v7, 0x7fffffffffffffffL

    .line 1617
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v23

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move v9, v12

    move/from16 v25, v12

    .end local v12  # "backoffAttempts":I
    .local v25, "backoffAttempts":I
    move-wide/from16 v12, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1618
    .local v1, "newJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1619
    nop

    .line 1620
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v2

    .line 1619
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    .line 1622
    :cond_ed
    const/4 v2, 0x0

    .local v2, "ic":I
    :goto_ee
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_104

    .line 1623
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 1624
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v3, v1, v14}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1622
    .end local v3  # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    .line 1626
    .end local v2  # "ic":I
    :cond_104
    return-object v1
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 43
    .param p1, "periodicToReschedule"  # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1656
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1659
    .local v0, "elapsedNow":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 1660
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1659
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1662
    .local v2, "period":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 1663
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1662
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1664
    .local v4, "flex":J
    const-wide/16 v6, 0x0

    .line 1666
    .local v6, "rescheduleBuffer":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1667
    .local v8, "olrte":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_4a

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_5f

    .line 1668
    :cond_4a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    move-wide v8, v0

    .line 1671
    :cond_5f
    move-wide v12, v8

    .line 1673
    .local v12, "latestRunTimeElapsed":J
    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 1674
    .local v14, "diffMs":J
    cmp-long v10, v0, v12

    move-wide/from16 v16, v6

    .end local v6  # "rescheduleBuffer":J
    .local v16, "rescheduleBuffer":J
    const-wide/32 v6, 0x1b7740

    if-lez v10, :cond_a4

    .line 1677
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_78

    .line 1678
    const-string v10, "Periodic job ran after its intended window."

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_78
    div-long v18, v14, v2

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    .line 1681
    .local v18, "numSkippedWindows":J
    cmp-long v10, v2, v4

    if-eqz v10, :cond_9e

    sub-long v22, v2, v4

    const-wide/16 v24, 0x2

    move-wide/from16 v26, v8

    .end local v8  # "olrte":J
    .local v26, "olrte":J
    div-long v8, v22, v24

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long v6, v14, v6

    if-lez v6, :cond_a0

    .line 1683
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_9b

    .line 1684
    const-string v6, "Custom flex job ran too close to next window."

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_9b
    add-long v18, v18, v20

    goto :goto_a0

    .line 1681
    .end local v26  # "olrte":J
    .restart local v8  # "olrte":J
    :cond_9e
    move-wide/from16 v26, v8

    .line 1690
    .end local v8  # "olrte":J
    .restart local v26  # "olrte":J
    :cond_a0
    :goto_a0
    mul-long v6, v2, v18

    add-long/2addr v6, v12

    .line 1691
    .end local v18  # "numSkippedWindows":J
    .local v6, "newLatestRuntimeElapsed":J
    goto :goto_c7

    .line 1692
    .end local v6  # "newLatestRuntimeElapsed":J
    .end local v26  # "olrte":J
    .restart local v8  # "olrte":J
    :cond_a4
    move-wide/from16 v26, v8

    .end local v8  # "olrte":J
    .restart local v26  # "olrte":J
    add-long v8, v12, v2

    .line 1693
    .local v8, "newLatestRuntimeElapsed":J
    cmp-long v10, v14, v6

    if-gez v10, :cond_c3

    const-wide/16 v18, 0x6

    div-long v20, v2, v18

    cmp-long v10, v14, v20

    if-gez v10, :cond_c3

    .line 1696
    div-long v18, v2, v18

    move-wide/from16 v20, v8

    .end local v8  # "newLatestRuntimeElapsed":J
    .local v20, "newLatestRuntimeElapsed":J
    sub-long v8, v18, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, v20

    .end local v16  # "rescheduleBuffer":J
    .local v6, "rescheduleBuffer":J
    goto :goto_c7

    .line 1693
    .end local v6  # "rescheduleBuffer":J
    .end local v20  # "newLatestRuntimeElapsed":J
    .restart local v8  # "newLatestRuntimeElapsed":J
    .restart local v16  # "rescheduleBuffer":J
    :cond_c3
    move-wide/from16 v20, v8

    .line 1700
    .end local v8  # "newLatestRuntimeElapsed":J
    .restart local v20  # "newLatestRuntimeElapsed":J
    move-wide/from16 v6, v20

    .end local v20  # "newLatestRuntimeElapsed":J
    .local v6, "newLatestRuntimeElapsed":J
    :goto_c7
    cmp-long v8, v6, v0

    if-gez v8, :cond_ff

    .line 1701
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    new-instance v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v30

    add-long v9, v0, v2

    sub-long v32, v9, v4

    add-long v34, v0, v2

    const/16 v36, 0x0

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1706
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v37

    .line 1707
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v39

    move-object/from16 v28, v8

    move-object/from16 v29, p1

    invoke-direct/range {v28 .. v40}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1703
    return-object v8

    .line 1710
    :cond_ff
    sub-long v8, v2, v16

    .line 1711
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 1713
    .local v8, "newEarliestRunTimeElapsed":J
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_137

    .line 1714
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v0

    .end local v0  # "elapsedNow":J
    .local v18, "elapsedNow":J
    const-string v0, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    move-wide/from16 v20, v2

    .end local v2  # "period":J
    .local v20, "period":J
    div-long v2, v8, v0

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v6, v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]s"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 1713
    .end local v18  # "elapsedNow":J
    .end local v20  # "period":J
    .restart local v0  # "elapsedNow":J
    .restart local v2  # "period":J
    :cond_137
    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    .line 1718
    .end local v0  # "elapsedNow":J
    .end local v2  # "period":J
    .restart local v18  # "elapsedNow":J
    .restart local v20  # "period":J
    :goto_13b
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v30

    const/16 v36, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1721
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v37

    .line 1722
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v39

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move-wide/from16 v32, v8

    move-wide/from16 v34, v6

    invoke-direct/range {v28 .. v40}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1718
    return-object v0
.end method

.method getStorageNotLow()Z
    .registers 3

    .line 3094
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3095
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_12

    .line 3096
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 3095
    return v1

    .line 3097
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getStorageSeq()I
    .registers 3

    .line 3088
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3089
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 3090
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .registers 2

    .line 945
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 4
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1764
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method heartbeatWhenJobsLastRun(Ljava/lang/String;I)J
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1732
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    .line 1733
    .local v0, "heartbeat":J
    const/4 v2, 0x0

    .line 1734
    .local v2, "cacheHit":Z
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1735
    :try_start_d
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1736
    .local v4, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v4, :cond_30

    .line 1737
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1738
    .local v7, "cachedValue":J
    cmp-long v9, v7, v5

    if-gez v9, :cond_30

    .line 1739
    const/4 v2, 0x1

    .line 1740
    move-wide v0, v7

    .line 1743
    .end local v7  # "cachedValue":J
    :cond_30
    if-nez v2, :cond_49

    .line 1745
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v7, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v7

    .line 1746
    .local v7, "timeSinceJob":J
    cmp-long v5, v7, v5

    if-gez v5, :cond_46

    .line 1749
    iget-wide v5, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long v9, v7, v9

    sub-long/2addr v5, v9

    move-wide v0, v5

    .line 1753
    :cond_46
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V

    .line 1755
    .end local v4  # "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7  # "timeSinceJob":J
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_75

    .line 1756
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_74

    .line 1757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last job heartbeat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_74
    return-wide v0

    .line 1755
    :catchall_75
    move-exception v4

    :try_start_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v4
.end method

.method public isChainedAttributionEnabled()Z
    .registers 2

    .line 961
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$1$JobSchedulerService()V
    .registers 11

    .line 1372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1377
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1382
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_51

    .line 1383
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1384
    .local v5, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1385
    .local v6, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_49

    .line 1386
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_49
    const-string v7, "deferred rtc calculation"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1382
    .end local v5  # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6  # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1390
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_51
    monitor-exit v2

    .line 1391
    return-void

    .line 1390
    :catchall_53
    move-exception v3

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw v3
.end method

.method public synthetic lambda$onBootPhase$2$JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "job"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1463
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1464
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1465
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1463
    .end local v1  # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1467
    .end local v0  # "controller":I
    :cond_18
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .registers 3

    .line 2406
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 2410
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2411
    return-void
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1552
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1553
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1554
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1552
    .end local v1  # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1556
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1545
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1546
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1547
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1545
    .end local v1  # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1549
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method public onBootPhase(I)V
    .registers 15
    .param p1, "phase"  # I

    .line 1400
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_bc

    .line 1401
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start(Landroid/content/ContentResolver;)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1403
    .local v1, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 1404
    .end local v1  # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_17

    .line 1406
    :cond_27
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 1407
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 1406
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1408
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_40

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 1413
    :cond_40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1414
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1415
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1416
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1417
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1421
    new-instance v10, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v10, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v10, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1425
    const/4 v1, 0x0

    :try_start_82
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8e} :catch_8f

    .line 1431
    goto :goto_90

    .line 1429
    :catch_8f
    move-exception v2

    .line 1433
    :goto_90
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1438
    nop

    .line 1439
    const-string/jumbo v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1438
    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mThermalService:Landroid/os/IThermalService;

    .line 1440
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mThermalService:Landroid/os/IThermalService;

    if-eqz v2, :cond_112

    .line 1442
    :try_start_aa
    new-instance v3, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;

    invoke-direct {v3, p0, v1}, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V

    invoke-interface {v2, v3}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b2} :catch_b3

    .line 1445
    goto :goto_112

    .line 1443
    :catch_b3
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "JobScheduler"

    const-string v3, "Failed to register thermal callback."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_112

    .line 1447
    .end local v0  # "filter":Landroid/content/IntentFilter;
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v10  # "userFilter":Landroid/content/IntentFilter;
    :cond_bc
    const/16 v0, 0x258

    if-ne p1, v0, :cond_112

    .line 1448
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    const/4 v1, 0x1

    :try_start_c4
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1451
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1453
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1454
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1456
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dd
    const/16 v3, 0x10

    if-ge v2, v3, :cond_fa

    .line 1457
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v4, Lcom/android/server/job/JobServiceContext;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 1457
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 1462
    .end local v2  # "i":I
    :cond_fa
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Lfddr1PhKRLtm92W7niRGMWO69M;

    invoke-direct {v3, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Lfddr1PhKRLtm92W7niRGMWO69M;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1469
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1470
    monitor-exit v0

    goto :goto_113

    :catchall_10f
    move-exception v1

    monitor-exit v0
    :try_end_111
    .catchall {:try_start_c4 .. :try_end_111} :catchall_10f

    throw v1

    .line 1447
    :cond_112
    :goto_112
    nop

    .line 1472
    :goto_113
    return-void
.end method

.method public onControllerStateChanged()V
    .registers 3

    .line 1839
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1840
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 9
    .param p1, "deviceIdle"  # Z

    .line 1231
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1233
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_1d
    const/4 v1, 0x1

    if-eqz p1, :cond_48

    .line 1238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 1239
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1240
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1241
    .local v4, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_44

    .line 1242
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_44

    .line 1243
    const/4 v5, 0x4

    const-string v6, "cancelled due to doze"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1238
    .end local v3  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4  # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .end local v2  # "i":I
    :cond_47
    goto :goto_64

    .line 1249
    :cond_48
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v2, :cond_64

    .line 1250
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v2, :cond_5b

    .line 1251
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_5b

    .line 1252
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1253
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1256
    :cond_5b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1259
    :cond_64
    :goto_64
    monitor-exit v0

    .line 1260
    return-void

    .line 1259
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 10
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"  # Z

    .line 1787
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_22

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reschedule="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_22
    if-eqz p2, :cond_29

    .line 1795
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 1799
    .local v0, "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_4e

    .line 1800
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_44

    .line 1801
    const-string v2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_44
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1806
    return-void

    .line 1809
    :cond_4e
    const-string v2, "Unable to regrant job permissions for "

    if-eqz v0, :cond_71

    .line 1811
    :try_start_52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_59} :catch_5a

    .line 1814
    goto :goto_6d

    .line 1812
    :catch_5a
    move-exception v4

    .line 1813
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    .end local v4  # "e":Ljava/lang/SecurityException;
    :goto_6d
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_9d

    .line 1816
    :cond_71
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1817
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1819
    .local v4, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_7f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_86
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_86} :catch_87

    .line 1822
    goto :goto_9a

    .line 1820
    :catch_87
    move-exception v5

    .line 1821
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    .end local v5  # "e":Ljava/lang/SecurityException;
    :goto_9a
    invoke-direct {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1825
    .end local v4  # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_9d
    :goto_9d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1827
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1828
    return-void
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"  # Lcom/android/server/job/controllers/JobStatus;

    .line 1844
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1845
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1395
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1396
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 966
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 968
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 970
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 971
    return-void

    .line 968
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 981
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 983
    monitor-exit v0

    .line 984
    return-void

    .line 983
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 976
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 977
    return-void
.end method

.method reportActiveLocked()V
    .registers 7

    .line 1264
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1265
    .local v0, "active":Z
    :goto_c
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_43

    .line 1266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 1267
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1268
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1269
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_40

    .line 1270
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_40

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-nez v5, :cond_40

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v5, :cond_40

    .line 1275
    const/4 v0, 0x1

    .line 1276
    goto :goto_43

    .line 1266
    .end local v3  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4  # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1281
    .end local v2  # "i":I
    :cond_43
    :goto_43
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_50

    .line 1282
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1283
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v1, :cond_50

    .line 1284
    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1287
    :cond_50
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1292
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .registers 26
    .param p1, "job"  # Landroid/app/job/JobInfo;
    .param p2, "work"  # Landroid/app/job/JobWorkItem;
    .param p3, "uId"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "userId"  # I
    .param p6, "tag"  # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 998
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 998
    invoke-interface {v0, v12, v4}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1000
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not scheduling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_43} :catch_46

    .line 1002
    const/4 v0, 0x0

    return v0

    .line 1005
    :cond_45
    goto :goto_47

    .line 1004
    :catch_46
    move-exception v0

    .line 1007
    :goto_47
    iget-object v14, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1008
    :try_start_4a
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v12, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 1010
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    const/4 v15, 0x1

    if-eqz v3, :cond_71

    if-eqz v0, :cond_71

    .line 1013
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1015
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 1019
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1021
    monitor-exit v14

    return v15

    .line 1025
    :cond_71
    move/from16 v11, p5

    move-object/from16 v10, p6

    invoke-static {v2, v12, v13, v11, v10}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    move-object v9, v4

    .line 1031
    .local v9, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1033
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_9d

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCHEDULE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_9d
    if-nez v13, :cond_c8

    .line 1036
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, v12}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_aa

    goto :goto_c8

    .line 1037
    :cond_aa
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Apps may not schedule more than 100 distinct jobs"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1  # "job":Landroid/app/job/JobInfo;
    .end local p2  # "work":Landroid/app/job/JobWorkItem;
    .end local p3  # "uId":I
    .end local p4  # "packageName":Ljava/lang/String;
    .end local p5  # "userId":I
    .end local p6  # "tag":Ljava/lang/String;
    throw v4

    .line 1044
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1  # "job":Landroid/app/job/JobInfo;
    .restart local p2  # "work":Landroid/app/job/JobWorkItem;
    .restart local p3  # "uId":I
    .restart local p4  # "packageName":Ljava/lang/String;
    .restart local p5  # "userId":I
    .restart local p6  # "tag":Ljava/lang/String;
    :cond_c8
    :goto_c8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 1046
    if-eqz v3, :cond_d8

    .line 1048
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 1051
    :cond_d8
    if-eqz v0, :cond_e1

    .line 1053
    const-string/jumbo v4, "job rescheduled by app"

    invoke-direct {v1, v0, v9, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    goto :goto_e5

    .line 1055
    :cond_e1
    const/4 v4, 0x0

    invoke-direct {v1, v9, v4}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1057
    :goto_e5
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1058
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v16, 0x0

    .line 1060
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v17

    .line 1061
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v18

    .line 1057
    move/from16 v5, p3

    move-object v15, v9

    .end local v9  # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v15, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 1072
    invoke-direct {v1, v15}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1075
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v4, v15}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1076
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v4, v15, v5}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_11c

    .line 1079
    :cond_119
    invoke-direct {v1, v15}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1081
    .end local v0  # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v15  # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :goto_11c
    monitor-exit v14

    .line 1082
    const/4 v0, 0x1

    return v0

    .line 1081
    :catchall_11f
    move-exception v0

    monitor-exit v14
    :try_end_121
    .catchall {:try_start_4a .. :try_end_121} :catchall_11f

    throw v0
.end method

.method setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "heartbeat"  # J

    .line 1768
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1769
    .local v0, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_15

    .line 1770
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 1771
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1773
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    return-void
.end method

.method setMonitorBattery(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 3060
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3061
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_10

    .line 3062
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V

    .line 3064
    :cond_10
    monitor-exit v0

    .line 3065
    return-void

    .line 3064
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setNextHeartbeatAlarm()V
    .registers 21

    .line 2189
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2190
    :try_start_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-nez v0, :cond_d

    .line 2191
    monitor-exit v2

    return-void

    .line 2193
    :cond_d
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 2194
    .local v3, "heartbeatLength":J
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_67

    .line 2195
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 2196
    .local v5, "now":J
    add-long v7, v5, v3

    div-long/2addr v7, v3

    .line 2197
    .local v7, "nextBeatOrdinal":J
    mul-long v14, v7, v3

    .line 2198
    .local v14, "nextHeartbeat":J
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_45

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting heartbeat alarm for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v14, v5

    .line 2200
    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2199
    const-string v2, "JobScheduler"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2203
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v10, 0x3

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    iget-object v13, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const-string v16, "*job.heartbeat*"

    move-object v9, v0

    move-wide v11, v14

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-wide/from16 v18, v14

    .end local v14  # "nextHeartbeat":J
    .local v18, "nextHeartbeat":J
    move-object v14, v2

    move-object/from16 v15, v17

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2205
    return-void

    .line 2194
    .end local v0  # "am":Landroid/app/AlarmManager;
    .end local v3  # "heartbeatLength":J
    .end local v5  # "now":J
    .end local v7  # "nextBeatOrdinal":J
    .end local v18  # "nextHeartbeat":J
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method

.method triggerDockState(Z)V
    .registers 5
    .param p1, "idleState"  # Z

    .line 3208
    if-eqz p1, :cond_a

    .line 3209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_11

    .line 3211
    .end local v0  # "dockIntent":Landroid/content/Intent;
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3213
    .restart local v0  # "dockIntent":Landroid/content/Intent;
    :goto_11
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3214
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3215
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3216
    return-void
.end method

.method updateUidState(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "procState"  # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    const/4 v1, 0x2

    if-ne p2, v1, :cond_10

    .line 1218
    :try_start_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2b

    .line 1226
    :catchall_e
    move-exception v1

    goto :goto_2d

    .line 1219
    :cond_10
    const/4 v1, 0x5

    if-gt p2, v1, :cond_1b

    .line 1220
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x23

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2b

    .line 1221
    :cond_1b
    const/4 v1, 0x6

    if-gt p2, v1, :cond_26

    .line 1222
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2b

    .line 1224
    :cond_26
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1226
    :goto_2b
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_e

    throw v1
.end method
