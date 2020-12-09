.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$Injector;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$StationaryListener;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_REASON_ALARM:I = 0x7

.field private static final ACTIVE_REASON_CHARGING:I = 0x3

.field private static final ACTIVE_REASON_FORCED:I = 0x6

.field private static final ACTIVE_REASON_FROM_BINDER_CALL:I = 0x5

.field private static final ACTIVE_REASON_MOTION:I = 0x1

.field private static final ACTIVE_REASON_SCREEN:I = 0x2

.field private static final ACTIVE_REASON_UNKNOWN:I = 0x0

.field private static final ACTIVE_REASON_UNLOCKED:I = 0x4

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field static final LIGHT_STATE_ACTIVE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_IDLE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_INACTIVE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_OVERRIDE:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_PRE_IDLE:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_PRE_IDLE_FACTOR_CHANGE:F = 0.05f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_STATE_STEP_ALARM_CHANGE:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field static final MSG_REPORT_STATIONARY_STATUS:I = 0xd
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_RESET_PRE_IDLE_TIMEOUT_FACTOR:I = 0xc

.field private static final MSG_SEND_CONSTRAINT_MONITORING:I = 0xa

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_UPDATE_PRE_IDLE_TIMEOUT_FACTOR:I = 0xb

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field static final SET_IDLE_FACTOR_RESULT_IGNORED:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SET_IDLE_FACTOR_RESULT_INVALID:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SET_IDLE_FACTOR_RESULT_NOT_SUPPORT:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SET_IDLE_FACTOR_RESULT_OK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SET_IDLE_FACTOR_RESULT_UNINIT:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_ACTIVE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_IDLE:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_IDLE_MAINTENANCE:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_IDLE_PENDING:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_INACTIVE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_LOCATING:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_QUICK_DOZE_DELAY:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_SENSING:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActiveReason:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

.field private final mConstraints:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/deviceidle/IDeviceIdleConstraint;",
            "Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCurIdleBudget:J

.field final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDeepEnabled:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private mIdleStartTime:J

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInjector:Lcom/android/server/DeviceIdleController$Injector;

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private mLastMotionEventElapsed:J

.field private mLastPreIdleFactor:F

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private final mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mNumBlockingConstraints:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreIdleFactor:F

.field private mQuickDozeActivated:Z

.field private mQuickDozeActivatedWhileIdling:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedMaintenanceActivity:Z

.field private mScreenLocked:Z

.field private mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private final mStationaryListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/DeviceIdleController$StationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUseMotionSensor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1970
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    .line 1971
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 320
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 463
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 470
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 476
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 482
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 487
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 492
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 498
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 504
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 511
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 516
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 522
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 527
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 533
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 539
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 547
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 553
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 555
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 565
    const/16 v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 566
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 567
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 580
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 617
    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$pUAsoxLVwpJ9Ac-b6Wbul1k9bIw;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$pUAsoxLVwpJ9Ac-b6Wbul1k9bIw;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 625
    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$t0VfPABg4g5djO2-js6H17nAdXk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$t0VfPABg4g5djO2-js6H17nAdXk;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 640
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 654
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 665
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 680
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 803
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 805
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 826
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1946
    new-instance v0, Lcom/android/server/DeviceIdleController$9;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$9;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1961
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 1962
    new-instance p2, Lcom/android/internal/os/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "deviceidle.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1963
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p2, p0}, Lcom/android/server/DeviceIdleController$Injector;->getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1964
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1965
    const-class p1, Lcom/android/server/AppStateTracker;

    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1966
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->useMotionSensor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 1967
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)I
    .registers 1

    .line 265
    iget p0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/DeviceIdleController;)Z
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 3

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 2

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method private addEvent(ILjava/lang/String;)V
    .registers 7

    .line 570
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq v2, p1, :cond_27

    .line 571
    const/16 v2, 0x63

    const/4 v3, 0x1

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 575
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 576
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, p1, v1

    .line 578
    :cond_27
    return-void
.end method

.method private becomeActiveLocked(Ljava/lang/String;IJZ)V
    .registers 7

    .line 2812
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2a

    .line 2813
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2814
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2815
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2816
    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2817
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2818
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2820
    if-eqz p5, :cond_2a

    .line 2821
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2822
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2823
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2825
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2826
    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2829
    :cond_2a
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 3626
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3627
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1e

    .line 3628
    move v2, v0

    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 3629
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3628
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3632
    :cond_1e
    if-eqz p1, :cond_37

    .line 3633
    move p0, v0

    :goto_21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p0, v2, :cond_37

    .line 3634
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3633
    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    .line 3637
    :cond_37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    .line 3638
    new-array p1, p0, [I

    .line 3639
    nop

    :goto_3e
    if-ge v0, p0, :cond_49

    .line 3640
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    aput v1, p1, v0

    .line 3639
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 3642
    :cond_49
    return-object p1
.end method

.method private cancelMotionRegistrationAlarmLocked()V
    .registers 3

    .line 3551
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3552
    return-void
.end method

.method private cancelMotionTimeoutAlarmLocked()V
    .registers 3

    .line 3547
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3548
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3850
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3854
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3855
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3858
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3862
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3863
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3864
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3866
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3868
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3869
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3873
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3874
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3876
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3878
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3880
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3881
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3883
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3884
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3888
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3894
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    const-string v0, "  pre-idle-factor [0|1|2]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    const-string v0, "    Set a new factor to idle time before step to idle(inactive_to and idle_after_inactive_to)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    const-string v0, "  reset-pre-idle-factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3899
    const-string v0, "    Reset factor to idle time to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 1986
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isStationaryLocked()Z
    .registers 7

    .line 700
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 701
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 703
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 701
    :goto_22
    return v0
.end method

.method private static synthetic lambda$stepIdleStateLocked$3(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z
    .registers 1

    .line 3081
    iget-boolean p0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return p0
.end method

.method private static synthetic lambda$stepIdleStateLocked$4(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;
    .registers 1

    .line 3082
    iget-object p0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    return-object p0
.end method

.method static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 415
    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x7

    if-eq p0, v0, :cond_19

    .line 423
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 422
    :cond_19
    const-string p0, "OVERRIDE"

    return-object p0

    .line 421
    :cond_1c
    const-string p0, "IDLE_MAINTENANCE"

    return-object p0

    .line 420
    :cond_1f
    const-string p0, "WAITING_FOR_NETWORK"

    return-object p0

    .line 419
    :cond_22
    const-string p0, "IDLE"

    return-object p0

    .line 418
    :cond_25
    const-string p0, "PRE_IDLE"

    return-object p0

    .line 417
    :cond_28
    const-string p0, "INACTIVE"

    return-object p0

    .line 416
    :cond_2b
    const-string p0, "ACTIVE"

    return-object p0
.end method

.method private maybeStopMonitoringMotionLocked()V
    .registers 2

    .line 3514
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1d

    .line 3515
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1a

    .line 3516
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3517
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3519
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionRegistrationAlarmLocked()V

    .line 3521
    :cond_1d
    return-void
.end method

.method private moveToStateLocked(ILjava/lang/String;)V
    .registers 4

    .line 3203
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3204
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3209
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3210
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3211
    return-void
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2641
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2642
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2643
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2645
    :try_start_12
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 2648
    goto :goto_1b

    .line 2647
    :catch_1a
    move-exception p1

    .line 2649
    :goto_1b
    return-void
.end method

.method private onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2189
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2190
    if-nez v0, :cond_26

    .line 2191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device-idle constraint "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has not been registered."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceIdleController"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    return-void

    .line 2194
    :cond_26
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eq p2, p1, :cond_6f

    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz p1, :cond_6f

    .line 2195
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2196
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    iget-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz p2, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    const/4 p2, -0x1

    :goto_39
    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2197
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-nez p1, :cond_6f

    .line 2198
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez p1, :cond_48

    .line 2199
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_6f

    .line 2200
    :cond_48
    iget-wide p1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_58

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gez p1, :cond_6f

    .line 2201
    :cond_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "s:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2205
    :cond_6f
    :goto_6f
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 5

    .line 3705
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    .line 3709
    return-void
.end method

.method private postResetPreIdleTimeoutFactor()V
    .registers 3

    .line 3334
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3335
    return-void
.end method

.method private postStationaryStatus(Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 4

    .line 691
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

.method private postStationaryStatusUpdated()V
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 697
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 7

    .line 2607
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2608
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2607
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2609
    return-void
.end method

.method private postUpdatePreIdleFactor()V
    .registers 3

    .line 3330
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3331
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11

    .line 3734
    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3738
    :goto_c
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_17

    if-eq v3, v5, :cond_17

    goto :goto_c

    .line 3743
    :cond_17
    if-ne v3, v4, :cond_bb

    .line 3747
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3748
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v5, :cond_13b

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2c

    .line 3749
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_13b

    .line 3750
    :cond_2c
    if-eq v4, v6, :cond_1d

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 3751
    goto :goto_1d

    .line 3754
    :cond_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3755
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xed5

    if-eq v7, v8, :cond_50

    const v8, 0x6a37689

    if-eq v7, v8, :cond_45

    :cond_44
    goto :goto_5b

    :cond_45
    const-string/jumbo v7, "un-wl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    move v4, v5

    goto :goto_5c

    :cond_50
    const-string/jumbo v7, "wl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_57} :catch_128
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_57} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_57} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_57} :catch_ec
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_57} :catch_d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_57} :catch_c4

    if-eqz v4, :cond_44

    const/4 v4, 0x0

    goto :goto_5c

    :goto_5b
    move v4, v6

    :goto_5c
    const-string/jumbo v6, "n"

    const/4 v7, 0x0

    if-eqz v4, :cond_9a

    if-eq v4, v5, :cond_80

    .line 3776
    :try_start_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <config>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3777
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3776
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b9

    .line 3769
    :cond_80
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3770
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 3771
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3772
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3771
    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 3757
    :cond_9a
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_9e} :catch_128
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_9e} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_9e} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_9e} :catch_ec
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_9e} :catch_d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_9e} :catch_c4

    .line 3758
    if-eqz v4, :cond_b9

    .line 3760
    const/high16 v6, 0x400000

    :try_start_a2
    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3762
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3763
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3762
    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a2 .. :try_end_b7} :catch_b8
    .catch Ljava/lang/IllegalStateException; {:try_start_a2 .. :try_end_b7} :catch_128
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_b7} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_b7} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_b7} :catch_ec
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b7} :catch_d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a2 .. :try_end_b7} :catch_c4

    goto :goto_b9

    .line 3764
    :catch_b8
    move-exception v4

    .line 3781
    :cond_b9
    :goto_b9
    goto/16 :goto_1d

    .line 3744
    :cond_bb
    :try_start_bb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "no start tag found"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c4
    .catch Ljava/lang/IllegalStateException; {:try_start_bb .. :try_end_c4} :catch_128
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_c4} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_c4} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_c4} :catch_ec
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c4} :catch_d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bb .. :try_end_c4} :catch_c4

    .line 3793
    :catch_c4
    move-exception p1

    .line 3794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 3791
    :catch_d8
    move-exception p1

    .line 3792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 3789
    :catch_ec
    move-exception p1

    .line 3790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 3787
    :catch_100
    move-exception p1

    .line 3788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 3785
    :catch_114
    move-exception p1

    .line 3786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 3783
    :catch_128
    move-exception p1

    .line 3784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    :cond_13b
    :goto_13b
    nop

    .line 3796
    :goto_13c
    return-void
.end method

.method private registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 5

    .line 2154
    if-eqz p3, :cond_1e

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1c

    .line 2162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registering device-idle constraint with invalid type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceIdleController"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    return-void

    .line 2159
    :cond_1c
    const/4 p3, 0x3

    .line 2160
    goto :goto_20

    .line 2156
    :cond_1e
    const/4 p3, 0x0

    .line 2157
    nop

    .line 2165
    :goto_20
    monitor-enter p0

    .line 2166
    :try_start_21
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2167
    const-string p2, "DeviceIdleController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Re-registering device-idle constraint: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    monitor-exit p0

    return-void

    .line 2170
    :cond_46
    new-instance v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-direct {v0, p2, p3}, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;-><init>(Ljava/lang/String;I)V

    .line 2171
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2173
    monitor-exit p0

    .line 2174
    return-void

    .line 2173
    :catchall_55
    move-exception p1

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_55

    throw p1
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 5

    .line 2591
    monitor-enter p0

    .line 2592
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2593
    if-gez v0, :cond_b

    .line 2595
    monitor-exit p0

    return-void

    .line 2597
    :cond_b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2598
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2599
    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2600
    monitor-exit p0

    .line 2601
    return-void

    .line 2600
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .registers 4

    .line 2582
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 2584
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2585
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2587
    goto :goto_15

    .line 2586
    :catch_14
    move-exception p1

    .line 2588
    :goto_15
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .line 3693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3694
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3695
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3696
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .line 3699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3700
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3702
    return-void
.end method

.method private resetIdleManagementLocked()V
    .registers 3

    .line 2928
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2929
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2930
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2931
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 2932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 2933
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2935
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2936
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 2937
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2938
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2939
    return-void
.end method

.method private resetLightIdleManagementLocked()V
    .registers 1

    .line 2942
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2943
    return-void
.end method

.method private scheduleAlarmLocked(JZZ)V
    .registers 12

    .line 3568
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    .line 3579
    return-void

    .line 3581
    :cond_14
    if-eqz p4, :cond_18

    .line 3582
    const/4 p4, 0x2

    goto :goto_19

    :cond_18
    const/4 p4, 0x3

    :goto_19
    move v1, p4

    .line 3583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3584
    if-eqz p3, :cond_31

    .line 3585
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v4, "DeviceIdleController.deep"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_3e

    .line 3588
    :cond_31
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v4, "DeviceIdleController.deep"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3591
    :goto_3e
    return-void
.end method

.method private scheduleMotionRegistrationAlarmLocked()V
    .registers 12

    .line 3602
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 3603
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long v6, v0, v2

    .line 3604
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v5, 0x2

    const-string v8, "DeviceIdleController.motion_registration"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3607
    return-void
.end method

.method private scheduleMotionTimeoutAlarmLocked()V
    .registers 12

    .line 3611
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 3612
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    add-long v6, v0, v2

    .line 3613
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v5, 0x2

    const-string v8, "DeviceIdleController.motion"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3615
    return-void
.end method

.method private setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2209
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2210
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v1, p2, :cond_1d

    .line 2211
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 2212
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2215
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xa

    .line 2216
    const/4 v2, -0x1

    .line 2215
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2218
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2220
    :cond_1d
    return-void
.end method

.method private shouldUseIdleTimeoutFactorLocked()Z
    .registers 3

    .line 3376
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 3377
    const/4 v0, 0x0

    return v0

    .line 3379
    :cond_7
    return v1
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    packed-switch p0, :pswitch_data_20

    .line 386
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :pswitch_8  #0x7
    const-string p0, "QUICK_DOZE_DELAY"

    return-object p0

    .line 384
    :pswitch_b  #0x6
    const-string p0, "IDLE_MAINTENANCE"

    return-object p0

    .line 383
    :pswitch_e  #0x5
    const-string p0, "IDLE"

    return-object p0

    .line 382
    :pswitch_11  #0x4
    const-string p0, "LOCATING"

    return-object p0

    .line 381
    :pswitch_14  #0x3
    const-string p0, "SENSING"

    return-object p0

    .line 380
    :pswitch_17  #0x2
    const-string p0, "IDLE_PENDING"

    return-object p0

    .line 379
    :pswitch_1a  #0x1
    const-string p0, "INACTIVE"

    return-object p0

    .line 378
    :pswitch_1d  #0x0
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method

.method private unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 3

    .line 2177
    monitor-enter p0

    .line 2179
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2182
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2183
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    monitor-exit p0

    .line 2185
    return-void

    .line 2184
    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private unregisterStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 3

    .line 729
    monitor-enter p0

    .line 730
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_21

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz p1, :cond_1e

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz p1, :cond_21

    .line 736
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 738
    :cond_21
    monitor-exit p0

    .line 739
    return-void

    .line 738
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private updateActiveConstraintsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2225
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2226
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2227
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2228
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    move v4, v6

    goto :goto_26

    :cond_25
    move v4, v0

    .line 2229
    :goto_26
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v4, v5, :cond_2f

    .line 2230
    invoke-direct {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2231
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2233
    :cond_2f
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v2, :cond_3c

    .line 2234
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2225
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2237
    :cond_3f
    return-void
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .registers 7

    .line 3667
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3668
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_f

    .line 3669
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3671
    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1f

    .line 3672
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 3671
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3674
    :cond_1f
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_28

    .line 3679
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 3682
    :cond_28
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_31

    .line 3687
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {p1, p2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 3689
    :cond_31
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3690
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .line 3646
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 3648
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3650
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 3652
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2e

    .line 3653
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 3656
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_37

    .line 3661
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 3663
    :cond_37
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3664
    return-void
.end method

.method private verifyAlarmStateLocked()V
    .registers 7

    .line 2849
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-wide/16 v1, 0x0

    const-string v3, "DeviceIdleController"

    if-nez v0, :cond_24

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_24

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState=ACTIVE but mNextAlarmTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_24
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_50

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but AlarmManager is idling"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_50
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v4, :cond_61

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-nez v0, :cond_61

    .line 2856
    const-string v0, "mState=IDLE but AlarmManager is not idling"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_61
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_8f

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_8f

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLightState=ACTIVE but mNextLightAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2859
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_8f
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2475
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2476
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2475
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v0

    move v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2484
    const/4 v9, 0x1

    move-object v3, p0

    move v4, v0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v10, p5

    :try_start_2d
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_35

    .line 2487
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2488
    nop

    .line 2489
    return-void

    .line 2487
    :catchall_35
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 16

    .line 2531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2532
    nop

    .line 2533
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2534
    monitor-enter p0

    .line 2535
    :try_start_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2536
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_3b

    .line 2537
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_3b

    .line 2538
    :cond_1b
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Calling app "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not on whitelist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2542
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, p1, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 2543
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 2544
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_51

    move v5, v4

    goto :goto_52

    :cond_51
    move v5, v3

    .line 2546
    :goto_52
    if-eqz v5, :cond_65

    .line 2547
    new-instance p1, Landroid/util/Pair;

    new-instance v6, Landroid/util/MutableLong;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {p1, v6, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2548
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2550
    :cond_65
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/util/MutableLong;

    add-long/2addr v0, p3

    iput-wide v0, p1, Landroid/util/MutableLong;->value:J
    :try_end_6c
    .catchall {:try_start_a .. :try_end_6c} :catchall_99

    .line 2554
    if-eqz v5, :cond_90

    .line 2557
    :try_start_6e
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v0, 0x8011

    invoke-interface {p1, v0, p6, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_76} :catch_77
    .catchall {:try_start_6e .. :try_end_76} :catchall_99

    .line 2560
    goto :goto_78

    .line 2559
    :catch_77
    move-exception p1

    .line 2561
    :goto_78
    :try_start_78
    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2562
    invoke-direct {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2563
    if-eqz p5, :cond_82

    .line 2564
    move v3, v4

    goto :goto_8d

    .line 2566
    :cond_82
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2567
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2569
    :goto_8d
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2571
    :cond_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_99

    .line 2572
    if-eqz v3, :cond_98

    .line 2573
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 2575
    :cond_98
    return-void

    .line 2571
    :catchall_99
    move-exception p1

    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16

    .line 2519
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 2520
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 2522
    goto :goto_16

    .line 2521
    :catch_15
    move-exception p1

    .line 2523
    :goto_16
    return-void
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2240
    monitor-enter p0

    .line 2242
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2244
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 2245
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2246
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    .line 2249
    :cond_2a
    const/4 p1, 0x1

    :try_start_2b
    monitor-exit p0

    return p1

    .line 2253
    :catchall_2d
    move-exception p1

    goto :goto_33

    .line 2250
    :catch_2f
    move-exception p1

    .line 2251
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2253
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_2d

    throw p1
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2311
    monitor-enter p0

    .line 2313
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2315
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    .line 2317
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2318
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2319
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2323
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 2325
    :cond_38
    const/4 p1, 0x1

    :try_start_39
    monitor-exit p0

    return p1

    .line 2329
    :catchall_3b
    move-exception p1

    goto :goto_41

    .line 2326
    :catch_3d
    move-exception p1

    .line 2327
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2329
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_3b

    throw p1
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 10

    .line 2803
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 2804
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 7

    .line 2866
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->verifyAlarmStateLocked()V

    .line 2868
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 2880
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_21

    .line 2881
    :cond_20
    return-void

    .line 2884
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string/jumbo v3, "no activity"

    if-eqz v0, :cond_69

    .line 2885
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_4b

    .line 2886
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_4a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4a

    const/4 v5, 0x6

    if-ne v0, v5, :cond_38

    goto :goto_4a

    .line 2897
    :cond_38
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2899
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2904
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-direct {p0, v4, v5, v2, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZZ)V

    .line 2905
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_69

    .line 2891
    :cond_4a
    :goto_4a
    return-void

    .line 2906
    :cond_4b
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_69

    .line 2907
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2909
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2910
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2911
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2912
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 2914
    :cond_61
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2915
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2918
    :cond_69
    :goto_69
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_82

    .line 2919
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2921
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2922
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2923
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2925
    :cond_82
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .line 3524
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3525
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3526
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3528
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .line 3531
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3532
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3533
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3535
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .line 3538
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_17

    .line 3539
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3540
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3541
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3544
    :cond_17
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .line 3555
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3556
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3557
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3559
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 7

    .line 2612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2616
    monitor-enter p0

    .line 2617
    :try_start_5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2618
    if-nez v2, :cond_11

    .line 2620
    monitor-exit p0

    return-void

    .line 2622
    :cond_11
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_28

    .line 2623
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2624
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_32

    .line 2630
    :cond_28
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableLong;

    iget-wide v2, v2, Landroid/util/MutableLong;->value:J

    sub-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2632
    :goto_32
    monitor-exit p0

    .line 2633
    return-void

    .line 2632
    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw p1
.end method

.method decActiveIdleOps()V
    .registers 2

    .line 3220
    monitor-enter p0

    .line 3221
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3222
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_13

    .line 3223
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3224
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3226
    :cond_13
    monitor-exit p0

    .line 3227
    return-void

    .line 3226
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 4373
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 4375
    :cond_d
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_86

    .line 4376
    nop

    .line 4377
    move v2, v1

    move v3, v2

    :goto_14
    array-length v4, p3

    if-ge v2, v4, :cond_86

    .line 4378
    aget-object v4, p3, v2

    .line 4379
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4380
    invoke-static {p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4381
    return-void

    .line 4382
    :cond_25
    const-string v5, "-u"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 4383
    add-int/lit8 v2, v2, 0x1

    .line 4384
    array-length v4, p3

    if-ge v2, v4, :cond_41

    .line 4385
    aget-object v3, p3, v2

    .line 4386
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_41

    .line 4388
    :cond_39
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 4377
    :cond_41
    :goto_41
    add-int/2addr v2, v0

    goto :goto_14

    .line 4390
    :cond_43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_66

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_66

    .line 4391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown option: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    return-void

    .line 4394
    :cond_66
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4395
    iput v3, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4396
    array-length p2, p3

    sub-int/2addr p2, v2

    new-array v5, p2, [Ljava/lang/String;

    .line 4397
    array-length p2, p3

    sub-int/2addr p2, v2

    invoke-static {p3, v2, v5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4398
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/ResultReceiver;

    const/4 p2, 0x0

    invoke-direct {v7, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4400
    return-void

    .line 4405
    :cond_86
    monitor-enter p0

    .line 4406
    :try_start_87
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4408
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget p1, p1, v1

    if-eqz p1, :cond_fa

    .line 4409
    const-string p1, "  Idling history:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4411
    const/16 p1, 0x63

    :goto_9d
    if-ltz p1, :cond_fa

    .line 4412
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget p3, p3, p1

    .line 4413
    if-nez p3, :cond_a6

    .line 4414
    goto :goto_f7

    .line 4417
    :cond_a6
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget p3, p3, p1

    if-eq p3, v0, :cond_c7

    const/4 v4, 0x2

    if-eq p3, v4, :cond_c4

    const/4 v4, 0x3

    if-eq p3, v4, :cond_c1

    const/4 v4, 0x4

    if-eq p3, v4, :cond_be

    const/4 v4, 0x5

    if-eq p3, v4, :cond_bb

    .line 4423
    const-string p3, "         ??"

    goto :goto_c9

    .line 4422
    :cond_bb
    const-string p3, " deep-maint"

    goto :goto_c9

    .line 4421
    :cond_be
    const-string p3, "  deep-idle"

    goto :goto_c9

    .line 4420
    :cond_c1
    const-string p3, "light-maint"

    goto :goto_c9

    .line 4419
    :cond_c4
    const-string p3, " light-idle"

    goto :goto_c9

    .line 4418
    :cond_c7
    const-string p3, "     normal"

    .line 4425
    :goto_c9
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4426
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4427
    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4428
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v4, p3, p1

    invoke-static {v4, v5, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4429
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object p3, p3, p1

    if-eqz p3, :cond_f4

    .line 4430
    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4431
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4432
    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4434
    :cond_f4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4411
    :goto_f7
    add-int/lit8 p1, p1, -0x1

    goto :goto_9d

    .line 4439
    :cond_fa
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 4440
    if-lez p1, :cond_11d

    .line 4441
    const-string p3, "  Whitelist (except idle) system apps:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4442
    move p3, v1

    :goto_108
    if-ge p3, p1, :cond_11d

    .line 4443
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4444
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4442
    add-int/lit8 p3, p3, 0x1

    goto :goto_108

    .line 4447
    :cond_11d
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 4448
    if-lez p1, :cond_140

    .line 4449
    const-string p3, "  Whitelist system apps:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    move p3, v1

    :goto_12b
    if-ge p3, p1, :cond_140

    .line 4451
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4452
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    add-int/lit8 p3, p3, 0x1

    goto :goto_12b

    .line 4455
    :cond_140
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 4456
    if-lez p1, :cond_163

    .line 4457
    const-string p3, "  Removed from whitelist system apps:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4458
    move p3, v1

    :goto_14e
    if-ge p3, p1, :cond_163

    .line 4459
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4460
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4458
    add-int/lit8 p3, p3, 0x1

    goto :goto_14e

    .line 4463
    :cond_163
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 4464
    if-lez p1, :cond_186

    .line 4465
    const-string p3, "  Whitelist user apps:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4466
    move p3, v1

    :goto_171
    if-ge p3, p1, :cond_186

    .line 4467
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4466
    add-int/lit8 p3, p3, 0x1

    goto :goto_171

    .line 4471
    :cond_186
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    .line 4472
    if-lez p1, :cond_1aa

    .line 4473
    const-string p3, "  Whitelist (except idle) all app ids:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4474
    move p3, v1

    :goto_194
    if-ge p3, p1, :cond_1aa

    .line 4475
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4477
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4474
    add-int/lit8 p3, p3, 0x1

    goto :goto_194

    .line 4480
    :cond_1aa
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    .line 4481
    if-lez p1, :cond_1ce

    .line 4482
    const-string p3, "  Whitelist user app ids:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4483
    move p3, v1

    :goto_1b8
    if-ge p3, p1, :cond_1ce

    .line 4484
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4486
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4483
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b8

    .line 4489
    :cond_1ce
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    .line 4490
    if-lez p1, :cond_1f2

    .line 4491
    const-string p3, "  Whitelist all app ids:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4492
    move p3, v1

    :goto_1dc
    if-ge p3, p1, :cond_1f2

    .line 4493
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4495
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4492
    add-int/lit8 p3, p3, 0x1

    goto :goto_1dc

    .line 4498
    :cond_1f2
    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4500
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz p1, :cond_1fd

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length p1, p1

    goto :goto_1fe

    :cond_1fd
    move p1, v1

    .line 4501
    :goto_1fe
    if-lez p1, :cond_21a

    .line 4502
    const-string p3, "  Temp whitelist app ids:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4503
    move p3, v1

    :goto_206
    if-ge p3, p1, :cond_21a

    .line 4504
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v0, v0, p3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4506
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4503
    add-int/lit8 p3, p3, 0x1

    goto :goto_206

    .line 4510
    :cond_21a
    const-string p1, "  mLightEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 4511
    const-string p1, "  mDeepEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4512
    const-string p1, "  mForceIdle="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4513
    const-string p1, "  mUseMotionSensor="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 4514
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz p1, :cond_251

    .line 4515
    const-string p1, " mMotionSensor="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_254

    .line 4517
    :cond_251
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4519
    :goto_254
    const-string p1, "  mScreenOn="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4520
    const-string p1, "  mScreenLocked="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4521
    const-string p1, "  mNetworkConnected="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4522
    const-string p1, "  mCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4523
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-eqz p1, :cond_2d0

    .line 4524
    const-string p1, "  mConstraints={"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4525
    nop

    :goto_28a
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v1, p1, :cond_2cb

    .line 4526
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 4527
    const-string p3, "    \""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "\"="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4528
    iget p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne p3, v0, :cond_2b5

    .line 4529
    iget-boolean p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2c8

    .line 4531
    :cond_2b5
    const-string p3, "ignored <mMinState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4525
    :goto_2c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_28a

    .line 4535
    :cond_2cb
    const-string p1, "  }"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4537
    :cond_2d0
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-nez p1, :cond_2dc

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_31b

    .line 4538
    :cond_2dc
    const-string p1, "  mMotionActive="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4539
    const-string p1, "  mNotMoving="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4540
    const-string p1, "  mMotionListener.activatedTimeElapsed="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4541
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 4542
    const-string p1, "  mLastMotionEventElapsed="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 4543
    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4544
    const-string p1, " stationary listeners registered"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4546
    :cond_31b
    const-string p1, "  mLocating="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mHasGps="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4547
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mHasNetwork="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4548
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mLocated="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4549
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz p1, :cond_351

    .line 4550
    const-string p1, "  mLastGenericLocation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4552
    :cond_351
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz p1, :cond_35f

    .line 4553
    const-string p1, "  mLastGpsLocation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4555
    :cond_35f
    const-string p1, "  mState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    const-string p1, " mLightState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4557
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4558
    const-string p1, "  mInactiveTimeout="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4559
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4560
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz p1, :cond_396

    .line 4561
    const-string p1, "  mActiveIdleOpCount="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 4563
    :cond_396
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3af

    .line 4564
    const-string p1, "  mNextAlarmTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4565
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4566
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4568
    :cond_3af
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3c2

    .line 4569
    const-string p1, "  mNextIdlePendingDelay="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4570
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4573
    :cond_3c2
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3d5

    .line 4574
    const-string p1, "  mNextIdleDelay="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4576
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4578
    :cond_3d5
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3e8

    .line 4579
    const-string p1, "  mNextIdleDelay="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4580
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4581
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4583
    :cond_3e8
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3ff

    .line 4584
    const-string p1, "  mNextLightAlarmTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4585
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4586
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4588
    :cond_3ff
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_412

    .line 4589
    const-string p1, "  mCurIdleBudget="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4591
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4593
    :cond_412
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_429

    .line 4594
    const-string p1, "  mMaintenanceStartTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4598
    :cond_429
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz p1, :cond_437

    .line 4599
    const-string p1, "  mJobsActive="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4601
    :cond_437
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz p1, :cond_445

    .line 4602
    const-string p1, "  mAlarmsActive="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4604
    :cond_445
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    const/high16 p3, 0x3f800000  # 1.0f

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3d4ccccd  # 0.05f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_45f

    .line 4605
    const-string p1, "  mPreIdleFactor="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    .line 4607
    :cond_45f
    monitor-exit p0

    .line 4608
    return-void

    .line 4607
    :catchall_461
    move-exception p1

    monitor-exit p0
    :try_end_463
    .catchall {:try_start_87 .. :try_end_463} :catchall_461

    throw p1
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 10

    .line 4611
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4612
    if-lez v0, :cond_52

    .line 4613
    nop

    .line 4614
    if-eqz p2, :cond_13

    .line 4615
    const-string p2, "  Temp whitelist schedule:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    const-string p2, "    "

    goto :goto_15

    .line 4614
    :cond_13
    const-string p2, ""

    .line 4618
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4619
    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_52

    .line 4620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4621
    const-string v4, "UID="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4622
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4623
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4624
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4625
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    invoke-static {v5, v6, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4626
    const-string v5, " - "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4627
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4619
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 4630
    :cond_52
    return-void
.end method

.method exitForceIdleLocked()V
    .registers 3

    .line 2946
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1b

    .line 2947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2948
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1b

    .line 2949
    :cond_f
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2950
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "exit-force"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2953
    :cond_1b
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3

    .line 2652
    monitor-enter p0

    .line 2653
    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2655
    monitor-exit p0

    .line 2656
    return-void

    .line 2655
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw p1
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 5

    .line 3411
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_2e

    .line 3413
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3423
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v3, "s:early"

    if-ne v0, v2, :cond_20

    .line 3424
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_2e

    .line 3425
    :cond_20
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_2b

    .line 3426
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_2e

    .line 3428
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3432
    :cond_2e
    :goto_2e
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 2464
    monitor-enter p0

    .line 2465
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2466
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 2458
    monitor-enter p0

    .line 2459
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2460
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 2446
    monitor-enter p0

    .line 2447
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2448
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 2452
    monitor-enter p0

    .line 2453
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2454
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 6

    .line 2398
    monitor-enter p0

    .line 2399
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2400
    new-array v0, v0, [Ljava/lang/String;

    .line 2401
    nop

    .line 2402
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_14
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 2403
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 2404
    add-int/lit8 v3, v3, 0x1

    .line 2402
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2406
    :cond_2b
    nop

    :goto_2c
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 2407
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 2408
    add-int/lit8 v3, v3, 0x1

    .line 2406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 2410
    :cond_43
    monitor-exit p0

    return-object v0

    .line 2411
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 6

    .line 2415
    monitor-enter p0

    .line 2416
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2417
    new-array v0, v0, [Ljava/lang/String;

    .line 2418
    nop

    .line 2419
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_14
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 2420
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 2421
    add-int/lit8 v3, v3, 0x1

    .line 2419
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2423
    :cond_2b
    nop

    :goto_2c
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 2424
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 2425
    add-int/lit8 v3, v3, 0x1

    .line 2423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 2427
    :cond_43
    monitor-exit p0

    return-object v0

    .line 2428
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method getLightState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2969
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    return v0
.end method

.method getNextAlarmTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3403
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    return-wide v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2269
    monitor-enter p0

    .line 2270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 2271
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2348
    monitor-enter p0

    .line 2349
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 2350
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1980
    monitor-enter p0

    .line 1981
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1982
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getPreIdleTimeoutByMode(I)F
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3276
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    .line 3287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time out factor mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeviceIdleController"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return v0

    .line 3281
    :cond_21
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget p1, p1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    return p1

    .line 3278
    :cond_26
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget p1, p1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    return p1

    .line 3284
    :cond_2b
    return v0
.end method

.method getPreIdleTimeoutFactor()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3295
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    return v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .registers 5

    .line 2376
    monitor-enter p0

    .line 2377
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2378
    new-array v1, v0, [Ljava/lang/String;

    .line 2379
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2380
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2379
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2382
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2383
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method getState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3057
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .line 2354
    monitor-enter p0

    .line 2355
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2356
    new-array v1, v0, [Ljava/lang/String;

    .line 2357
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2358
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2357
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2360
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2361
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 2365
    monitor-enter p0

    .line 2366
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2367
    new-array v1, v0, [Ljava/lang/String;

    .line 2368
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2369
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2368
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2371
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2372
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 4

    .line 2387
    monitor-enter p0

    .line 2388
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2389
    new-array v0, v0, [Ljava/lang/String;

    .line 2390
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 2391
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2390
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2393
    :cond_1f
    monitor-exit p0

    return-object v0

    .line 2394
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 14

    .line 3441
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 3442
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 3443
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 3447
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionRegistrationAlarmLocked()V

    .line 3449
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-nez v0, :cond_1a

    .line 3454
    return-void

    .line 3456
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3460
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v3

    .line 3463
    :goto_2c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v4, v2, :cond_36

    move v9, v3

    goto :goto_37

    :cond_36
    move v9, v1

    :goto_37
    move-object v4, p0

    move-object v5, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3464
    if-eqz v0, :cond_42

    .line 3465
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3467
    :cond_42
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 6

    .line 3804
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3807
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 3808
    :try_start_6
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3809
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3810
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3811
    monitor-exit p0

    .line 3813
    goto :goto_1d

    .line 3811
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 3812
    :catch_1c
    move-exception v1

    .line 3815
    :goto_1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v1

    .line 3816
    const/4 v2, 0x0

    .line 3818
    :try_start_21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3819
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 3820
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3821
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3822
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3823
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_3b
    .catchall {:try_start_21 .. :try_end_38} :catchall_39

    .line 3827
    goto :goto_48

    .line 3828
    :catchall_39
    move-exception v0

    goto :goto_4a

    .line 3824
    :catch_3b
    move-exception v0

    .line 3825
    :try_start_3c
    const-string v3, "DeviceIdleController"

    const-string v4, "Error writing config file"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3826
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3828
    :goto_48
    monitor-exit v1

    .line 3829
    return-void

    .line 3828
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_39

    throw v0
.end method

.method hasMotionSensor()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2148
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method incActiveIdleOps()V
    .registers 2

    .line 3214
    monitor-enter p0

    .line 3215
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3216
    monitor-exit p0

    .line 3217
    return-void

    .line 3216
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 3

    .line 1974
    monitor-enter p0

    .line 1975
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    .line 1976
    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method isCharging()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2731
    monitor-enter p0

    .line 2732
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    monitor-exit p0

    return v0

    .line 2733
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isKeyguardShowing()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2779
    monitor-enter p0

    .line 2780
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    monitor-exit p0

    return v0

    .line 2781
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isNetworkConnected()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2660
    monitor-enter p0

    .line 2661
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    monitor-exit p0

    return v0

    .line 2662
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 2

    .line 3407
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2439
    monitor-enter p0

    .line 2440
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2441
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    monitor-exit p0

    .line 2440
    return p1

    .line 2442
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2432
    monitor-enter p0

    .line 2433
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2434
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    monitor-exit p0

    .line 2433
    return p1

    .line 2435
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method isQuickDozeEnabled()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2754
    monitor-enter p0

    .line 2755
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    monitor-exit p0

    return v0

    .line 2756
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isScreenOn()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2704
    monitor-enter p0

    .line 2705
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    monitor-exit p0

    return v0

    .line 2706
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2787
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1f

    .line 2788
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2789
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez p1, :cond_1f

    .line 2790
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2791
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const-string/jumbo v0, "unlocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2794
    :cond_1f
    return-void
.end method

.method public synthetic lambda$new$0$DeviceIdleController()V
    .registers 2

    .line 618
    monitor-enter p0

    .line 619
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 620
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 622
    :cond_c
    monitor-exit p0

    .line 623
    return-void

    .line 622
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public synthetic lambda$new$1$DeviceIdleController()V
    .registers 3

    .line 626
    monitor-enter p0

    .line 627
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 633
    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit p0

    return-void

    .line 636
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 637
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 638
    return-void

    .line 636
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public synthetic lambda$onBootPhase$2$DeviceIdleController(Landroid/os/PowerSaveState;)V
    .registers 2

    .line 2129
    monitor-enter p0

    .line 2130
    :try_start_1
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2131
    monitor-exit p0

    .line 2132
    return-void

    .line 2131
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method maybeDoImmediateMaintenance()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3362
    monitor-enter p0

    .line 3363
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 3364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    sub-long/2addr v0, v2

    .line 3367
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    .line 3368
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3371
    :cond_1b
    monitor-exit p0

    .line 3372
    return-void

    .line 3371
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .line 3436
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 3437
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 3438
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 4

    .line 1359
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 1360
    monitor-enter p0

    .line 1361
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1362
    monitor-exit p0

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1

    .line 1364
    :cond_c
    :goto_c
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3c

    if-ne p1, v0, :cond_12

    goto :goto_3c

    .line 1369
    :cond_12
    if-nez p1, :cond_48

    .line 1370
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_27

    .line 1372
    monitor-enter p0

    .line 1373
    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1374
    const-string/jumbo p1, "s:stationary"

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1375
    monitor-exit p0

    goto :goto_48

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p1

    .line 1376
    :cond_27
    const/4 v0, 0x4

    if-ne p1, v0, :cond_48

    .line 1379
    monitor-enter p0

    .line 1380
    :try_start_2b
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1381
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz p1, :cond_37

    .line 1382
    const-string/jumbo p1, "s:stationary"

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1384
    :cond_37
    monitor-exit p0

    goto :goto_48

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    throw p1

    .line 1366
    :cond_3c
    :goto_3c
    monitor-enter p0

    .line 1367
    :try_start_3d
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo p1, "non_stationary"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1368
    monitor-exit p0

    .line 1387
    :cond_48
    :goto_48
    return-void

    .line 1368
    :catchall_49
    move-exception p1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 2052
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1ab

    .line 2053
    monitor-enter p0

    .line 2054
    :try_start_5
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2055
    const-class p1, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    .line 2056
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2057
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 2058
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2059
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2060
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 2061
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "deviceidle_maint"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2063
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2064
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "deviceidle_going_idle"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2066
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2067
    const-string/jumbo p1, "netpolicy"

    .line 2068
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2067
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 2069
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 2070
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2072
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz p1, :cond_8e

    .line 2073
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2076
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 2078
    new-instance p1, Landroid/location/LocationRequest;

    invoke-direct {p1}, Landroid/location/LocationRequest;-><init>()V

    const/16 v0, 0x64

    .line 2079
    invoke-virtual {p1, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object p1

    .line 2080
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object p1

    .line 2081
    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object p1

    .line 2082
    invoke-virtual {p1, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2085
    :cond_ba
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2086
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2085
    invoke-virtual {p1, v0, v1}, Lcom/android/server/DeviceIdleController$Injector;->getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleController$LocalService;)Lcom/android/server/deviceidle/ConstraintController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    .line 2087
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    if-eqz p1, :cond_d5

    .line 2088
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    invoke-interface {p1}, Lcom/android/server/deviceidle/ConstraintController;->start()V

    .line 2091
    :cond_d5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p1, v0

    .line 2093
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/server/DeviceIdleController$Injector;->getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 2096
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    .line 2098
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 2099
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v0, 0x50000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2101
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 2102
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2105
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 2106
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2109
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 2110
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2111
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2114
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 2115
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2118
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 2119
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2120
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2123
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 2125
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2127
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$XHtDp82oR6rwjHDEkXhoJ_Wo3AQ;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$XHtDp82oR6rwjHDEkXhoJ_Wo3AQ;-><init>(Lcom/android/server/DeviceIdleController;)V

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 2133
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2134
    invoke-virtual {p1, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2137
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2139
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2140
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 2141
    monitor-exit p0
    :try_end_1a3
    .catchall {:try_start_5 .. :try_end_1a3} :catchall_1a8

    .line 2142
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_1ab

    .line 2141
    :catchall_1a8
    move-exception p1

    :try_start_1a9
    monitor-exit p0
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw p1

    .line 2144
    :cond_1ab
    :goto_1ab
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 18

    .line 3918
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 3919
    const-string/jumbo v4, "step"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v4, :cond_8c

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    monitor-enter p0

    .line 3923
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3924
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_88

    .line 3926
    if-eqz v2, :cond_67

    :try_start_2c
    const-string v5, "deep"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_67

    .line 3930
    :cond_35
    const-string v5, "light"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 3931
    const-string/jumbo v2, "s:shell"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3932
    const-string v2, "Stepped to light: "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 3934
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 3927
    :cond_67
    :goto_67
    const-string/jumbo v2, "s:shell"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3928
    const-string v2, "Stepped to deep: "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_2c .. :try_end_7b} :catchall_82

    .line 3937
    :goto_7b
    :try_start_7b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3938
    nop

    .line 3939
    monitor-exit p0

    goto/16 :goto_8ef

    .line 3937
    :catchall_82
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3939
    :catchall_88
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_88

    throw v2

    .line 3940
    :cond_8c
    const-string v4, "force-idle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eqz v4, :cond_158

    .line 3941
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    monitor-enter p0

    .line 3944
    :try_start_a2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3945
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_154

    .line 3947
    if-eqz v2, :cond_105

    :try_start_ac
    const-string v5, "deep"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    goto :goto_105

    .line 3966
    :cond_b5
    const-string v5, "light"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 3967
    iput-boolean v12, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3968
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3969
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3970
    :goto_c4
    if-eq v2, v9, :cond_ea

    .line 3971
    const-string/jumbo v5, "s:shell"

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3972
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v5, :cond_e7

    .line 3973
    const-string v2, "Unable to go light idle; stopped at "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3974
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e1
    .catchall {:try_start_ac .. :try_end_e1} :catchall_14e

    .line 3976
    nop

    .line 3985
    :try_start_e2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_154

    .line 3976
    return v11

    .line 3978
    :cond_e7
    :try_start_e7
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    goto :goto_c4

    .line 3980
    :cond_ea
    const-string v2, "Now forced in to light idle mode"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    goto :goto_147

    .line 3982
    :cond_f0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_147

    .line 3948
    :cond_105
    :goto_105
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v2, :cond_114

    .line 3949
    const-string v2, "Unable to go deep idle; not enabled"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_e7 .. :try_end_10e} :catchall_14e

    .line 3950
    nop

    .line 3985
    :try_start_10f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_154

    .line 3950
    return v11

    .line 3952
    :cond_114
    :try_start_114
    iput-boolean v12, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3953
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3954
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3955
    :goto_11b
    if-eq v2, v10, :cond_141

    .line 3956
    const-string/jumbo v5, "s:shell"

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3957
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v2, v5, :cond_13e

    .line 3958
    const-string v2, "Unable to go deep idle; stopped at "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3959
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_138
    .catchall {:try_start_114 .. :try_end_138} :catchall_14e

    .line 3961
    nop

    .line 3985
    :try_start_139
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_13d
    .catchall {:try_start_139 .. :try_end_13d} :catchall_154

    .line 3961
    return v11

    .line 3963
    :cond_13e
    :try_start_13e
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    goto :goto_11b

    .line 3965
    :cond_141
    const-string v2, "Now forced in to deep idle mode"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_13e .. :try_end_146} :catchall_14e

    .line 3966
    nop

    .line 3985
    :goto_147
    :try_start_147
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3986
    nop

    .line 3987
    monitor-exit p0

    goto/16 :goto_8ef

    .line 3985
    :catchall_14e
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3987
    :catchall_154
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_157
    .catchall {:try_start_147 .. :try_end_157} :catchall_154

    throw v2

    .line 3988
    :cond_158
    const-string v4, "force-inactive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 3989
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    monitor-enter p0

    .line 3992
    :try_start_16a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_19c

    .line 3994
    :try_start_16e
    iput-boolean v12, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3995
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3996
    const-string v4, "Light state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    const-string v4, ", deep state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18f
    .catchall {:try_start_16e .. :try_end_18f} :catchall_196

    .line 4001
    :try_start_18f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4002
    nop

    .line 4003
    monitor-exit p0

    goto/16 :goto_8ef

    .line 4001
    :catchall_196
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4003
    :catchall_19c
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_19f
    .catchall {:try_start_18f .. :try_end_19f} :catchall_19c

    throw v2

    .line 4004
    :cond_1a0
    const-string/jumbo v4, "unforce"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 4005
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4007
    monitor-enter p0

    .line 4008
    :try_start_1b3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1b7
    .catchall {:try_start_1b3 .. :try_end_1b7} :catchall_1e3

    .line 4010
    :try_start_1b7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 4011
    const-string v4, "Light state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4012
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4013
    const-string v4, ", deep state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4014
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d6
    .catchall {:try_start_1b7 .. :try_end_1d6} :catchall_1dd

    .line 4016
    :try_start_1d6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4017
    nop

    .line 4018
    monitor-exit p0

    goto/16 :goto_8ef

    .line 4016
    :catchall_1dd
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4018
    :catchall_1e3
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_1e6
    .catchall {:try_start_1d6 .. :try_end_1e6} :catchall_1e3

    throw v2

    .line 4019
    :cond_1e7
    const-string v4, "get"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x6

    const/4 v14, 0x2

    if-eqz v4, :cond_2b8

    .line 4020
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    monitor-enter p0

    .line 4023
    :try_start_1fb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 4024
    if-eqz v2, :cond_2ac

    .line 4025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_205
    .catchall {:try_start_1fb .. :try_end_205} :catchall_2b4

    .line 4027
    :try_start_205
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_900

    :cond_20c
    goto :goto_256

    :sswitch_20d
    const-string/jumbo v5, "network"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    goto :goto_257

    :sswitch_217
    const-string v5, "charging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    move v13, v10

    goto :goto_257

    :sswitch_221
    const-string/jumbo v5, "quick"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    const/4 v5, 0x3

    move v13, v5

    goto :goto_257

    :sswitch_22d
    const-string v5, "light"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    move v13, v8

    goto :goto_257

    :sswitch_237
    const-string v5, "force"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    move v13, v14

    goto :goto_257

    :sswitch_241
    const-string v5, "deep"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    move v13, v12

    goto :goto_257

    :sswitch_24b
    const-string/jumbo v5, "screen"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    move v13, v9

    goto :goto_257

    :goto_256
    move v13, v11

    :goto_257
    packed-switch v13, :pswitch_data_91e

    .line 4035
    new-instance v5, Ljava/lang/StringBuilder;

    goto :goto_28f

    .line 4034
    :pswitch_25d  #0x6
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a1

    .line 4033
    :pswitch_263  #0x5
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a1

    .line 4032
    :pswitch_269  #0x4
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a1

    .line 4031
    :pswitch_26f  #0x3
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a1

    .line 4030
    :pswitch_275  #0x2
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a1

    .line 4029
    :pswitch_27b  #0x1
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a1

    .line 4028
    :pswitch_285  #0x0
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a1

    .line 4035
    :goto_28f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown get option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a1
    .catchall {:try_start_205 .. :try_end_2a1} :catchall_2a6

    .line 4038
    :goto_2a1
    :try_start_2a1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4039
    nop

    .line 4040
    goto :goto_2b1

    .line 4038
    :catchall_2a6
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4041
    :cond_2ac
    const-string v2, "Argument required"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    :goto_2b1
    monitor-exit p0

    goto/16 :goto_8ef

    :catchall_2b4
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_2b7
    .catchall {:try_start_2a1 .. :try_end_2b7} :catchall_2b4

    throw v2

    .line 4044
    :cond_2b8
    const-string v4, "disable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_368

    .line 4045
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    monitor-enter p0

    .line 4048
    :try_start_2ca
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4049
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_2d2
    .catchall {:try_start_2ca .. :try_end_2d2} :catchall_364

    .line 4051
    nop

    .line 4052
    nop

    .line 4053
    if-eqz v2, :cond_2ea

    :try_start_2d6
    const-string v5, "deep"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2ea

    const-string v5, "all"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e7

    goto :goto_2ea

    :cond_2e7
    move v5, v8

    move v6, v5

    goto :goto_2fc

    .line 4054
    :cond_2ea
    :goto_2ea
    nop

    .line 4055
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v5, :cond_2fa

    .line 4056
    iput-boolean v8, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4057
    nop

    .line 4058
    const-string v5, "Deep idle mode disabled"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v12

    move v6, v5

    goto :goto_2fc

    .line 4055
    :cond_2fa
    move v5, v8

    move v6, v12

    .line 4061
    :goto_2fc
    if-eqz v2, :cond_311

    const-string v9, "light"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_311

    const-string v9, "all"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30f

    goto :goto_311

    :cond_30f
    move v12, v6

    goto :goto_31f

    .line 4062
    :cond_311
    :goto_311
    nop

    .line 4063
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v6, :cond_31f

    .line 4064
    iput-boolean v8, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4065
    nop

    .line 4066
    const-string v5, "Light idle mode disabled"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v12

    .line 4069
    :cond_31f
    :goto_31f
    if-eqz v5, :cond_341

    .line 4070
    iput v13, v1, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 4071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_32d

    const-string v6, "all"

    goto :goto_32e

    :cond_32d
    move-object v6, v2

    :goto_32e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4072
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 4071
    invoke-virtual {p0, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 4074
    :cond_341
    if-nez v12, :cond_357

    .line 4075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_357
    .catchall {:try_start_2d6 .. :try_end_357} :catchall_35e

    .line 4078
    :cond_357
    :try_start_357
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4079
    nop

    .line 4080
    monitor-exit p0

    goto/16 :goto_8ef

    .line 4078
    :catchall_35e
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4080
    :catchall_364
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_367
    .catchall {:try_start_357 .. :try_end_367} :catchall_364

    throw v2

    .line 4081
    :cond_368
    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3fb

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    monitor-enter p0

    .line 4085
    :try_start_37a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4086
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_382
    .catchall {:try_start_37a .. :try_end_382} :catchall_3f7

    .line 4088
    nop

    .line 4089
    nop

    .line 4090
    if-eqz v2, :cond_39a

    :try_start_386
    const-string v5, "deep"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39a

    const-string v5, "all"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_397

    goto :goto_39a

    :cond_397
    move v5, v8

    move v6, v5

    goto :goto_3ac

    .line 4091
    :cond_39a
    :goto_39a
    nop

    .line 4092
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v5, :cond_3aa

    .line 4093
    iput-boolean v12, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4094
    nop

    .line 4095
    const-string v5, "Deep idle mode enabled"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v12

    move v6, v5

    goto :goto_3ac

    .line 4092
    :cond_3aa
    move v5, v8

    move v6, v12

    .line 4098
    :goto_3ac
    if-eqz v2, :cond_3c1

    const-string v9, "light"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c1

    const-string v9, "all"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3bf

    goto :goto_3c1

    :cond_3bf
    move v12, v6

    goto :goto_3cf

    .line 4099
    :cond_3c1
    :goto_3c1
    nop

    .line 4100
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v6, :cond_3cf

    .line 4101
    iput-boolean v12, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4102
    nop

    .line 4103
    const-string v5, "Light idle mode enable"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v12

    .line 4106
    :cond_3cf
    :goto_3cf
    if-eqz v5, :cond_3d4

    .line 4107
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4109
    :cond_3d4
    if-nez v12, :cond_3ea

    .line 4110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3ea
    .catchall {:try_start_386 .. :try_end_3ea} :catchall_3f1

    .line 4113
    :cond_3ea
    :try_start_3ea
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4114
    nop

    .line 4115
    monitor-exit p0

    goto/16 :goto_8ef

    .line 4113
    :catchall_3f1
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4115
    :catchall_3f7
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_3fa
    .catchall {:try_start_3ea .. :try_end_3fa} :catchall_3f7

    throw v2

    .line 4116
    :cond_3fb
    const-string v4, "enabled"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_460

    .line 4117
    monitor-enter p0

    .line 4118
    :try_start_404
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 4119
    if-eqz v2, :cond_44c

    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    goto :goto_44c

    .line 4121
    :cond_413
    const-string v3, "deep"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    .line 4122
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_421

    const-string v6, "1"

    :cond_421
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_459

    .line 4123
    :cond_425
    const-string v3, "light"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_437

    .line 4124
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_433

    const-string v6, "1"

    :cond_433
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_459

    .line 4126
    :cond_437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown idle mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_459

    .line 4120
    :cond_44c
    :goto_44c
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_456

    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_456

    const-string v6, "1"

    :cond_456
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4128
    :goto_459
    monitor-exit p0

    goto/16 :goto_8ef

    :catchall_45c
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_45f
    .catchall {:try_start_404 .. :try_end_45f} :catchall_45c

    throw v2

    .line 4129
    :cond_460
    const-string/jumbo v4, "whitelist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x3d

    const/16 v9, 0x2d

    const/16 v10, 0x2b

    if-eqz v4, :cond_5ad

    .line 4130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 4131
    if-eqz v3, :cond_524

    .line 4132
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v13, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v13, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4137
    :cond_482
    :try_start_482
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v12, :cond_505

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v9, :cond_49b

    .line 4138
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v10, :cond_49b

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_49b

    goto :goto_505

    .line 4142
    :cond_49b
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 4143
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4144
    if-ne v13, v10, :cond_4d5

    .line 4145
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4c0

    .line 4146
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f9

    .line 4148
    :cond_4c0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f9

    .line 4150
    :cond_4d5
    if-ne v13, v9, :cond_4f2

    .line 4151
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4f9

    .line 4152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f9

    .line 4155
    :cond_4f2
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4157
    :cond_4f9
    :goto_4f9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_4fd
    .catchall {:try_start_482 .. :try_end_4fd} :catchall_51e

    if-nez v3, :cond_482

    .line 4159
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4160
    nop

    .line 4161
    goto/16 :goto_5a7

    .line 4139
    :cond_505
    :goto_505
    :try_start_505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_519
    .catchall {:try_start_505 .. :try_end_519} :catchall_51e

    .line 4140
    nop

    .line 4159
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4140
    return v11

    .line 4159
    :catchall_51e
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4162
    :cond_524
    monitor-enter p0

    .line 4163
    move v2, v8

    :goto_526
    :try_start_526
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_550

    .line 4164
    const-string/jumbo v3, "system-excidle,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4165
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4166
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4167
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4163
    add-int/lit8 v2, v2, 0x1

    goto :goto_526

    .line 4169
    :cond_550
    move v2, v8

    :goto_551
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_57b

    .line 4170
    const-string/jumbo v3, "system,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4171
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4172
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4173
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4169
    add-int/lit8 v2, v2, 0x1

    goto :goto_551

    .line 4175
    :cond_57b
    move v2, v8

    :goto_57c
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a6

    .line 4176
    const-string/jumbo v3, "user,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4177
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4178
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4179
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4175
    add-int/lit8 v2, v2, 0x1

    goto :goto_57c

    .line 4181
    :cond_5a6
    monitor-exit p0

    .line 4183
    :goto_5a7
    goto/16 :goto_8ef

    .line 4181
    :catchall_5a9
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_5ac
    .catchall {:try_start_526 .. :try_end_5ac} :catchall_5a9

    throw v2

    .line 4183
    :cond_5ad
    const-string/jumbo v4, "tempwhitelist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63e

    .line 4184
    const-wide/16 v3, 0x2710

    .line 4185
    move-wide v4, v3

    move v3, v8

    .line 4187
    :cond_5ba
    :goto_5ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5fe

    .line 4188
    const-string v9, "-u"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5db

    .line 4189
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 4190
    if-nez v6, :cond_5d4

    .line 4191
    const-string v1, "-u requires a user number"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    return v11

    .line 4194
    :cond_5d4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5ba

    .line 4195
    :cond_5db
    const-string v9, "-d"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f4

    .line 4196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 4197
    if-nez v4, :cond_5ef

    .line 4198
    const-string v1, "-d requires a duration"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    return v11

    .line 4201
    :cond_5ef
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_5ba

    .line 4202
    :cond_5f4
    const-string v9, "-r"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5ba

    .line 4203
    move v3, v12

    goto :goto_5ba

    .line 4206
    :cond_5fe
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 4207
    if-eqz v6, :cond_631

    .line 4209
    if-eqz v3, :cond_60c

    .line 4210
    :try_start_606
    iget v2, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V

    goto :goto_619

    .line 4212
    :cond_60c
    iget v9, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v10, "shell"

    move-object v1, p0

    move-object v2, v6

    move-wide v3, v4

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_619
    .catch Ljava/lang/Exception; {:try_start_606 .. :try_end_619} :catch_61a

    .line 4217
    :goto_619
    goto :goto_63c

    .line 4214
    :catch_61a
    move-exception v0

    move-object v1, v0

    .line 4215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4216
    return v11

    .line 4218
    :cond_631
    if-eqz v3, :cond_639

    .line 4219
    const-string v1, "[-r] requires a package name"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    return v11

    .line 4222
    :cond_639
    invoke-virtual {p0, v7, v8}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4224
    :goto_63c
    goto/16 :goto_8ef

    :cond_63e
    const-string v4, "except-idle-whitelist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_710

    .line 4225
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4229
    :try_start_653
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4230
    if-nez v5, :cond_663

    .line 4231
    const-string v1, "No arguments given"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_65e
    .catchall {:try_start_653 .. :try_end_65e} :catchall_70a

    .line 4232
    nop

    .line 4259
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4232
    return v11

    .line 4233
    :cond_663
    :try_start_663
    const-string/jumbo v13, "reset"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_670

    .line 4234
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto :goto_6d2

    .line 4237
    :cond_670
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v12, :cond_6f1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v9, :cond_689

    .line 4238
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v10, :cond_689

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_689

    goto :goto_6f1

    .line 4242
    :cond_689
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 4243
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4244
    if-ne v13, v10, :cond_6c3

    .line 4245
    invoke-virtual {p0, v14}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6ae

    .line 4246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Added: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6cc

    .line 4248
    :cond_6ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown package: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6cc

    .line 4250
    :cond_6c3
    if-ne v13, v6, :cond_6d8

    .line 4251
    invoke-virtual {p0, v14}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4256
    :goto_6cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_6d0
    .catchall {:try_start_663 .. :try_end_6d0} :catchall_70a

    if-nez v5, :cond_670

    .line 4259
    :goto_6d2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4260
    nop

    .line 4261
    goto/16 :goto_8ef

    .line 4253
    :cond_6d8
    :try_start_6d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6ec
    .catchall {:try_start_6d8 .. :try_end_6ec} :catchall_70a

    .line 4254
    nop

    .line 4259
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4254
    return v11

    .line 4239
    :cond_6f1
    :goto_6f1
    :try_start_6f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_705
    .catchall {:try_start_6f1 .. :try_end_705} :catchall_70a

    .line 4240
    nop

    .line 4259
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4240
    return v11

    .line 4259
    :catchall_70a
    move-exception v0

    move-object v1, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4261
    :cond_710
    const-string/jumbo v4, "sys-whitelist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e5

    .line 4262
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 4263
    if-eqz v3, :cond_7b8

    .line 4264
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4268
    :try_start_72c
    const-string/jumbo v6, "reset"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_739

    .line 4269
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_794

    .line 4272
    :cond_739
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v12, :cond_799

    .line 4273
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_74c

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_74c

    goto :goto_799

    .line 4277
    :cond_74c
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 4278
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4279
    if-eq v6, v10, :cond_774

    if-eq v6, v9, :cond_759

    goto :goto_78e

    .line 4286
    :cond_759
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78e

    .line 4287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_78e

    .line 4281
    :cond_774
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78e

    .line 4282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restored "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4291
    :cond_78e
    :goto_78e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_792
    .catchall {:try_start_72c .. :try_end_792} :catchall_7b2

    if-nez v3, :cond_739

    .line 4294
    :goto_794
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4295
    nop

    .line 4296
    goto :goto_7df

    .line 4274
    :cond_799
    :goto_799
    :try_start_799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with + or - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7ad
    .catchall {:try_start_799 .. :try_end_7ad} :catchall_7b2

    .line 4275
    nop

    .line 4294
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4275
    return v11

    .line 4294
    :catchall_7b2
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4297
    :cond_7b8
    monitor-enter p0

    .line 4298
    move v2, v8

    :goto_7ba
    :try_start_7ba
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_7de

    .line 4299
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4300
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4301
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4298
    add-int/lit8 v2, v2, 0x1

    goto :goto_7ba

    .line 4303
    :cond_7de
    monitor-exit p0

    .line 4305
    :goto_7df
    goto/16 :goto_8ef

    .line 4303
    :catchall_7e1
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_7e4
    .catchall {:try_start_7ba .. :try_end_7e4} :catchall_7e1

    throw v2

    .line 4305
    :cond_7e5
    const-string/jumbo v4, "motion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82c

    .line 4306
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4308
    monitor-enter p0

    .line 4309
    :try_start_7f8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_7fc
    .catchall {:try_start_7f8 .. :try_end_7fc} :catchall_828

    .line 4311
    :try_start_7fc
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 4312
    const-string v4, "Light state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4313
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    const-string v4, ", deep state: "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4315
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_81b
    .catchall {:try_start_7fc .. :try_end_81b} :catchall_822

    .line 4317
    :try_start_81b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4318
    nop

    .line 4319
    monitor-exit p0

    goto/16 :goto_8ef

    .line 4317
    :catchall_822
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4319
    :catchall_828
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_82b
    .catchall {:try_start_81b .. :try_end_82b} :catchall_828

    throw v2

    .line 4320
    :cond_82c
    const-string/jumbo v4, "pre-idle-factor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d0

    .line 4321
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4323
    monitor-enter p0

    .line 4324
    :try_start_83f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_843
    .catchall {:try_start_83f .. :try_end_843} :catchall_8cc

    .line 4325
    nop

    .line 4327
    :try_start_844
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 4328
    nop

    .line 4329
    nop

    .line 4330
    if-eqz v2, :cond_880

    .line 4331
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4332
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result v11

    .line 4333
    if-ne v11, v12, :cond_86c

    .line 4334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pre-idle-factor: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4335
    goto :goto_881

    .line 4336
    :cond_86c
    if-ne v11, v14, :cond_875

    .line 4337
    nop

    .line 4338
    const-string v5, "Deep idle not supported"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_881

    .line 4339
    :cond_875
    if-nez v11, :cond_87e

    .line 4340
    nop

    .line 4341
    const-string v5, "Idle timeout factor not changed"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_881

    .line 4339
    :cond_87e
    move v12, v8

    goto :goto_881

    .line 4330
    :cond_880
    move v12, v8

    .line 4344
    :goto_881
    if-nez v12, :cond_8a4

    .line 4345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle timeout factor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",(error code: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a4
    .catch Ljava/lang/NumberFormatException; {:try_start_844 .. :try_end_8a4} :catch_8ab
    .catchall {:try_start_844 .. :try_end_8a4} :catchall_8a8

    .line 4352
    :cond_8a4
    :goto_8a4
    :try_start_8a4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8a7
    .catchall {:try_start_8a4 .. :try_end_8a7} :catchall_8cc

    .line 4353
    goto :goto_8c6

    .line 4352
    :catchall_8a8
    move-exception v0

    move-object v2, v0

    goto :goto_8c8

    .line 4348
    :catch_8ab
    move-exception v0

    .line 4349
    :try_start_8ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle timeout factor,(error code: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8c5
    .catchall {:try_start_8ac .. :try_end_8c5} :catchall_8a8

    goto :goto_8a4

    .line 4354
    :goto_8c6
    :try_start_8c6
    monitor-exit p0

    goto :goto_8ef

    .line 4352
    :goto_8c8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4354
    :catchall_8cc
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_8cf
    .catchall {:try_start_8c6 .. :try_end_8cf} :catchall_8cc

    throw v2

    .line 4355
    :cond_8d0
    const-string/jumbo v4, "reset-pre-idle-factor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8fa

    .line 4356
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    monitor-enter p0

    .line 4359
    :try_start_8e3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_8e7
    .catchall {:try_start_8e3 .. :try_end_8e7} :catchall_8f6

    .line 4361
    :try_start_8e7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_8ea
    .catchall {:try_start_8e7 .. :try_end_8ea} :catchall_8f0

    .line 4363
    :try_start_8ea
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    nop

    .line 4365
    monitor-exit p0

    .line 4369
    :goto_8ef
    return v8

    .line 4363
    :catchall_8f0
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4365
    :catchall_8f6
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_8f9
    .catchall {:try_start_8ea .. :try_end_8f9} :catchall_8f6

    throw v2

    .line 4367
    :cond_8fa
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    nop

    :sswitch_data_900
    .sparse-switch
        -0x361a3f94 -> :sswitch_24b
        0x2efcec -> :sswitch_241
        0x5d18aeb -> :sswitch_237
        0x6233516 -> :sswitch_22d
        0x66f25ed -> :sswitch_221
        0x55996271 -> :sswitch_217
        0x6de15a2e -> :sswitch_20d
    .end sparse-switch

    :pswitch_data_91e
    .packed-switch 0x0
        :pswitch_285  #00000000
        :pswitch_27b  #00000001
        :pswitch_275  #00000002
        :pswitch_26f  #00000003
        :pswitch_269  #00000004
        :pswitch_263  #00000005
        :pswitch_25d  #00000006
    .end packed-switch
.end method

.method public onStart()V
    .registers 12

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1993
    monitor-enter p0

    .line 1994
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1996
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1997
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 1998
    const/4 v3, 0x0

    move v4, v3

    :goto_26
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_54

    .line 1999
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_e1

    .line 2001
    :try_start_35
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2003
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 2004
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_4f} :catch_50
    .catchall {:try_start_35 .. :try_end_4f} :catchall_e1

    .line 2007
    goto :goto_51

    .line 2006
    :catch_50
    move-exception v5

    .line 1998
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 2009
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    .line 2010
    move v2, v3

    :goto_59
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_94

    .line 2011
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_e1

    .line 2013
    :try_start_65
    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2015
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2018
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2020
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_8f} :catch_90
    .catchall {:try_start_65 .. :try_end_8f} :catchall_e1

    .line 2023
    goto :goto_91

    .line 2022
    :catch_90
    move-exception v4

    .line 2010
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 2026
    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/DeviceIdleController$Injector;->getConstants(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 2029
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2031
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2032
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2033
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2036
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2037
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2038
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2039
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2040
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2041
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 2042
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 2043
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_94 .. :try_end_c7} :catchall_e1

    .line 2045
    new-instance v0, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 2046
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const-string v1, "deviceidle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2047
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2048
    return-void

    .line 2043
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0
.end method

.method readConfigFileLocked()V
    .registers 4

    .line 3713
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3716
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_2f

    .line 3719
    nop

    .line 3721
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3722
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3723
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_1c} :catch_27
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 3727
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2c

    goto :goto_2b

    .line 3726
    :catchall_20
    move-exception v1

    .line 3727
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 3729
    goto :goto_26

    .line 3728
    :catch_25
    move-exception v0

    .line 3729
    :goto_26
    throw v1

    .line 3724
    :catch_27
    move-exception v1

    .line 3727
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 3729
    :goto_2b
    goto :goto_2e

    .line 3728
    :catch_2c
    move-exception v0

    .line 3730
    nop

    .line 3731
    :goto_2e
    return-void

    .line 3717
    :catch_2f
    move-exception v0

    .line 3718
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4

    .line 3470
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3471
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3472
    return-void

    .line 3475
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3476
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_21

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz p1, :cond_21

    .line 3477
    return-void

    .line 3479
    :cond_21
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3480
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz p1, :cond_2e

    .line 3481
    const-string/jumbo p1, "s:location"

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3483
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4

    .line 3486
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3487
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3488
    return-void

    .line 3491
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3492
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1d

    .line 3493
    return-void

    .line 3495
    :cond_1d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3496
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz p1, :cond_2a

    .line 3497
    const-string/jumbo p1, "s:gps"

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3499
    :cond_2a
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3

    .line 3257
    monitor-enter p0

    .line 3258
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3259
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    monitor-exit p0

    return p1

    .line 3260
    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method registerStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 709
    monitor-enter p0

    .line 710
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 712
    monitor-exit p0

    return-void

    .line 714
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->postStationaryStatus(Lcom/android/server/DeviceIdleController$StationaryListener;)V

    .line 715
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz p1, :cond_27

    .line 716
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 719
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    goto :goto_2d

    .line 722
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 723
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 725
    :cond_2d
    :goto_2d
    monitor-exit p0

    .line 726
    return-void

    .line 725
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2493
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2497
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2498
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2497
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2506
    :try_start_26
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2e

    .line 2508
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2509
    nop

    .line 2510
    return-void

    .line 2508
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2257
    monitor-enter p0

    .line 2258
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2259
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2260
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2261
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2262
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 2264
    :cond_15
    monitor-exit p0

    .line 2265
    const/4 p1, 0x0

    return p1

    .line 2264
    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2298
    monitor-enter p0

    .line 2299
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2300
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2302
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2304
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2305
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2306
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 2307
    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 5

    .line 3391
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3392
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v1, :cond_7

    .line 3393
    return-void

    .line 3395
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 3396
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x7

    .line 3397
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    const/4 v3, 0x0

    .line 3396
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3398
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3399
    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 2333
    monitor-enter p0

    .line 2334
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2336
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2337
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2340
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2342
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2344
    :cond_22
    monitor-exit p0

    .line 2345
    return-void

    .line 2344
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method resetPreIdleTimeoutMode()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3321
    monitor-enter p0

    .line 3322
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3323
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3324
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 3326
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postResetPreIdleTimeoutFactor()V

    .line 3327
    return-void

    .line 3324
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .registers 3

    .line 2275
    monitor-enter p0

    .line 2276
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2277
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2278
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2279
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2281
    monitor-exit p0

    .line 2282
    return-void

    .line 2281
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2285
    monitor-enter p0

    .line 2286
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2287
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2289
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2291
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2293
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 2294
    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 5

    .line 3562
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZZ)V

    .line 3563
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 12

    .line 3595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3596
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    const-string v6, "DeviceIdleController.light"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3598
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2798
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2799
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2800
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 12

    .line 3619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3620
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    const-string v6, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3622
    return-void
.end method

.method setActiveIdleOpsForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3232
    monitor-enter p0

    .line 3233
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3234
    monitor-exit p0

    .line 3235
    return-void

    .line 3234
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setAlarmsActive(Z)V
    .registers 2

    .line 3248
    monitor-enter p0

    .line 3249
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 3250
    if-nez p1, :cond_8

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3253
    :cond_8
    monitor-exit p0

    .line 3254
    return-void

    .line 3253
    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method setDeepEnabledForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2834
    monitor-enter p0

    .line 2835
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2836
    monitor-exit p0

    .line 2837
    return-void

    .line 2836
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setIdleStartTimeForTest(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3385
    monitor-enter p0

    .line 3386
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3387
    monitor-exit p0

    .line 3388
    return-void

    .line 3387
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setJobsActive(Z)V
    .registers 2

    .line 3238
    monitor-enter p0

    .line 3239
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3240
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 3241
    if-nez p1, :cond_b

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3244
    :cond_b
    monitor-exit p0

    .line 3245
    return-void

    .line 3244
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method setLightEnabledForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2842
    monitor-enter p0

    .line 2843
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2844
    monitor-exit p0

    .line 2845
    return-void

    .line 2844
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setLightStateForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2962
    monitor-enter p0

    .line 2963
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2964
    monitor-exit p0

    .line 2965
    return-void

    .line 2964
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method setPreIdleTimeoutFactor(F)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_6

    .line 3302
    const/4 p1, 0x2

    return p1

    .line 3303
    :cond_6
    const v0, 0x3d4ccccd  # 0.05f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_f

    .line 3305
    const/4 p1, 0x3

    return p1

    .line 3306
    :cond_f
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1d

    .line 3308
    const/4 p1, 0x0

    return p1

    .line 3310
    :cond_1d
    monitor-enter p0

    .line 3311
    :try_start_1e
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3312
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3313
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2a

    .line 3315
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postUpdatePreIdleFactor()V

    .line 3316
    const/4 p1, 0x1

    return p1

    .line 3313
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method setPreIdleTimeoutMode(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3271
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getPreIdleTimeoutByMode(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutFactor(F)I

    move-result p1

    return p1
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .line 3503
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_f

    .line 3504
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 3506
    :cond_f
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3063
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 3065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3066
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x7

    if-lez v2, :cond_2e

    .line 3068
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v1, :cond_2d

    .line 3069
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3070
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "alarm"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3071
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3073
    :cond_2d
    return-void

    .line 3076
    :cond_2e
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_37

    .line 3085
    return-void

    .line 3088
    :cond_37
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_194

    goto/16 :goto_192

    .line 3184
    :pswitch_44  #0x5
    iput v8, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3185
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3186
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3190
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v4, v8

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v8, v8, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v4, v8

    float-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3192
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_79

    .line 3193
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3195
    :cond_79
    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3196
    invoke-direct {v0, v5, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3197
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_192

    .line 3101
    :pswitch_87  #0x2
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3103
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3104
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3105
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3106
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3109
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v2, :cond_b3

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->hasSensor()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 3110
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 3111
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3112
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 3113
    goto/16 :goto_192

    .line 3114
    :cond_b3
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_bc

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3116
    goto/16 :goto_192

    .line 3119
    :cond_bc
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3122
    :pswitch_be  #0x3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3123
    invoke-direct {v0, v6, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3124
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v10, v11, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3125
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v10

    .line 3126
    if-eqz v10, :cond_ec

    .line 3127
    const-string/jumbo v2, "network"

    invoke-virtual {v10, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 3128
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3129
    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 3128
    invoke-virtual {v10, v2, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3130
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_ee

    .line 3132
    :cond_ec
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 3134
    :goto_ee
    if-eqz v10, :cond_10e

    .line 3135
    const-string v2, "gps"

    invoke-virtual {v10, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_10e

    .line 3136
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3137
    const-wide/16 v12, 0x3e8

    const/high16 v14, 0x40a00000  # 5.0f

    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3138
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    .line 3137
    const-string v11, "gps"

    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3139
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_110

    .line 3141
    :cond_10e
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3145
    :goto_110
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v2, :cond_116

    .line 3146
    goto/16 :goto_192

    .line 3151
    :cond_116
    :pswitch_116  #0x4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3153
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3158
    :pswitch_121  #0x7
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3159
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3163
    :pswitch_12d  #0x6
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3166
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v2, v8

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v8, v8, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v2, v8

    float-to-long v8, v2

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3169
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3170
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_15f

    .line 3171
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3173
    :cond_15f
    invoke-direct {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3174
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v1, v3, :cond_16b

    .line 3175
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3178
    :cond_16b
    invoke-direct {v0, v6, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3179
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3180
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3181
    goto :goto_192

    .line 3092
    :pswitch_179  #0x1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 3093
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 3094
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 3095
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v2, v2

    mul-float/2addr v5, v2

    float-to-long v2, v5

    .line 3097
    :cond_18b
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3098
    invoke-direct {v0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3099
    nop

    .line 3200
    :goto_192
    return-void

    nop

    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_179  #00000001
        :pswitch_87  #00000002
        :pswitch_be  #00000003
        :pswitch_116  #00000004
        :pswitch_44  #00000005
        :pswitch_12d  #00000006
        :pswitch_121  #00000007
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 15

    .line 2973
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 2976
    return-void

    .line 2980
    :cond_6
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 2982
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v0, v2, :cond_7a

    if-eq v0, v6, :cond_9d

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-eq v0, v5, :cond_1f

    if-eq v0, v8, :cond_1f

    if-eq v0, v7, :cond_9d

    goto/16 :goto_107

    .line 3025
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_36

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v8, :cond_28

    goto :goto_36

    .line 3046
    :cond_28
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3048
    iput v8, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3049
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_107

    .line 3027
    :cond_36
    :goto_36
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3028
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3030
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_54

    .line 3031
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_64

    .line 3032
    :cond_54
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_64

    .line 3033
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3035
    :cond_64
    :goto_64
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3038
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3039
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3040
    invoke-direct {p0, v6, v1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3041
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p1, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_107

    .line 2984
    :cond_7a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2986
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2987
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 2991
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2992
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2993
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2994
    goto :goto_107

    .line 2999
    :cond_9d
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_c7

    .line 3000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v7, v9

    .line 3001
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_bd

    .line 3003
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_c7

    .line 3006
    :cond_bd
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v7, v11

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3009
    :cond_c7
    :goto_c7
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3010
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3011
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v0, v7

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v0, v4

    float-to-long v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3013
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v2, v7

    if-gez v0, :cond_f1

    .line 3014
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3017
    :cond_f1
    iput v5, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3018
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3019
    const/4 p1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3020
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3021
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p1, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3022
    nop

    .line 3053
    :goto_107
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3

    .line 3264
    monitor-enter p0

    .line 3265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3266
    monitor-exit p0

    .line 3267
    return-void

    .line 3266
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method updateChargingLocked(Z)V
    .registers 3

    .line 2738
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 2739
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2740
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez p1, :cond_25

    .line 2741
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_25

    .line 2743
    :cond_11
    if-eqz p1, :cond_25

    .line 2744
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2745
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez p1, :cond_25

    .line 2746
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2747
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const-string v0, "charging"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2750
    :cond_25
    :goto_25
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 6

    .line 2667
    monitor-enter p0

    .line 2668
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getConnectivityService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    .line 2669
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4c

    .line 2670
    if-nez v0, :cond_b

    .line 2671
    return-void

    .line 2674
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2675
    monitor-enter p0

    .line 2677
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 2678
    goto :goto_34

    .line 2680
    :cond_14
    if-nez p1, :cond_1b

    .line 2681
    :try_start_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_34

    .line 2683
    :cond_1b
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    .line 2684
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2686
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2b

    .line 2687
    monitor-exit p0

    return-void

    .line 2689
    :cond_2b
    const-string/jumbo v0, "noConnectivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    .line 2693
    :goto_34
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v1, p1, :cond_47

    .line 2694
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2695
    if-eqz v1, :cond_47

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_47

    .line 2696
    const-string/jumbo p1, "network"

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2699
    :cond_47
    monitor-exit p0

    .line 2700
    return-void

    .line 2699
    :catchall_49
    move-exception p1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_49

    throw p1

    .line 2669
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method updateInteractivityLocked()V
    .registers 3

    .line 2713
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 2715
    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    .line 2716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2717
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_37

    .line 2718
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_37

    .line 2720
    :cond_17
    if-eqz v0, :cond_37

    .line 2721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2722
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v0, :cond_37

    .line 2723
    :cond_2a
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2724
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2727
    :cond_37
    :goto_37
    return-void
.end method

.method updatePreIdleFactor()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3339
    monitor-enter p0

    .line 3340
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3341
    monitor-exit p0

    return-void

    .line 3343
    :cond_9
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 3344
    :cond_13
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 3345
    monitor-exit p0

    return-void

    .line 3347
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3348
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_2d

    .line 3349
    monitor-exit p0

    return-void

    .line 3351
    :cond_2d
    long-to-float v4, v0

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 3352
    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    .line 3353
    monitor-exit p0

    return-void

    .line 3355
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3357
    :cond_44
    monitor-exit p0

    .line 3358
    return-void

    .line 3357
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method updateQuickDozeFlagLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2763
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 2764
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 2766
    if-eqz p1, :cond_18

    .line 2768
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2773
    :cond_18
    return-void
.end method

.method writeConfigFileLocked()V
    .registers 5

    .line 3799
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 3800
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3801
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3832
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3833
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3834
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-string/jumbo v5, "n"

    if-ge v3, v4, :cond_32

    .line 3835
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3836
    const-string/jumbo v6, "wl"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3837
    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3838
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3834
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3840
    :cond_32
    nop

    :goto_33
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 3841
    const-string/jumbo v3, "un-wl"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3842
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3843
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3840
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 3845
    :cond_52
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3846
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3847
    return-void
.end method
