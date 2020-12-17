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

.field private mMotionSensor:Landroid/hardware/Sensor;

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
    .param p1, "context"  # Landroid/content/Context;

    .line 1809
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    .line 1810
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "injector"  # Lcom/android/server/DeviceIdleController$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1799
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 315
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 458
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 465
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 471
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 477
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 482
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 487
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 493
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 499
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 506
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 511
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 517
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 522
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 528
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 534
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 542
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 548
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 557
    const/16 v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 558
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 559
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 608
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 622
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 633
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 714
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 735
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1785
    new-instance v0, Lcom/android/server/DeviceIdleController$9;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$9;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1800
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 1801
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1802
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/DeviceIdleController$Injector;->getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1803
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/DeviceIdleController$Injector;->getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1804
    const-class v0, Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1805
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->useMotionSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 1806
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "x2"  # Z

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceIdleController;

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private addEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "cmd"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq v2, p1, :cond_27

    .line 563
    const/16 v2, 0x63

    const/4 v3, 0x1

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 567
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 568
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 570
    :cond_27
    return-void
.end method

.method private becomeActiveLocked(Ljava/lang/String;IJZ)V
    .registers 9
    .param p1, "activeReason"  # Ljava/lang/String;
    .param p2, "activeUid"  # I
    .param p3, "newInactiveTimeout"  # J
    .param p5, "changeLightIdle"  # Z

    .line 2663
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2a

    .line 2664
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2665
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2666
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2667
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2668
    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2669
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2671
    if-eqz p5, :cond_2a

    .line 2672
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2673
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2674
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2676
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2677
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2680
    :cond_2a
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .param p2, "outAppIds"  # Landroid/util/SparseBooleanArray;
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

    .line 3440
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3441
    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    .line 3442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 3443
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3442
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3446
    .end local v1  # "i":I
    :cond_1d
    if-eqz p1, :cond_36

    .line 3447
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 3448
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3447
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3451
    .end local v1  # "i":I
    :cond_36
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 3452
    .local v0, "size":I
    new-array v1, v0, [I

    .line 3453
    .local v1, "appids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_48

    .line 3454
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 3453
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 3456
    .end local v2  # "i":I
    :cond_48
    return-object v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 3664
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3708
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    const-string v0, "  pre-idle-factor [0|1|2]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    const-string v0, "    Set a new factor to idle time before step to idle(inactive_to and idle_after_inactive_to)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    const-string v0, "  reset-pre-idle-factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    const-string v0, "    Reset factor to idle time to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 1825
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$stepIdleStateLocked$1(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z
    .registers 2
    .param p0, "x"  # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2935
    iget-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return v0
.end method

.method private static synthetic lambda$stepIdleStateLocked$2(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;
    .registers 2
    .param p0, "x"  # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2936
    iget-object v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    return-object v0
.end method

.method static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 410
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

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_19
    const-string v0, "OVERRIDE"

    return-object v0

    .line 416
    :cond_1c
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 415
    :cond_1f
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 414
    :cond_22
    const-string v0, "IDLE"

    return-object v0

    .line 413
    :cond_25
    const-string v0, "PRE_IDLE"

    return-object v0

    .line 412
    :cond_28
    const-string v0, "INACTIVE"

    return-object v0

    .line 411
    :cond_2b
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private moveToStateLocked(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 3062
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3063
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3068
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v1, p2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3069
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3070
    return-void
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "appId"  # I
    .param p2, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2493
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2494
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2495
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2496
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2498
    :try_start_12
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 2501
    goto :goto_1b

    .line 2500
    :catch_1a
    move-exception v0

    .line 2502
    :goto_1b
    return-void
.end method

.method private onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 8
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "active"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2043
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    if-nez v0, :cond_26

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device-idle constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2047
    :cond_26
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eq p2, v1, :cond_6f

    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v1, :cond_6f

    .line 2048
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2049
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    iget-boolean v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, -0x1

    :goto_39
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2050
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-nez v1, :cond_6f

    .line 2051
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v1, :cond_48

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_6f

    .line 2053
    :cond_48
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_58

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_6f

    .line 2054
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2058
    :cond_6f
    :goto_6f
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 5

    .line 3519
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    .line 3523
    return-void
.end method

.method private postResetPreIdleTimeoutFactor()V
    .registers 3

    .line 3196
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3197
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 7
    .param p1, "appId"  # I
    .param p2, "delay"  # J

    .line 2460
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2461
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2460
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2462
    return-void
.end method

.method private postUpdatePreIdleFactor()V
    .registers 3

    .line 3192
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3193
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 3548
    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3552
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :goto_c
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_18

    if-eq v4, v6, :cond_18

    goto :goto_c

    .line 3557
    :cond_18
    if-ne v4, v5, :cond_bc

    .line 3561
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3562
    .local v3, "outerDepth":I
    :cond_1e
    :goto_1e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    if-eq v5, v6, :cond_13c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2e

    .line 3563
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_13c

    .line 3564
    :cond_2e
    if-eq v4, v5, :cond_1e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_34

    .line 3565
    goto :goto_1e

    .line 3568
    :cond_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3569
    .local v5, "tagName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xed5

    if-eq v8, v9, :cond_52

    const v9, 0x6a37689

    if-eq v8, v9, :cond_47

    :cond_46
    goto :goto_5c

    :cond_47
    const-string/jumbo v8, "un-wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    move v7, v6

    goto :goto_5c

    :cond_52
    const-string/jumbo v8, "wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_59} :catch_129
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_59} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_59} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_59} :catch_ed
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_59} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_59} :catch_c5

    if-eqz v8, :cond_46

    const/4 v7, 0x0

    :goto_5c
    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    if-eqz v7, :cond_9a

    if-eq v7, v6, :cond_80

    .line 3590
    :try_start_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <config>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3590
    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ba

    .line 3583
    :cond_80
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3584
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 3585
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3586
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3585
    invoke-virtual {v8, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 3571
    .end local v7  # "packageName":Ljava/lang/String;
    :cond_9a
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_9e} :catch_129
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_9e} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_9e} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_9e} :catch_ed
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_9e} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_9e} :catch_c5

    .line 3572
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_ba

    .line 3574
    const/high16 v8, 0x400000

    :try_start_a2
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 3576
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3577
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3576
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a2 .. :try_end_b7} :catch_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_a2 .. :try_end_b7} :catch_129
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_b7} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_b7} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_b7} :catch_ed
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b7} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a2 .. :try_end_b7} :catch_c5

    .line 3579
    nop

    .end local v8  # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_ba

    .line 3578
    :catch_b9
    move-exception v8

    .line 3595
    .end local v5  # "tagName":Ljava/lang/String;
    .end local v7  # "name":Ljava/lang/String;
    :cond_ba
    :goto_ba
    goto/16 :goto_1e

    .line 3558
    .end local v3  # "outerDepth":I
    :cond_bc
    :try_start_bc
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "pm":Landroid/content/pm/PackageManager;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3
    :try_end_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_bc .. :try_end_c5} :catch_129
    .catch Ljava/lang/NullPointerException; {:try_start_bc .. :try_end_c5} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_bc .. :try_end_c5} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bc .. :try_end_c5} :catch_ed
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c5} :catch_d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bc .. :try_end_c5} :catch_c5

    .line 3607
    .end local v4  # "type":I
    .restart local v2  # "pm":Landroid/content/pm/PackageManager;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_c5
    move-exception v3

    .line 3608
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 3605
    .end local v3  # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_d9
    move-exception v3

    .line 3606
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3  # "e":Ljava/io/IOException;
    goto :goto_13c

    .line 3603
    :catch_ed
    move-exception v3

    .line 3604
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_13c

    .line 3601
    :catch_101
    move-exception v3

    .line 3602
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3  # "e":Ljava/lang/NumberFormatException;
    goto :goto_13c

    .line 3599
    :catch_115
    move-exception v3

    .line 3600
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3  # "e":Ljava/lang/NullPointerException;
    goto :goto_13c

    .line 3597
    :catch_129
    move-exception v3

    .line 3598
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    .end local v3  # "e":Ljava/lang/IllegalStateException;
    :cond_13c
    :goto_13c
    nop

    .line 3610
    :goto_13d
    return-void
.end method

.method private registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 8
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "type"  # I

    .line 2007
    if-eqz p3, :cond_1e

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1c

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering device-idle constraint with invalid type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    return-void

    .line 2012
    :cond_1c
    const/4 v0, 0x3

    .line 2013
    .local v0, "minState":I
    goto :goto_20

    .line 2009
    .end local v0  # "minState":I
    :cond_1e
    const/4 v0, 0x0

    .line 2010
    .restart local v0  # "minState":I
    nop

    .line 2018
    :goto_20
    monitor-enter p0

    .line 2019
    :try_start_21
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2020
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-registering device-idle constraint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit p0

    return-void

    .line 2023
    :cond_46
    new-instance v1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-direct {v1, p2, v0}, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;-><init>(Ljava/lang/String;I)V

    .line 2024
    .local v1, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2026
    .end local v1  # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    monitor-exit p0

    .line 2027
    return-void

    .line 2026
    :catchall_55
    move-exception v1

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 5
    .param p1, "appId"  # I

    .line 2444
    monitor-enter p0

    .line 2445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2446
    .local v0, "idx":I
    if-gez v0, :cond_b

    .line 2448
    monitor-exit p0

    return-void

    .line 2450
    :cond_b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2451
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2452
    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2453
    .end local v0  # "idx":I
    .end local v1  # "reason":Ljava/lang/String;
    monitor-exit p0

    .line 2454
    return-void

    .line 2453
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2435
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 2437
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2438
    .local v1, "appId":I
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2440
    .end local v0  # "uid":I
    .end local v1  # "appId":I
    goto :goto_15

    .line 2439
    :catch_14
    move-exception v0

    .line 2441
    :goto_15
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .line 3507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3508
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3510
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .line 3513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3514
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3515
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3516
    return-void
.end method

.method private resetIdleManagementLocked()V
    .registers 3

    .line 2779
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2780
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2781
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2782
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 2783
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2784
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2785
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2786
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    .line 2787
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2788
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2789
    return-void
.end method

.method private resetLightIdleManagementLocked()V
    .registers 1

    .line 2792
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2793
    return-void
.end method

.method private setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 7
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "monitor"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2063
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v1, p2, :cond_1d

    .line 2064
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 2065
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2068
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xa

    .line 2069
    const/4 v3, -0x1

    .line 2068
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2071
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2073
    :cond_1d
    return-void
.end method

.method private shouldUseIdleTimeoutFactorLocked()Z
    .registers 3

    .line 3238
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 3239
    const/4 v0, 0x0

    return v0

    .line 3241
    :cond_7
    return v1
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    packed-switch p0, :pswitch_data_20

    .line 381
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :pswitch_8  #0x7
    const-string v0, "QUICK_DOZE_DELAY"

    return-object v0

    .line 379
    :pswitch_b  #0x6
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 378
    :pswitch_e  #0x5
    const-string v0, "IDLE"

    return-object v0

    .line 377
    :pswitch_11  #0x4
    const-string v0, "LOCATING"

    return-object v0

    .line 376
    :pswitch_14  #0x3
    const-string v0, "SENSING"

    return-object v0

    .line 375
    :pswitch_17  #0x2
    const-string v0, "IDLE_PENDING"

    return-object v0

    .line 374
    :pswitch_1a  #0x1
    const-string v0, "INACTIVE"

    return-object v0

    .line 373
    :pswitch_1d  #0x0
    const-string v0, "ACTIVE"

    return-object v0

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
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2030
    monitor-enter p0

    .line 2032
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2035
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2036
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    monitor-exit p0

    .line 2038
    return-void

    .line 2037
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private updateActiveConstraintsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2077
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2078
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2079
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2080
    .local v2, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2081
    .local v3, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    move v4, v6

    goto :goto_26

    :cond_25
    move v4, v0

    .line 2082
    .local v4, "monitoring":Z
    :goto_26
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v4, v5, :cond_2f

    .line 2083
    invoke-direct {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2084
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2086
    :cond_2f
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v5, :cond_3c

    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v5, :cond_3c

    .line 2087
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2078
    .end local v2  # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v3  # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    .end local v4  # "monitoring":Z
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2090
    .end local v1  # "i":I
    :cond_3f
    return-void
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .registers 7
    .param p1, "appId"  # I
    .param p2, "adding"  # Z

    .line 3481
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3482
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_f

    .line 3483
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3485
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 3486
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 3485
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3488
    .end local v1  # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_28

    .line 3493
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 3496
    :cond_28
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_31

    .line 3501
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 3503
    :cond_31
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3504
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .line 3460
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 3462
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3464
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 3466
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2e

    .line 3467
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 3470
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_37

    .line 3475
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 3477
    :cond_37
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3478
    return-void
.end method

.method private verifyAlarmStateLocked()V
    .registers 7

    .line 2700
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-wide/16 v1, 0x0

    const-string v3, "DeviceIdleController"

    if-nez v0, :cond_25

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_25

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_25
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_52

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mState="

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

    .line 2706
    :cond_52
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v4, :cond_64

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-nez v0, :cond_64

    .line 2707
    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_64
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_93

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_93

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLightState=ACTIVE but mNextLightAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2711
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

    .line 2710
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_93
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 19
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "duration"  # J
    .param p4, "userId"  # I
    .param p5, "reason"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2324
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2328
    .local v1, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2328
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2335
    .end local p4  # "userId":I
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2337
    .local v11, "token":J
    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, v2

    move-object/from16 v10, p5

    :try_start_2f
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_37

    .line 2340
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    nop

    .line 2342
    return-void

    .line 2340
    :catchall_37
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 23
    .param p1, "callingUid"  # I
    .param p2, "uid"  # I
    .param p3, "duration"  # J
    .param p5, "sync"  # Z
    .param p6, "reason"  # Ljava/lang/String;

    .line 2384
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2385
    .local v3, "timeNow":J
    const/4 v5, 0x0

    .line 2386
    .local v5, "informWhitelistChanged":Z
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 2387
    .local v6, "appId":I
    monitor-enter p0

    .line 2388
    :try_start_e
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_bd

    move v7, v0

    .line 2389
    .local v7, "callingAppId":I
    const/16 v0, 0x2710

    if-lt v7, v0, :cond_47

    .line 2390
    :try_start_17
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_47

    .line 2391
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not on whitelist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3  # "timeNow":J
    .end local v5  # "informWhitelistChanged":Z
    .end local v6  # "appId":I
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "callingUid":I
    .end local p2  # "uid":I
    .end local p3  # "duration":J
    .end local p5  # "sync":Z
    .end local p6  # "reason":Ljava/lang/String;
    throw v0
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_40

    .line 2424
    .end local v7  # "callingAppId":I
    .restart local v3  # "timeNow":J
    .restart local v5  # "informWhitelistChanged":Z
    .restart local v6  # "appId":I
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "callingUid":I
    .restart local p2  # "uid":I
    .restart local p3  # "duration":J
    .restart local p5  # "sync":Z
    .restart local p6  # "reason":Ljava/lang/String;
    :catchall_40
    move-exception v0

    move/from16 v14, p2

    move-wide/from16 v8, p3

    goto/16 :goto_c3

    .line 2395
    .restart local v7  # "callingAppId":I
    :cond_47
    :goto_47
    :try_start_47
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_bd

    move-wide/from16 v10, p3

    :try_start_4d
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_b9

    .line 2396
    .end local p3  # "duration":J
    .local v8, "duration":J
    :try_start_51
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2397
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    const/4 v10, 0x1

    if-nez v0, :cond_5e

    move v11, v10

    goto :goto_5f

    :cond_5e
    const/4 v11, 0x0

    .line 2399
    .local v11, "newEntry":Z
    :goto_5f
    if-eqz v11, :cond_75

    .line 2400
    new-instance v12, Landroid/util/Pair;

    new-instance v13, Landroid/util/MutableLong;

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v12, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v12

    .line 2401
    iget-object v12, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v12, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v12, v0

    goto :goto_76

    .line 2399
    :cond_75
    move-object v12, v0

    .line 2403
    .end local v0  # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .local v12, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_76
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v13, v3, v8

    iput-wide v13, v0, Landroid/util/MutableLong;->value:J
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_b5

    .line 2407
    if-eqz v11, :cond_aa

    .line 2410
    :try_start_80
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_82} :catch_8d
    .catchall {:try_start_80 .. :try_end_82} :catchall_b5

    const v13, 0x8011

    move/from16 v14, p2

    :try_start_87
    invoke-interface {v0, v13, v2, v14}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catchall {:try_start_87 .. :try_end_8a} :catchall_c5

    .line 2413
    goto :goto_90

    .line 2412
    :catch_8b
    move-exception v0

    goto :goto_90

    :catch_8d
    move-exception v0

    move/from16 v14, p2

    .line 2414
    :goto_90
    :try_start_90
    invoke-direct {v1, v6, v8, v9}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2415
    invoke-direct {v1, v6, v10}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2416
    if-eqz p5, :cond_9b

    .line 2417
    const/4 v0, 0x1

    move v5, v0

    .end local v5  # "informWhitelistChanged":Z
    .local v0, "informWhitelistChanged":Z
    goto :goto_a6

    .line 2419
    .end local v0  # "informWhitelistChanged":Z
    .restart local v5  # "informWhitelistChanged":Z
    :cond_9b
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v13, 0x9

    invoke-virtual {v0, v13, v6, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2420
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2422
    :goto_a6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    goto :goto_ac

    .line 2407
    :cond_aa
    move/from16 v14, p2

    .line 2424
    .end local v7  # "callingAppId":I
    .end local v11  # "newEntry":Z
    .end local v12  # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_c5

    .line 2425
    if-eqz v5, :cond_b4

    .line 2426
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v0, v6, v10}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 2428
    :cond_b4
    return-void

    .line 2424
    :catchall_b5
    move-exception v0

    move/from16 v14, p2

    goto :goto_c3

    .end local v8  # "duration":J
    .restart local p3  # "duration":J
    :catchall_b9
    move-exception v0

    move/from16 v14, p2

    goto :goto_c2

    :catchall_bd
    move-exception v0

    move/from16 v14, p2

    move-wide/from16 v10, p3

    :goto_c2
    move-wide v8, v10

    .end local p3  # "duration":J
    .restart local v8  # "duration":J
    :goto_c3
    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c5

    throw v0

    :catchall_c5
    move-exception v0

    goto :goto_c3
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16
    .param p1, "callingUid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "duration"  # J
    .param p5, "userId"  # I
    .param p6, "sync"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 2372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 2373
    .local v3, "uid":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 2375
    .end local v3  # "uid":I
    goto :goto_16

    .line 2374
    :catch_15
    move-exception v0

    .line 2376
    :goto_16
    return-void
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 2093
    monitor-enter p0

    .line 2095
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2097
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 2098
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2099
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    .line 2102
    :cond_2a
    const/4 v1, 0x1

    :try_start_2b
    monitor-exit p0

    return v1

    .line 2106
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_2d
    move-exception v0

    goto :goto_33

    .line 2103
    :catch_2f
    move-exception v0

    .line 2104
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2106
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_2d

    throw v0
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 2164
    monitor-enter p0

    .line 2166
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2168
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    .line 2170
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2171
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2172
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2176
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 2178
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    monitor-exit p0

    return v1

    .line 2182
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_3b
    move-exception v0

    goto :goto_41

    .line 2179
    :catch_3d
    move-exception v0

    .line 2180
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2182
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_3b

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 10
    .param p1, "activeReason"  # Ljava/lang/String;
    .param p2, "activeUid"  # I

    .line 2654
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 2655
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 8

    .line 2717
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->verifyAlarmStateLocked()V

    .line 2719
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 2731
    .local v0, "isScreenBlockingInactive":Z
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_21

    .line 2732
    :cond_20
    return-void

    .line 2735
    :cond_21
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string/jumbo v4, "no activity"

    if-eqz v3, :cond_51

    .line 2736
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v3, :cond_4b

    .line 2737
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_4a

    const/4 v6, 0x5

    if-eq v3, v6, :cond_4a

    const/4 v6, 0x6

    if-ne v3, v6, :cond_38

    goto :goto_4a

    .line 2748
    :cond_38
    iput v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2750
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2753
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-virtual {p0, v5, v6, v1}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2754
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_51

    .line 2742
    :cond_4a
    :goto_4a
    return-void

    .line 2755
    :cond_4b
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v1, :cond_51

    .line 2756
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2769
    :cond_51
    :goto_51
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v1, :cond_6a

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_6a

    .line 2770
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2772
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2773
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2774
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2776
    :cond_6a
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .line 3362
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3363
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3364
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3366
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .line 3369
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3370
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3371
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3373
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .line 3376
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_17

    .line 3377
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3378
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3379
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3382
    .end local v0  # "locationManager":Landroid/location/LocationManager;
    :cond_17
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .line 3385
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3386
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3387
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3389
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 7
    .param p1, "appId"  # I

    .line 2465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2469
    .local v0, "timeNow":J
    monitor-enter p0

    .line 2470
    :try_start_5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2471
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v2, :cond_11

    .line 2473
    monitor-exit p0

    return-void

    .line 2475
    :cond_11
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_28

    .line 2476
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2477
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_32

    .line 2483
    :cond_28
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2485
    .end local v2  # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_32
    monitor-exit p0

    .line 2486
    return-void

    .line 2485
    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v2
.end method

.method decActiveIdleOps()V
    .registers 2

    .line 3079
    monitor-enter p0

    .line 3080
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3081
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_1b

    .line 3082
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3084
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3085
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3088
    :cond_1b
    monitor-exit p0

    .line 3089
    return-void

    .line 3088
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 4187
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4189
    :cond_13
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_91

    .line 4190
    const/4 v5, 0x0

    .line 4191
    .local v5, "userId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    array-length v7, v3

    if-ge v6, v7, :cond_91

    .line 4192
    aget-object v7, v3, v6

    .line 4193
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 4194
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4195
    return-void

    .line 4196
    :cond_2a
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 4197
    add-int/lit8 v6, v6, 0x1

    .line 4198
    array-length v8, v3

    if-ge v6, v8, :cond_46

    .line 4199
    aget-object v7, v3, v6

    .line 4200
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_46

    .line 4202
    :cond_3e
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 4191
    .end local v7  # "arg":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/2addr v6, v4

    goto :goto_19

    .line 4204
    .restart local v7  # "arg":Ljava/lang/String;
    :cond_48
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6b

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_6b

    .line 4205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4206
    return-void

    .line 4208
    :cond_6b
    new-instance v4, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v4, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4209
    .local v4, "shell":Lcom/android/server/DeviceIdleController$Shell;
    iput v5, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4210
    array-length v8, v3

    sub-int/2addr v8, v6

    new-array v15, v8, [Ljava/lang/String;

    .line 4211
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v6

    invoke-static {v3, v6, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4212
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v4

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    .end local v15  # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    move-object v15, v0

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4214
    return-void

    .line 4219
    .end local v4  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v5  # "userId":I
    .end local v6  # "i":I
    .end local v7  # "arg":Ljava/lang/String;
    .end local v16  # "newArgs":[Ljava/lang/String;
    :cond_91
    monitor-enter p0

    .line 4220
    :try_start_92
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4222
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v0

    if-eqz v5, :cond_106

    .line 4223
    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4225
    .local v5, "now":J
    const/16 v7, 0x63

    .local v7, "i":I
    :goto_a8
    if-ltz v7, :cond_106

    .line 4226
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    .line 4227
    .local v8, "cmd":I
    if-nez v8, :cond_b1

    .line 4228
    goto :goto_103

    .line 4231
    :cond_b1
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v9, v9, v7

    if-eq v9, v4, :cond_d3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d0

    const/4 v10, 0x3

    if-eq v9, v10, :cond_cc

    const/4 v10, 0x4

    if-eq v9, v10, :cond_c9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_c6

    .line 4237
    const-string v9, "         ??"

    .local v9, "label":Ljava/lang/String;
    goto :goto_d5

    .line 4236
    .end local v9  # "label":Ljava/lang/String;
    :cond_c6
    const-string v9, " deep-maint"

    .restart local v9  # "label":Ljava/lang/String;
    goto :goto_d5

    .line 4235
    .end local v9  # "label":Ljava/lang/String;
    :cond_c9
    const-string v9, "  deep-idle"

    .restart local v9  # "label":Ljava/lang/String;
    goto :goto_d5

    .line 4234
    .end local v9  # "label":Ljava/lang/String;
    :cond_cc
    const-string/jumbo v9, "light-maint"

    .restart local v9  # "label":Ljava/lang/String;
    goto :goto_d5

    .line 4233
    .end local v9  # "label":Ljava/lang/String;
    :cond_d0
    const-string v9, " light-idle"

    .restart local v9  # "label":Ljava/lang/String;
    goto :goto_d5

    .line 4232
    .end local v9  # "label":Ljava/lang/String;
    :cond_d3
    const-string v9, "     normal"

    .line 4239
    .restart local v9  # "label":Ljava/lang/String;
    :goto_d5
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4242
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4243
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_100

    .line 4244
    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4246
    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4248
    :cond_100
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4225
    .end local v8  # "cmd":I
    .end local v9  # "label":Ljava/lang/String;
    :goto_103
    add-int/lit8 v7, v7, -0x1

    goto :goto_a8

    .line 4253
    .end local v5  # "now":J
    .end local v7  # "i":I
    :cond_106
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4254
    .local v5, "size":I
    if-lez v5, :cond_129

    .line 4255
    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4256
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_114
    if-ge v6, v5, :cond_129

    .line 4257
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4258
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4256
    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    .line 4261
    .end local v6  # "i":I
    :cond_129
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4262
    if-lez v5, :cond_14d

    .line 4263
    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_138
    if-ge v6, v5, :cond_14d

    .line 4265
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4266
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    add-int/lit8 v6, v6, 0x1

    goto :goto_138

    .line 4269
    .end local v6  # "i":I
    :cond_14d
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4270
    if-lez v5, :cond_171

    .line 4271
    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_15c
    if-ge v6, v5, :cond_171

    .line 4273
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4274
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    add-int/lit8 v6, v6, 0x1

    goto :goto_15c

    .line 4277
    .end local v6  # "i":I
    :cond_171
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4278
    if-lez v5, :cond_195

    .line 4279
    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_180
    if-ge v6, v5, :cond_195

    .line 4281
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4282
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    add-int/lit8 v6, v6, 0x1

    goto :goto_180

    .line 4285
    .end local v6  # "i":I
    :cond_195
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4286
    if-lez v5, :cond_1ba

    .line 4287
    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4288
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_1a4
    if-ge v6, v5, :cond_1ba

    .line 4289
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4290
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4291
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4288
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a4

    .line 4294
    .end local v6  # "i":I
    :cond_1ba
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4295
    if-lez v5, :cond_1df

    .line 4296
    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4297
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_1c9
    if-ge v6, v5, :cond_1df

    .line 4298
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4299
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4300
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4297
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c9

    .line 4303
    .end local v6  # "i":I
    :cond_1df
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4304
    if-lez v5, :cond_204

    .line 4305
    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_1ee
    if-ge v6, v5, :cond_204

    .line 4307
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4308
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4309
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4306
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ee

    .line 4312
    .end local v6  # "i":I
    :cond_204
    invoke-virtual {v1, v2, v4}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4314
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v4, :cond_20f

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v4, v4

    goto :goto_210

    :cond_20f
    move v4, v0

    .line 4315
    .end local v5  # "size":I
    .local v4, "size":I
    :goto_210
    if-lez v4, :cond_22c

    .line 4316
    const-string v5, "  Temp whitelist app ids:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4317
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_218
    if-ge v5, v4, :cond_22c

    .line 4318
    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4319
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4320
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4317
    add-int/lit8 v5, v5, 0x1

    goto :goto_218

    .line 4324
    .end local v5  # "i":I
    :cond_22c
    const-string v5, "  mLightEnabled="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4325
    const-string v5, "  mDeepEnabled="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4326
    const-string v5, "  mForceIdle="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4327
    const-string v5, "  mUseMotionSensor="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 4328
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v5, :cond_263

    .line 4329
    const-string v5, " mMotionSensor="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_266

    .line 4331
    :cond_263
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4333
    :goto_266
    const-string v5, "  mScreenOn="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4334
    const-string v5, "  mScreenLocked="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4335
    const-string v5, "  mNetworkConnected="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4336
    const-string v5, "  mCharging="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4337
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eqz v5, :cond_2e3

    .line 4338
    const-string v5, "  mConstraints={"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4339
    nop

    .local v0, "i":I
    :goto_29c
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_2de

    .line 4340
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 4341
    .local v5, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    const-string v6, "    \""

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "\"="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4342
    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v7, v1, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v6, v7, :cond_2c7

    .line 4343
    iget-boolean v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2db

    .line 4345
    :cond_2c7
    const-string/jumbo v6, "ignored <mMinState="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4346
    const-string v6, ">"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4339
    .end local v5  # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    :goto_2db
    add-int/lit8 v0, v0, 0x1

    goto :goto_29c

    .line 4349
    .end local v0  # "i":I
    :cond_2de
    const-string v0, "  }"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4351
    :cond_2e3
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_2fd

    .line 4352
    const-string v0, "  mMotionActive="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4353
    const-string v0, "  mNotMoving="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4355
    :cond_2fd
    const-string v0, "  mLocating="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasGps="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4356
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasNetwork="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4357
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLocated="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4358
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v0, :cond_333

    .line 4359
    const-string v0, "  mLastGenericLocation="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4361
    :cond_333
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_341

    .line 4362
    const-string v0, "  mLastGpsLocation="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4364
    :cond_341
    const-string v0, "  mState="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4365
    const-string v0, " mLightState="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4366
    iget v0, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    const-string v0, "  mInactiveTimeout="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4368
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4369
    iget v0, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v0, :cond_378

    .line 4370
    const-string v0, "  mActiveIdleOpCount="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4372
    :cond_378
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_391

    .line 4373
    const-string v0, "  mNextAlarmTime="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4374
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4377
    :cond_391
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3a4

    .line 4378
    const-string v0, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4379
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4380
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4382
    :cond_3a4
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3b7

    .line 4383
    const-string v0, "  mNextIdleDelay="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4384
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4385
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4387
    :cond_3b7
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3ca

    .line 4388
    const-string v0, "  mNextIdleDelay="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4389
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4390
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4392
    :cond_3ca
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3e1

    .line 4393
    const-string v0, "  mNextLightAlarmTime="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4394
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4395
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4397
    :cond_3e1
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3f4

    .line 4398
    const-string v0, "  mCurIdleBudget="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4399
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4400
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4402
    :cond_3f4
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_40b

    .line 4403
    const-string v0, "  mMaintenanceStartTime="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4404
    iget-wide v5, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4405
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4407
    :cond_40b
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v0, :cond_419

    .line 4408
    const-string v0, "  mJobsActive="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4410
    :cond_419
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v0, :cond_427

    .line 4411
    const-string v0, "  mAlarmsActive="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4413
    :cond_427
    iget v0, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v5, 0x3d4ccccd  # 0.05f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_441

    .line 4414
    const-string v0, "  mPreIdleFactor="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 4416
    .end local v4  # "size":I
    :cond_441
    monitor-exit p0

    .line 4417
    return-void

    .line 4416
    :catchall_443
    move-exception v0

    monitor-exit p0
    :try_end_445
    .catchall {:try_start_92 .. :try_end_445} :catchall_443

    throw v0
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "printTitle"  # Z

    .line 4420
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4421
    .local v0, "size":I
    if-lez v0, :cond_50

    .line 4422
    const-string v1, ""

    .line 4423
    .local v1, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_13

    .line 4424
    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4425
    const-string v1, "    "

    .line 4427
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4428
    .local v2, "timeNow":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_50

    .line 4429
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4431
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4432
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4434
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4435
    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4436
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4428
    .end local v5  # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 4439
    .end local v1  # "prefix":Ljava/lang/String;
    .end local v2  # "timeNow":J
    .end local v4  # "i":I
    :cond_50
    return-void
.end method

.method public enterIdleInternal(Ljava/lang/String;JJ)V
    .registers 10
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "idleDelay"  # J
    .param p4, "maintenanceDelay"  # J

    .line 4442
    monitor-enter p0

    .line 4443
    :try_start_1
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becomeIdleLocked, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_1d

    .line 4446
    monitor-exit p0

    return-void

    .line 4448
    :cond_1d
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_2a

    .line 4449
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    goto :goto_2c

    .line 4451
    :cond_2a
    iput-wide p2, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 4453
    :goto_2c
    cmp-long v0, p4, v0

    if-nez v0, :cond_37

    .line 4454
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    goto :goto_39

    .line 4456
    :cond_37
    iput-wide p4, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 4459
    :goto_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4460
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4461
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 4462
    .local v0, "curState":I
    :goto_41
    const/4 v1, 0x5

    if-eq v0, v1, :cond_6e

    .line 4463
    const-string/jumbo v1, "s:shell"

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4464
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v1, :cond_6a

    .line 4465
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to becomeIdleLocked +  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 4467
    monitor-exit p0

    return-void

    .line 4469
    :cond_6a
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    move v0, v1

    goto :goto_41

    .line 4471
    :cond_6e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4472
    .end local v0  # "curState":I
    monitor-exit p0

    .line 4473
    return-void

    .line 4472
    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v0
.end method

.method exitForceIdleLocked()V
    .registers 3

    .line 2796
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1b

    .line 2797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2798
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1b

    .line 2799
    :cond_f
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2800
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "exit-force"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2803
    :cond_1b
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 2505
    monitor-enter p0

    .line 2506
    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2508
    monitor-exit p0

    .line 2509
    return-void

    .line 2508
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 7

    .line 3273
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_2f

    .line 3275
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3285
    .local v3, "now":J
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v5, "s:early"

    if-ne v0, v2, :cond_21

    .line 3286
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_2f

    .line 3287
    :cond_21
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_2c

    .line 3288
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_2f

    .line 3290
    :cond_2c
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3294
    .end local v3  # "now":J
    :cond_2f
    :goto_2f
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 2317
    monitor-enter p0

    .line 2318
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2319
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 2311
    monitor-enter p0

    .line 2312
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2313
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 2299
    monitor-enter p0

    .line 2300
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2301
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 2305
    monitor-enter p0

    .line 2306
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2307
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 7

    .line 2251
    monitor-enter p0

    .line 2252
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2253
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2254
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2255
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_13
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2a

    .line 2256
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 2257
    add-int/lit8 v2, v2, 0x1

    .line 2255
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2259
    .end local v4  # "i":I
    :cond_2a
    nop

    .local v3, "i":I
    :goto_2b
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 2260
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2261
    add-int/lit8 v2, v2, 0x1

    .line 2259
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2263
    .end local v3  # "i":I
    :cond_42
    monitor-exit p0

    return-object v1

    .line 2264
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
    .end local v2  # "cur":I
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 7

    .line 2268
    monitor-enter p0

    .line 2269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2270
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2271
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2272
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_13
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2a

    .line 2273
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 2274
    add-int/lit8 v2, v2, 0x1

    .line 2272
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2276
    .end local v4  # "i":I
    :cond_2a
    nop

    .local v3, "i":I
    :goto_2b
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 2277
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2278
    add-int/lit8 v2, v2, 0x1

    .line 2276
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2280
    .end local v3  # "i":I
    :cond_42
    monitor-exit p0

    return-object v1

    .line 2281
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
    .end local v2  # "cur":I
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method getLightState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2819
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    return v0
.end method

.method getNextAlarmTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3265
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    return-wide v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 2122
    monitor-enter p0

    .line 2123
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2124
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 2201
    monitor-enter p0

    .line 2202
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2203
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1819
    monitor-enter p0

    .line 1820
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1821
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method getPreIdleTimeoutByMode(I)F
    .registers 5
    .param p1, "mode"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3138
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    .line 3149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time out factor mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    return v0

    .line 3143
    :cond_21
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    return v0

    .line 3140
    :cond_26
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    return v0

    .line 3146
    :cond_2b
    return v0
.end method

.method getPreIdleTimeoutFactor()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3157
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    return v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .registers 5

    .line 2229
    monitor-enter p0

    .line 2230
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2231
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2232
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2233
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2232
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2235
    .end local v2  # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2236
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
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

    .line 2911
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .line 2207
    monitor-enter p0

    .line 2208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2209
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2210
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2211
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2210
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2213
    .end local v2  # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2214
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 2218
    monitor-enter p0

    .line 2219
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2220
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2221
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2222
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2221
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2224
    .end local v2  # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2225
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 2240
    monitor-enter p0

    .line 2241
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2242
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2243
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 2244
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2243
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2246
    .end local v2  # "i":I
    :cond_1f
    monitor-exit p0

    return-object v1

    .line 2247
    .end local v0  # "size":I
    .end local v1  # "apps":[Ljava/lang/String;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 14
    .param p1, "timeout"  # J
    .param p3, "type"  # Ljava/lang/String;

    .line 3306
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_c

    goto :goto_e

    :cond_c
    move v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v3

    .line 3309
    .local v0, "becomeInactive":Z
    :goto_f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v4, v2, :cond_19

    move v9, v3

    goto :goto_1a

    :cond_19
    move v9, v1

    :goto_1a
    move-object v4, p0

    move-object v5, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3310
    if-eqz v0, :cond_25

    .line 3311
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3313
    :cond_25
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 7

    .line 3618
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3621
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 3622
    :try_start_6
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3623
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3624
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3625
    .end local v1  # "out":Lorg/xmlpull/v1/XmlSerializer;
    monitor-exit p0

    .line 3627
    goto :goto_1d

    .line 3625
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    .end local v0  # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 3626
    .restart local v0  # "memStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    :catch_1c
    move-exception v1

    .line 3629
    :goto_1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v1

    .line 3630
    const/4 v2, 0x0

    .line 3632
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 3633
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 3634
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3635
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3636
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3637
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_3c
    .catchall {:try_start_21 .. :try_end_39} :catchall_3a

    .line 3641
    goto :goto_49

    .line 3642
    .end local v2  # "stream":Ljava/io/FileOutputStream;
    :catchall_3a
    move-exception v2

    goto :goto_4b

    .line 3638
    .restart local v2  # "stream":Ljava/io/FileOutputStream;
    :catch_3c
    move-exception v3

    .line 3639
    .local v3, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3640
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3642
    .end local v2  # "stream":Ljava/io/FileOutputStream;
    .end local v3  # "e":Ljava/io/IOException;
    :goto_49
    monitor-exit v1

    .line 3643
    return-void

    .line 3642
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_3a

    throw v2
.end method

.method hasMotionSensor()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2001
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

    .line 3073
    monitor-enter p0

    .line 3074
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3075
    monitor-exit p0

    .line 3076
    return-void

    .line 3075
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 3
    .param p1, "appid"  # I

    .line 1813
    monitor-enter p0

    .line 1814
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 1815
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method isCharging()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2584
    monitor-enter p0

    .line 2585
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    monitor-exit p0

    return v0

    .line 2586
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

    .line 2630
    monitor-enter p0

    .line 2631
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    monitor-exit p0

    return v0

    .line 2632
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

    .line 2513
    monitor-enter p0

    .line 2514
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    monitor-exit p0

    return v0

    .line 2515
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 2

    .line 3269
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
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2292
    monitor-enter p0

    .line 2293
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2294
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2293
    return v0

    .line 2295
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2285
    monitor-enter p0

    .line 2286
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2287
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2286
    return v0

    .line 2288
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method isQuickDozeEnabled()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    monitor-exit p0

    return v0

    .line 2609
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

    .line 2557
    monitor-enter p0

    .line 2558
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    monitor-exit p0

    return v0

    .line 2559
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .registers 4
    .param p1, "showing"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2638
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1f

    .line 2639
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2640
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_1f

    .line 2641
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2642
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string/jumbo v1, "unlocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2645
    :cond_1f
    return-void
.end method

.method public synthetic lambda$onBootPhase$0$DeviceIdleController(Landroid/os/PowerSaveState;)V
    .registers 3
    .param p1, "state"  # Landroid/os/PowerSaveState;

    .line 1982
    monitor-enter p0

    .line 1983
    :try_start_1
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 1984
    monitor-exit p0

    .line 1985
    return-void

    .line 1984
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method maybeDoImmediateMaintenance()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3224
    monitor-enter p0

    .line 3225
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 3226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    sub-long/2addr v0, v2

    .line 3229
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b

    .line 3230
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3233
    .end local v0  # "duration":J
    :cond_1b
    monitor-exit p0

    .line 3234
    return-void

    .line 3233
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .line 3299
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 3300
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"  # I

    .line 1268
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 1269
    monitor-enter p0

    .line 1270
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1271
    monitor-exit p0

    goto :goto_c

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0

    .line 1273
    :cond_c
    :goto_c
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3c

    if-ne p1, v0, :cond_12

    goto :goto_3c

    .line 1278
    :cond_12
    if-nez p1, :cond_48

    .line 1279
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 1281
    monitor-enter p0

    .line 1282
    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1283
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1284
    monitor-exit p0

    goto :goto_48

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v0

    .line 1285
    :cond_27
    const/4 v2, 0x4

    if-ne v0, v2, :cond_48

    .line 1288
    monitor-enter p0

    .line 1289
    :try_start_2b
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1290
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_37

    .line 1291
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1293
    :cond_37
    monitor-exit p0

    goto :goto_48

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    throw v0

    .line 1275
    :cond_3c
    :goto_3c
    monitor-enter p0

    .line 1276
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1277
    monitor-exit p0

    .line 1296
    :cond_48
    :goto_48
    return-void

    .line 1277
    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"  # I

    .line 1891
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1ec

    .line 1892
    monitor-enter p0

    .line 1893
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1894
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    .line 1895
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1896
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 1897
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1898
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1899
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1900
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_maint"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1902
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1903
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_going_idle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1905
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1906
    const-string/jumbo v0, "netpolicy"

    .line 1907
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1906
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1908
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1909
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1911
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_cc

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1914
    .local v0, "sigMotionSensorId":I
    if-lez v0, :cond_9f

    .line 1915
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1917
    :cond_9f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_be

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 1919
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1922
    :cond_be
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_cc

    .line 1924
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1929
    .end local v0  # "sigMotionSensorId":I
    :cond_cc
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1931
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    const/16 v1, 0x64

    .line 1932
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1933
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1934
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1935
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 1938
    :cond_f8
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1939
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1938
    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController$Injector;->getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleController$LocalService;)Lcom/android/server/deviceidle/ConstraintController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    .line 1940
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    if-eqz v0, :cond_113

    .line 1941
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    invoke-interface {v0}, Lcom/android/server/deviceidle/ConstraintController;->start()V

    .line 1944
    :cond_113
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    .line 1946
    .local v0, "angleThreshold":F
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 1949
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    .line 1951
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 1952
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1954
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 1955
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1958
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1959
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1962
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 1963
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1964
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1967
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 1968
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1971
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 1972
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1973
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1976
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 1978
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1980
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/-$$Lambda$DeviceIdleController$Lhneg3gOUCFQWz6Y-5S75AWemY8;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$Lhneg3gOUCFQWz6Y-5S75AWemY8;-><init>(Lcom/android/server/DeviceIdleController;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 1986
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1987
    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1986
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 1990
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 1992
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 1994
    .end local v0  # "angleThreshold":F
    .end local v1  # "filter":Landroid/content/IntentFilter;
    monitor-exit p0
    :try_end_1e4
    .catchall {:try_start_5 .. :try_end_1e4} :catchall_1e9

    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_1ec

    .line 1994
    :catchall_1e9
    move-exception v0

    :try_start_1ea
    monitor-exit p0
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1e9

    throw v0

    .line 1997
    :cond_1ec
    :goto_1ec
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 22
    .param p1, "shell"  # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"  # Ljava/lang/String;

    .line 3732
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 3733
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "step"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_8e

    .line 3734
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    monitor-enter p0

    .line 3737
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3738
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_8a

    .line 3740
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_69

    :try_start_2d
    const-string v4, "deep"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_69

    .line 3744
    :cond_36
    const-string/jumbo v4, "light"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3745
    const-string/jumbo v4, "s:shell"

    invoke-virtual {v7, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3746
    const-string v4, "Stepped to light: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 3748
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 3741
    :cond_69
    :goto_69
    const-string/jumbo v4, "s:shell"

    invoke-virtual {v7, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3742
    const-string v4, "Stepped to deep: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3743
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_2d .. :try_end_7d} :catchall_84

    .line 3751
    :goto_7d
    :try_start_7d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3752
    nop

    .line 3753
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_924

    .line 3751
    .restart local v1  # "token":J
    .restart local v3  # "arg":Ljava/lang/String;
    :catchall_84
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v4

    .line 3753
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_8a
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_8a

    throw v1

    .line 3754
    :cond_8e
    const-string v1, "force-idle"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v12, -0x1

    const/4 v6, 0x1

    if-eqz v1, :cond_15d

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    monitor-enter p0

    .line 3758
    :try_start_a4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3759
    .restart local v1  # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_159

    .line 3761
    .restart local v3  # "arg":Ljava/lang/String;
    if-eqz v3, :cond_109

    :try_start_ae
    const-string v13, "deep"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b7

    goto :goto_109

    .line 3780
    :cond_b7
    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 3781
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3782
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3783
    iget v5, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3784
    .local v5, "curLightState":I
    :goto_c7
    if-eq v5, v4, :cond_ee

    .line 3785
    const-string/jumbo v6, "s:shell"

    invoke-virtual {v7, v6}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3786
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v5, v6, :cond_ea

    .line 3787
    const-string v4, "Unable to go light idle; stopped at "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3788
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e4
    .catchall {:try_start_ae .. :try_end_e4} :catchall_153

    .line 3790
    nop

    .line 3799
    :try_start_e5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_159

    .line 3790
    return v12

    .line 3792
    :cond_ea
    :try_start_ea
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    move v5, v6

    goto :goto_c7

    .line 3794
    :cond_ee
    const-string v4, "Now forced in to light idle mode"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    .end local v5  # "curLightState":I
    goto :goto_14c

    .line 3796
    :cond_f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14c

    .line 3762
    :cond_109
    :goto_109
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v4, :cond_118

    .line 3763
    const-string v4, "Unable to go deep idle; not enabled"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_ea .. :try_end_112} :catchall_153

    .line 3764
    nop

    .line 3799
    :try_start_113
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_117
    .catchall {:try_start_113 .. :try_end_117} :catchall_159

    .line 3764
    return v12

    .line 3766
    :cond_118
    :try_start_118
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3767
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3768
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3769
    .local v4, "curState":I
    :goto_11f
    if-eq v4, v5, :cond_146

    .line 3770
    const-string/jumbo v6, "s:shell"

    invoke-virtual {v7, v6}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3771
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v4, v6, :cond_142

    .line 3772
    const-string v5, "Unable to go deep idle; stopped at "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3773
    iget v5, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_13c
    .catchall {:try_start_118 .. :try_end_13c} :catchall_153

    .line 3775
    nop

    .line 3799
    :try_start_13d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_159

    .line 3775
    return v12

    .line 3777
    :cond_142
    :try_start_142
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mState:I

    move v4, v6

    goto :goto_11f

    .line 3779
    :cond_146
    const-string v5, "Now forced in to deep idle mode"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_142 .. :try_end_14b} :catchall_153

    .line 3780
    .end local v4  # "curState":I
    nop

    .line 3799
    :goto_14c
    :try_start_14c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3800
    nop

    .line 3801
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_924

    .line 3799
    .restart local v1  # "token":J
    .restart local v3  # "arg":Ljava/lang/String;
    :catchall_153
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v4

    .line 3801
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_159
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_14c .. :try_end_15c} :catchall_159

    throw v1

    .line 3802
    :cond_15d
    const-string v1, "force-inactive"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 3803
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    monitor-enter p0

    .line 3806
    :try_start_16f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_173
    .catchall {:try_start_16f .. :try_end_173} :catchall_1a1

    .line 3808
    .restart local v1  # "token":J
    :try_start_173
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3809
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3810
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3811
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3812
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3813
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_173 .. :try_end_194} :catchall_19b

    .line 3815
    :try_start_194
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3816
    nop

    .line 3817
    .end local v1  # "token":J
    monitor-exit p0

    goto/16 :goto_924

    .line 3815
    .restart local v1  # "token":J
    :catchall_19b
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3

    .line 3817
    .end local v1  # "token":J
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_1a1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_194 .. :try_end_1a4} :catchall_1a1

    throw v1

    .line 3818
    :cond_1a5
    const-string/jumbo v1, "unforce"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 3819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    monitor-enter p0

    .line 3822
    :try_start_1b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_1e8

    .line 3824
    .restart local v1  # "token":J
    :try_start_1bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 3825
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3826
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3827
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3828
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1bc .. :try_end_1db} :catchall_1e2

    .line 3830
    :try_start_1db
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3831
    nop

    .line 3832
    .end local v1  # "token":J
    monitor-exit p0

    goto/16 :goto_924

    .line 3830
    .restart local v1  # "token":J
    :catchall_1e2
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3

    .line 3832
    .end local v1  # "token":J
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_1e8
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1eb
    .catchall {:try_start_1db .. :try_end_1eb} :catchall_1e8

    throw v1

    .line 3833
    :cond_1ec
    const-string v1, "get"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x6

    const/4 v14, 0x2

    if-eqz v1, :cond_2bd

    .line 3834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3836
    monitor-enter p0

    .line 3837
    :try_start_200
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3838
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_2b1

    .line 3839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_20a
    .catchall {:try_start_200 .. :try_end_20a} :catchall_2b9

    .line 3841
    .local v2, "token":J
    :try_start_20a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_934

    :cond_211
    goto :goto_25b

    :sswitch_212
    const-string/jumbo v4, "network"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    move v4, v13

    goto :goto_25c

    :sswitch_21d
    const-string v4, "charging"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    move v4, v5

    goto :goto_25c

    :sswitch_227
    const-string/jumbo v4, "quick"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    const/4 v4, 0x3

    goto :goto_25c

    :sswitch_232
    const-string/jumbo v4, "light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    move v4, v11

    goto :goto_25c

    :sswitch_23d
    const-string v4, "force"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    move v4, v14

    goto :goto_25c

    :sswitch_247
    const-string v4, "deep"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    move v4, v6

    goto :goto_25c

    :sswitch_251
    const-string/jumbo v5, "screen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_211

    goto :goto_25c

    :goto_25b
    move v4, v12

    :goto_25c
    packed-switch v4, :pswitch_data_952

    .line 3849
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_294

    .line 3848
    :pswitch_262  #0x6
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a6

    .line 3847
    :pswitch_268  #0x5
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a6

    .line 3846
    :pswitch_26e  #0x4
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a6

    .line 3845
    :pswitch_274  #0x3
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a6

    .line 3844
    :pswitch_27a  #0x2
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2a6

    .line 3843
    :pswitch_280  #0x1
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a6

    .line 3842
    :pswitch_28a  #0x0
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a6

    .line 3849
    :goto_294
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown get option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a6
    .catchall {:try_start_20a .. :try_end_2a6} :catchall_2ab

    .line 3852
    :goto_2a6
    :try_start_2a6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3853
    nop

    .line 3854
    .end local v2  # "token":J
    goto :goto_2b6

    .line 3852
    .restart local v2  # "token":J
    :catchall_2ab
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v4

    .line 3855
    .end local v2  # "token":J
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :cond_2b1
    const-string v2, "Argument required"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    .end local v1  # "arg":Ljava/lang/String;
    :goto_2b6
    monitor-exit p0

    goto/16 :goto_924

    :catchall_2b9
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_2bc
    .catchall {:try_start_2a6 .. :try_end_2bc} :catchall_2b9

    throw v1

    .line 3858
    :cond_2bd
    const-string v1, "disable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_361

    .line 3859
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    monitor-enter p0

    .line 3862
    :try_start_2cf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3863
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_2d7
    .catchall {:try_start_2cf .. :try_end_2d7} :catchall_35d

    .line 3865
    .restart local v3  # "arg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3866
    .local v4, "becomeActive":Z
    const/4 v5, 0x0

    .line 3867
    .local v5, "valid":Z
    if-eqz v3, :cond_2eb

    :try_start_2db
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2eb

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f8

    .line 3868
    :cond_2eb
    const/4 v5, 0x1

    .line 3869
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v6, :cond_2f8

    .line 3870
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3871
    const/4 v4, 0x1

    .line 3872
    const-string v6, "Deep idle mode disabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    :cond_2f8
    if-eqz v3, :cond_30b

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30b

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_318

    .line 3876
    :cond_30b
    const/4 v5, 0x1

    .line 3877
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v6, :cond_318

    .line 3878
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3879
    const/4 v4, 0x1

    .line 3880
    const-string v6, "Light idle mode disabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3883
    :cond_318
    if-eqz v4, :cond_33a

    .line 3884
    iput v13, v7, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3885
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_326

    const-string v12, "all"

    goto :goto_327

    :cond_326
    move-object v12, v3

    :goto_327
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-disabled"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3886
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    .line 3885
    invoke-virtual {v7, v6, v12}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3888
    :cond_33a
    if-nez v5, :cond_350

    .line 3889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown idle mode: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_350
    .catchall {:try_start_2db .. :try_end_350} :catchall_357

    .line 3892
    .end local v4  # "becomeActive":Z
    .end local v5  # "valid":Z
    :cond_350
    :try_start_350
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3893
    nop

    .line 3894
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_924

    .line 3892
    .restart local v1  # "token":J
    .restart local v3  # "arg":Ljava/lang/String;
    :catchall_357
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v4

    .line 3894
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_35d
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_360
    .catchall {:try_start_350 .. :try_end_360} :catchall_35d

    throw v1

    .line 3895
    :cond_361
    const-string v1, "enable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e8

    .line 3896
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    monitor-enter p0

    .line 3899
    :try_start_373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3900
    .restart local v1  # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_37b
    .catchall {:try_start_373 .. :try_end_37b} :catchall_3e4

    .line 3902
    .restart local v3  # "arg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3903
    .local v4, "becomeInactive":Z
    const/4 v5, 0x0

    .line 3904
    .restart local v5  # "valid":Z
    if-eqz v3, :cond_38f

    :try_start_37f
    const-string v12, "deep"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38f

    const-string v12, "all"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39c

    .line 3905
    :cond_38f
    const/4 v5, 0x1

    .line 3906
    iget-boolean v12, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v12, :cond_39c

    .line 3907
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3908
    const/4 v4, 0x1

    .line 3909
    const-string v12, "Deep idle mode enabled"

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3912
    :cond_39c
    if-eqz v3, :cond_3af

    const-string/jumbo v12, "light"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3af

    const-string v12, "all"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3bc

    .line 3913
    :cond_3af
    const/4 v5, 0x1

    .line 3914
    iget-boolean v12, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v12, :cond_3bc

    .line 3915
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3916
    const/4 v4, 0x1

    .line 3917
    const-string v6, "Light idle mode enable"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    :cond_3bc
    if-eqz v4, :cond_3c1

    .line 3921
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3923
    :cond_3c1
    if-nez v5, :cond_3d7

    .line 3924
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown idle mode: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d7
    .catchall {:try_start_37f .. :try_end_3d7} :catchall_3de

    .line 3927
    .end local v4  # "becomeInactive":Z
    .end local v5  # "valid":Z
    :cond_3d7
    :try_start_3d7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3928
    nop

    .line 3929
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_924

    .line 3927
    .restart local v1  # "token":J
    .restart local v3  # "arg":Ljava/lang/String;
    :catchall_3de
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v4

    .line 3929
    .end local v1  # "token":J
    .end local v3  # "arg":Ljava/lang/String;
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_3e4
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3e7
    .catchall {:try_start_3d7 .. :try_end_3e7} :catchall_3e4

    throw v1

    .line 3930
    :cond_3e8
    const-string v1, "enabled"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44e

    .line 3931
    monitor-enter p0

    .line 3932
    :try_start_3f1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3933
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_43a

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_400

    goto :goto_43a

    .line 3935
    :cond_400
    const-string v2, "deep"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_412

    .line 3936
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_40e

    const-string v3, "1"

    :cond_40e
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_447

    .line 3937
    :cond_412
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_425

    .line 3938
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_421

    const-string v3, "1"

    :cond_421
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_447

    .line 3940
    :cond_425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown idle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_447

    .line 3934
    :cond_43a
    :goto_43a
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_444

    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_444

    const-string v3, "1"

    :cond_444
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3942
    .end local v1  # "arg":Ljava/lang/String;
    :goto_447
    monitor-exit p0

    goto/16 :goto_924

    :catchall_44a
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_44d
    .catchall {:try_start_3f1 .. :try_end_44d} :catchall_44a

    throw v1

    .line 3943
    :cond_44e
    const-string/jumbo v1, "whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x3d

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    if-eqz v1, :cond_5a3

    .line 3944
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3945
    .restart local v1  # "arg":Ljava/lang/String;
    if-eqz v1, :cond_51a

    .line 3946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "android.permission.DEVICE_POWER"

    invoke-virtual {v13, v14, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3951
    .local v13, "token":J
    :goto_470
    :try_start_470
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_4fb

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_48a

    .line 3952
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_48a

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_48a

    goto/16 :goto_4fb

    .line 3956
    :cond_48a
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3957
    .local v2, "op":C
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 3958
    .local v15, "pkg":Ljava/lang/String;
    if-ne v2, v5, :cond_4c4

    .line 3959
    invoke-virtual {v7, v15}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4af

    .line 3960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e8

    .line 3962
    :cond_4af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e8

    .line 3964
    :cond_4c4
    if-ne v2, v4, :cond_4e1

    .line 3965
    invoke-virtual {v7, v15}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e8

    .line 3966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e8

    .line 3969
    :cond_4e1
    invoke-virtual {v7, v15}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3971
    .end local v2  # "op":C
    .end local v15  # "pkg":Ljava/lang/String;
    :cond_4e8
    :goto_4e8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_4ec
    .catchall {:try_start_470 .. :try_end_4ec} :catchall_514

    move-object v1, v2

    if-nez v2, :cond_4f5

    .line 3973
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .line 3975
    .end local v13  # "token":J
    goto/16 :goto_59d

    .line 3971
    .restart local v13  # "token":J
    :cond_4f5
    const/16 v3, 0x3d

    const/16 v5, 0x2b

    goto/16 :goto_470

    .line 3953
    :cond_4fb
    :goto_4fb
    :try_start_4fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50f
    .catchall {:try_start_4fb .. :try_end_50f} :catchall_514

    .line 3954
    nop

    .line 3973
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3954
    return v12

    .line 3973
    :catchall_514
    move-exception v0

    move-object v2, v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3976
    .end local v13  # "token":J
    :cond_51a
    monitor-enter p0

    .line 3977
    move v2, v11

    .local v2, "j":I
    :goto_51c
    :try_start_51c
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_546

    .line 3978
    const-string/jumbo v3, "system-excidle,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3980
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3981
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3977
    add-int/lit8 v2, v2, 0x1

    goto :goto_51c

    .line 3983
    .end local v2  # "j":I
    :cond_546
    move v2, v11

    .restart local v2  # "j":I
    :goto_547
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_571

    .line 3984
    const-string/jumbo v3, "system,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3985
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3987
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3983
    add-int/lit8 v2, v2, 0x1

    goto :goto_547

    .line 3989
    .end local v2  # "j":I
    :cond_571
    move v2, v11

    .restart local v2  # "j":I
    :goto_572
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_59c

    .line 3990
    const-string/jumbo v3, "user,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3991
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3989
    add-int/lit8 v2, v2, 0x1

    goto :goto_572

    .line 3995
    .end local v2  # "j":I
    :cond_59c
    monitor-exit p0

    .line 3997
    .end local v1  # "arg":Ljava/lang/String;
    :goto_59d
    goto/16 :goto_924

    .line 3995
    .restart local v1  # "arg":Ljava/lang/String;
    :catchall_59f
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_5a2
    .catchall {:try_start_51c .. :try_end_5a2} :catchall_59f

    throw v2

    .line 3997
    .end local v1  # "arg":Ljava/lang/String;
    :cond_5a3
    const-string/jumbo v1, "tempwhitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_655

    .line 3998
    const-wide/16 v1, 0x2710

    .line 3999
    .local v1, "duration":J
    const/4 v3, 0x0

    move-wide v14, v1

    move v13, v3

    .line 4001
    .end local v1  # "duration":J
    .local v13, "removePkg":Z
    .local v14, "duration":J
    :cond_5b1
    :goto_5b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .local v6, "opt":Ljava/lang/String;
    if-eqz v1, :cond_5f6

    .line 4002
    const-string v1, "-u"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d3

    .line 4003
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4004
    .end local v6  # "opt":Ljava/lang/String;
    .local v1, "opt":Ljava/lang/String;
    if-nez v1, :cond_5cc

    .line 4005
    const-string v2, "-u requires a user number"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4006
    return v12

    .line 4008
    :cond_5cc
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5b1

    .line 4009
    .end local v1  # "opt":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_5d3
    const-string v1, "-d"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ec

    .line 4010
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4011
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v1  # "opt":Ljava/lang/String;
    if-nez v1, :cond_5e7

    .line 4012
    const-string v2, "-d requires a duration"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    return v12

    .line 4015
    :cond_5e7
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_5b1

    .line 4016
    .end local v1  # "opt":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_5ec
    const-string v1, "-r"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b1

    .line 4017
    const/4 v13, 0x1

    goto :goto_5b1

    .line 4020
    :cond_5f6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4021
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_644

    .line 4023
    if-eqz v13, :cond_60f

    .line 4024
    :try_start_5fe
    iget v1, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v7, v5, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    :try_end_603
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_603} :catch_608

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto :goto_625

    .line 4028
    :catch_608
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto :goto_62f

    .line 4026
    :cond_60f
    :try_start_60f
    iget v3, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v16, "shell"
    :try_end_614
    .catch Ljava/lang/Exception; {:try_start_60f .. :try_end_614} :catch_629

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v17, v3

    move-wide v3, v14

    move-object/from16 v18, v5

    .end local v5  # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6  # "opt":Ljava/lang/String;
    .local v17, "opt":Ljava/lang/String;
    move-object/from16 v6, v16

    :try_start_622
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_625
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_625} :catch_626

    .line 4031
    :goto_625
    goto :goto_653

    .line 4028
    :catch_626
    move-exception v0

    move-object v1, v0

    goto :goto_62f

    .end local v17  # "opt":Ljava/lang/String;
    .end local v18  # "arg":Ljava/lang/String;
    .restart local v5  # "arg":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :catch_629
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object v1, v0

    .line 4029
    .end local v5  # "arg":Ljava/lang/String;
    .end local v6  # "opt":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v17  # "opt":Ljava/lang/String;
    .restart local v18  # "arg":Ljava/lang/String;
    :goto_62f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    return v12

    .line 4032
    .end local v1  # "e":Ljava/lang/Exception;
    .end local v17  # "opt":Ljava/lang/String;
    .end local v18  # "arg":Ljava/lang/String;
    .restart local v5  # "arg":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_644
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .end local v5  # "arg":Ljava/lang/String;
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v17  # "opt":Ljava/lang/String;
    .restart local v18  # "arg":Ljava/lang/String;
    if-eqz v13, :cond_650

    .line 4033
    const-string v1, "[-r] requires a package name"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    return v12

    .line 4036
    :cond_650
    invoke-virtual {v7, v10, v11}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4038
    .end local v13  # "removePkg":Z
    .end local v14  # "duration":J
    .end local v17  # "opt":Ljava/lang/String;
    .end local v18  # "arg":Ljava/lang/String;
    :goto_653
    goto/16 :goto_924

    :cond_655
    const-string v1, "except-idle-whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_735

    .line 4039
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4043
    .local v1, "token":J
    :try_start_66a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 4044
    .restart local v3  # "arg":Ljava/lang/String;
    if-nez v3, :cond_67a

    .line 4045
    const-string v4, "No arguments given"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_675
    .catchall {:try_start_66a .. :try_end_675} :catchall_72f

    .line 4046
    nop

    .line 4073
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4046
    return v12

    .line 4047
    :cond_67a
    :try_start_67a
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_688

    .line 4048
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto/16 :goto_6f7

    .line 4051
    :cond_688
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_716

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_6a5

    .line 4052
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_6a5

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x3d

    if-eq v5, v13, :cond_6a5

    goto :goto_716

    .line 4056
    :cond_6a5
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4057
    .local v5, "op":C
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4058
    .local v13, "pkg":Ljava/lang/String;
    const/16 v14, 0x2b

    if-ne v5, v14, :cond_6e5

    .line 4059
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6ce

    .line 4060
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_6f0

    .line 4062
    :cond_6ce
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_6f0

    .line 4064
    :cond_6e5
    const/16 v14, 0x3d

    if-ne v5, v14, :cond_6fd

    .line 4065
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 4070
    .end local v5  # "op":C
    .end local v13  # "pkg":Ljava/lang/String;
    :goto_6f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_6f4
    .catchall {:try_start_67a .. :try_end_6f4} :catchall_72f

    move-object v3, v5

    if-nez v5, :cond_688

    .line 4073
    .end local v3  # "arg":Ljava/lang/String;
    :goto_6f7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4074
    nop

    .line 4075
    .end local v1  # "token":J
    goto/16 :goto_924

    .line 4067
    .restart local v1  # "token":J
    .restart local v3  # "arg":Ljava/lang/String;
    .restart local v5  # "op":C
    .restart local v13  # "pkg":Ljava/lang/String;
    :cond_6fd
    :try_start_6fd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_711
    .catchall {:try_start_6fd .. :try_end_711} :catchall_72f

    .line 4068
    nop

    .line 4073
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4068
    return v12

    .line 4053
    .end local v5  # "op":C
    .end local v13  # "pkg":Ljava/lang/String;
    :cond_716
    :goto_716
    :try_start_716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_72a
    .catchall {:try_start_716 .. :try_end_72a} :catchall_72f

    .line 4054
    nop

    .line 4073
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4054
    return v12

    .line 4073
    .end local v3  # "arg":Ljava/lang/String;
    :catchall_72f
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4075
    .end local v1  # "token":J
    :cond_735
    const-string/jumbo v1, "sys-whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_813

    .line 4076
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4077
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_7e6

    .line 4078
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4082
    .local v2, "token":J
    :try_start_751
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75e

    .line 4083
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_7be

    .line 4086
    :cond_75e
    :goto_75e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_7c6

    .line 4087
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_773

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_773

    goto :goto_7c6

    .line 4091
    :cond_773
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4092
    .restart local v5  # "op":C
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4093
    .restart local v13  # "pkg":Ljava/lang/String;
    const/16 v14, 0x2b

    if-eq v5, v14, :cond_79d

    if-eq v5, v4, :cond_782

    goto :goto_7b7

    .line 4100
    :cond_782
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7b7

    .line 4101
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b7

    .line 4095
    :cond_79d
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b7

    .line 4096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    .end local v5  # "op":C
    .end local v13  # "pkg":Ljava/lang/String;
    :cond_7b7
    :goto_7b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4
    :try_end_7bb
    .catchall {:try_start_751 .. :try_end_7bb} :catchall_7df

    move-object v1, v4

    if-nez v4, :cond_7c3

    .line 4108
    :goto_7be
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4109
    nop

    .line 4110
    .end local v2  # "token":J
    goto :goto_80d

    .line 4105
    .restart local v2  # "token":J
    :cond_7c3
    const/16 v4, 0x2d

    goto :goto_75e

    .line 4088
    :cond_7c6
    :goto_7c6
    :try_start_7c6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with + or - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7da
    .catchall {:try_start_7c6 .. :try_end_7da} :catchall_7df

    .line 4089
    nop

    .line 4108
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4089
    return v12

    .line 4108
    :catchall_7df
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    .end local v1  # "arg":Ljava/lang/String;
    .local v4, "arg":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4111
    .end local v2  # "token":J
    .end local v4  # "arg":Ljava/lang/String;
    .restart local v1  # "arg":Ljava/lang/String;
    :cond_7e6
    monitor-enter p0

    .line 4112
    move v2, v11

    .local v2, "j":I
    :goto_7e8
    :try_start_7e8
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_80c

    .line 4113
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4114
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4115
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4112
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e8

    .line 4117
    .end local v2  # "j":I
    :cond_80c
    monitor-exit p0

    .line 4119
    .end local v1  # "arg":Ljava/lang/String;
    :goto_80d
    goto/16 :goto_924

    .line 4117
    .restart local v1  # "arg":Ljava/lang/String;
    :catchall_80f
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_812
    .catchall {:try_start_7e8 .. :try_end_812} :catchall_80f

    throw v2

    .line 4119
    .end local v1  # "arg":Ljava/lang/String;
    :cond_813
    const-string/jumbo v1, "motion"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85a

    .line 4120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    monitor-enter p0

    .line 4123
    :try_start_826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_82a
    .catchall {:try_start_826 .. :try_end_82a} :catchall_856

    .line 4125
    .local v1, "token":J
    :try_start_82a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 4126
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4127
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4128
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4129
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_849
    .catchall {:try_start_82a .. :try_end_849} :catchall_850

    .line 4131
    :try_start_849
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4132
    nop

    .line 4133
    .end local v1  # "token":J
    monitor-exit p0

    goto/16 :goto_924

    .line 4131
    .restart local v1  # "token":J
    :catchall_850
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3

    .line 4133
    .end local v1  # "token":J
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_856
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_859
    .catchall {:try_start_849 .. :try_end_859} :catchall_856

    throw v1

    .line 4134
    :cond_85a
    const-string/jumbo v1, "pre-idle-factor"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_905

    .line 4135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4137
    monitor-enter p0

    .line 4138
    :try_start_86d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_871
    .catchall {:try_start_86d .. :try_end_871} :catchall_901

    .line 4139
    .restart local v1  # "token":J
    const/4 v3, -0x1

    .line 4141
    .local v3, "ret":I
    :try_start_872
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 4142
    .restart local v4  # "arg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4143
    .local v5, "valid":Z
    const/4 v12, 0x0

    .line 4144
    .local v12, "mode":I
    if-eqz v4, :cond_8ae

    .line 4145
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v12, v13

    .line 4146
    invoke-virtual {v7, v12}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result v13

    move v3, v13

    .line 4147
    if-ne v3, v6, :cond_89d

    .line 4148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pre-idle-factor: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    const/4 v5, 0x1

    goto :goto_8ae

    .line 4150
    :cond_89d
    if-ne v3, v14, :cond_8a6

    .line 4151
    const/4 v5, 0x1

    .line 4152
    const-string v6, "Deep idle not supported"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8ae

    .line 4153
    :cond_8a6
    if-nez v3, :cond_8ae

    .line 4154
    const/4 v5, 0x1

    .line 4155
    const-string v6, "Idle timeout factor not changed"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    :cond_8ae
    :goto_8ae
    if-nez v5, :cond_8d1

    .line 4159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown idle timeout factor: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",(error code: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8d1
    .catch Ljava/lang/NumberFormatException; {:try_start_872 .. :try_end_8d1} :catch_8d9
    .catchall {:try_start_872 .. :try_end_8d1} :catchall_8d5

    .line 4166
    .end local v4  # "arg":Ljava/lang/String;
    .end local v5  # "valid":Z
    .end local v12  # "mode":I
    :cond_8d1
    :try_start_8d1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8d4
    .catchall {:try_start_8d1 .. :try_end_8d4} :catchall_901

    .line 4167
    goto :goto_8f9

    .line 4166
    :catchall_8d5
    move-exception v0

    move v4, v3

    move-object v3, v0

    goto :goto_8fd

    .line 4162
    :catch_8d9
    move-exception v0

    move v4, v3

    move-object v3, v0

    .line 4163
    .local v3, "e":Ljava/lang/NumberFormatException;
    .local v4, "ret":I
    :try_start_8dc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle timeout factor,(error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8f5
    .catchall {:try_start_8dc .. :try_end_8f5} :catchall_8fb

    .line 4166
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    :try_start_8f5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4167
    nop

    .line 4168
    .end local v1  # "token":J
    .end local v4  # "ret":I
    :goto_8f9
    monitor-exit p0

    goto :goto_924

    .line 4166
    .restart local v1  # "token":J
    .restart local v4  # "ret":I
    :catchall_8fb
    move-exception v0

    move-object v3, v0

    :goto_8fd
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3

    .line 4168
    .end local v1  # "token":J
    .end local v4  # "ret":I
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_901
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_904
    .catchall {:try_start_8f5 .. :try_end_904} :catchall_901

    throw v1

    .line 4169
    :cond_905
    const-string/jumbo v1, "reset-pre-idle-factor"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92f

    .line 4170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    monitor-enter p0

    .line 4173
    :try_start_918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_91c
    .catchall {:try_start_918 .. :try_end_91c} :catchall_92b

    .line 4175
    .restart local v1  # "token":J
    :try_start_91c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_91f
    .catchall {:try_start_91c .. :try_end_91f} :catchall_925

    .line 4177
    :try_start_91f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4178
    nop

    .line 4179
    .end local v1  # "token":J
    monitor-exit p0

    .line 4183
    :goto_924
    return v11

    .line 4177
    .restart local v1  # "token":J
    :catchall_925
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/DeviceIdleController;
    .end local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3

    .line 4179
    .end local v1  # "token":J
    .restart local v10  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1  # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :catchall_92b
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_92e
    .catchall {:try_start_91f .. :try_end_92e} :catchall_92b

    throw v1

    .line 4181
    :cond_92f
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :sswitch_data_934
    .sparse-switch
        -0x361a3f94 -> :sswitch_251
        0x2efcec -> :sswitch_247
        0x5d18aeb -> :sswitch_23d
        0x6233516 -> :sswitch_232
        0x66f25ed -> :sswitch_227
        0x55996271 -> :sswitch_21d
        0x6de15a2e -> :sswitch_212
    .end sparse-switch

    :pswitch_data_952
    .packed-switch 0x0
        :pswitch_28a  #00000000
        :pswitch_280  #00000001
        :pswitch_27a  #00000002
        :pswitch_274  #00000003
        :pswitch_26e  #00000004
        :pswitch_268  #00000005
        :pswitch_262  #00000006
    .end packed-switch
.end method

.method public onStart()V
    .registers 15

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1832
    .local v0, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 1833
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1835
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1836
    .local v1, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 1837
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_26
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_54

    .line 1838
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_e1

    .line 1840
    .local v5, "pkg":Ljava/lang/String;
    :try_start_35
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 1842
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1843
    .local v8, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_4f} :catch_50
    .catchall {:try_start_35 .. :try_end_4f} :catchall_e1

    .line 1846
    .end local v6  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8  # "appid":I
    goto :goto_51

    .line 1845
    :catch_50
    move-exception v6

    .line 1837
    .end local v5  # "pkg":Ljava/lang/String;
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1848
    .end local v4  # "i":I
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v4

    .line 1849
    .local v4, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v3

    .local v5, "i":I
    :goto_59
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v5, v8, :cond_94

    .line 1850
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_e1

    .line 1852
    .local v8, "pkg":Ljava/lang/String;
    :try_start_65
    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1854
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 1857
    .local v10, "appid":I
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1859
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_8f} :catch_90
    .catchall {:try_start_65 .. :try_end_8f} :catchall_e1

    .line 1862
    .end local v9  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10  # "appid":I
    goto :goto_91

    .line 1861
    :catch_90
    move-exception v9

    .line 1849
    .end local v8  # "pkg":Ljava/lang/String;
    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 1865
    .end local v5  # "i":I
    :cond_94
    :try_start_94
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/server/DeviceIdleController$Injector;->getConstants(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 1868
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1870
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1871
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1872
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 1875
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1876
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 1877
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1878
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1879
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v5, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1880
    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 1881
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 1882
    .end local v1  # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v2  # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_94 .. :try_end_c7} :catchall_e1

    .line 1884
    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 1885
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const-string v2, "deviceidle"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1886
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1887
    return-void

    .line 1882
    :catchall_e1
    move-exception v1

    :try_start_e2
    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v1
.end method

.method readConfigFileLocked()V
    .registers 4

    .line 3527
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3530
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_2f

    .line 3533
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 3535
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3536
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3537
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_1c} :catch_27
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 3541
    .end local v1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2c

    goto :goto_2b

    .line 3540
    :catchall_20
    move-exception v1

    .line 3541
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 3543
    goto :goto_26

    .line 3542
    :catch_25
    move-exception v2

    .line 3543
    :goto_26
    throw v1

    .line 3538
    :catch_27
    move-exception v1

    .line 3541
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 3543
    :goto_2b
    goto :goto_2e

    .line 3542
    :catch_2c
    move-exception v1

    .line 3544
    nop

    .line 3545
    :goto_2e
    return-void

    .line 3531
    .end local v0  # "stream":Ljava/io/FileInputStream;
    :catch_2f
    move-exception v0

    .line 3532
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"  # Landroid/location/Location;

    .line 3316
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3318
    return-void

    .line 3321
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3322
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_21

    .line 3323
    return-void

    .line 3325
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3326
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2e

    .line 3327
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3329
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"  # Landroid/location/Location;

    .line 3332
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3333
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3334
    return-void

    .line 3337
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3338
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 3339
    return-void

    .line 3341
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3342
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2a

    .line 3343
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3345
    :cond_2a
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3
    .param p1, "listener"  # Landroid/os/IMaintenanceActivityListener;

    .line 3119
    monitor-enter p0

    .line 3120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3121
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    monitor-exit p0

    return v0

    .line 3122
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2350
    .local v0, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2351
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2350
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2359
    .local v1, "token":J
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 2361
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    nop

    .line 2363
    return-void

    .line 2361
    :catchall_2f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 2110
    monitor-enter p0

    .line 2111
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2112
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2113
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2115
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2117
    :cond_15
    monitor-exit p0

    .line 2118
    const/4 v0, 0x0

    return v0

    .line 2117
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 2151
    monitor-enter p0

    .line 2152
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2153
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2155
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2157
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2159
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2160
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 6

    .line 3253
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3254
    .local v0, "active":Z
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v1, :cond_7

    .line 3255
    return-void

    .line 3257
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 3258
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x7

    .line 3259
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    const/4 v4, 0x0

    .line 3258
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3260
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3261
    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 2186
    monitor-enter p0

    .line 2187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2189
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2190
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2193
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2195
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2197
    :cond_22
    monitor-exit p0

    .line 2198
    return-void

    .line 2197
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

    .line 3183
    monitor-enter p0

    .line 3184
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3185
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3186
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 3188
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postResetPreIdleTimeoutFactor()V

    .line 3189
    return-void

    .line 3186
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

    .line 2128
    monitor-enter p0

    .line 2129
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2130
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2131
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2132
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2133
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2134
    monitor-exit p0

    .line 2135
    return-void

    .line 2134
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 2138
    monitor-enter p0

    .line 2139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2140
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2142
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2144
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2146
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2147
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 21
    .param p1, "delay"  # J
    .param p3, "idleUntil"  # Z

    .line 3394
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_1e

    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1e

    .line 3407
    const-string v3, "DeviceIdleController"

    const-string v4, "System don\'t have MotionSensor"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3411
    if-eqz p3, :cond_45

    .line 3412
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceIdleController.deep.idleUtil"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_64

    .line 3416
    :cond_45
    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    iget-wide v12, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceIdleController.deep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3420
    :goto_64
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 12
    .param p1, "delay"  # J

    .line 3424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3426
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x3

    const-string v6, "DeviceIdleController.light"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3429
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "activeReason"  # Ljava/lang/String;
    .param p2, "activeUid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2649
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2650
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2651
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 12
    .param p1, "delay"  # J

    .line 3433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3434
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    const-string v6, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3436
    return-void
.end method

.method setActiveIdleOpsForTest(I)V
    .registers 3
    .param p1, "count"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3094
    monitor-enter p0

    .line 3095
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3096
    monitor-exit p0

    .line 3097
    return-void

    .line 3096
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"  # Z

    .line 3110
    monitor-enter p0

    .line 3111
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 3112
    if-nez p1, :cond_8

    .line 3113
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3115
    :cond_8
    monitor-exit p0

    .line 3116
    return-void

    .line 3115
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setDeepEnabledForTest(Z)V
    .registers 3
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2685
    monitor-enter p0

    .line 2686
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2687
    monitor-exit p0

    .line 2688
    return-void

    .line 2687
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setIdleStartTimeForTest(J)V
    .registers 4
    .param p1, "idleStartTime"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3247
    monitor-enter p0

    .line 3248
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3249
    monitor-exit p0

    .line 3250
    return-void

    .line 3249
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3
    .param p1, "active"  # Z

    .line 3100
    monitor-enter p0

    .line 3101
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 3103
    if-nez p1, :cond_b

    .line 3104
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3106
    :cond_b
    monitor-exit p0

    .line 3107
    return-void

    .line 3106
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method setLightEnabledForTest(Z)V
    .registers 3
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2693
    monitor-enter p0

    .line 2694
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2695
    monitor-exit p0

    .line 2696
    return-void

    .line 2695
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setLightStateForTest(I)V
    .registers 3
    .param p1, "lightState"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2812
    monitor-enter p0

    .line 2813
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2814
    monitor-exit p0

    .line 2815
    return-void

    .line 2814
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setPreIdleTimeoutFactor(F)I
    .registers 4
    .param p1, "ratio"  # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3162
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_6

    .line 3164
    const/4 v0, 0x2

    return v0

    .line 3165
    :cond_6
    const v0, 0x3d4ccccd  # 0.05f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_f

    .line 3167
    const/4 v0, 0x3

    return v0

    .line 3168
    :cond_f
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1d

    .line 3170
    const/4 v0, 0x0

    return v0

    .line 3172
    :cond_1d
    monitor-enter p0

    .line 3173
    :try_start_1e
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3174
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3175
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2a

    .line 3177
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postUpdatePreIdleFactor()V

    .line 3178
    const/4 v0, 0x1

    return v0

    .line 3175
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method setPreIdleTimeoutMode(I)I
    .registers 3
    .param p1, "mode"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3133
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getPreIdleTimeoutByMode(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutFactor(F)I

    move-result v0

    return v0
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .line 3349
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_f

    .line 3350
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 3352
    :cond_f
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 21
    .param p1, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 2919
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2920
    .local v2, "now":J
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v4, v2

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const/4 v5, 0x7

    if-lez v4, :cond_2e

    .line 2922
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v4, :cond_2d

    .line 2923
    iput v5, v0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2924
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "alarm"

    invoke-virtual {v0, v5, v4}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2927
    :cond_2d
    return-void

    .line 2930
    :cond_2e
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v4, :cond_37

    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v4, :cond_37

    .line 2939
    return-void

    .line 2942
    :cond_37
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_1a6

    goto/16 :goto_1a5

    .line 3038
    :pswitch_44  #0x5
    iput v10, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3039
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3041
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v6, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_5b

    .line 3042
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3045
    :cond_5b
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3048
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3049
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v6, v10

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v10, v10, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v6, v10

    float-to-long v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3051
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v6, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_89

    .line 3052
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3054
    :cond_89
    const/4 v4, 0x6

    invoke-direct {v0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3055
    invoke-direct {v0, v7, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3056
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1a5

    .line 2955
    :pswitch_97  #0x2
    const/4 v4, 0x3

    invoke-direct {v0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 2956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2957
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2958
    iput-object v9, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2959
    iput-object v9, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2960
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2963
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v4, :cond_c3

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->hasSensor()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 2964
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 2965
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 2966
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 2967
    goto/16 :goto_1a5

    .line 2968
    :cond_c3
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v4, :cond_cc

    .line 2969
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2970
    goto/16 :goto_1a5

    .line 2973
    :cond_cc
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 2976
    :pswitch_ce  #0x3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2977
    invoke-direct {v0, v8, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 2978
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v12, v13, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2979
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v4

    .line 2980
    .local v4, "locationManager":Landroid/location/LocationManager;
    if-eqz v4, :cond_fc

    .line 2981
    const-string/jumbo v12, "network"

    invoke-virtual {v4, v12}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v12

    if-eqz v12, :cond_fc

    .line 2982
    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2983
    invoke-virtual {v14}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    .line 2982
    invoke-virtual {v4, v12, v13, v14}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2984
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_fe

    .line 2986
    :cond_fc
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 2988
    :goto_fe
    if-eqz v4, :cond_121

    .line 2989
    const-string v12, "gps"

    invoke-virtual {v4, v12}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v12

    if-eqz v12, :cond_121

    .line 2990
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2991
    const-wide/16 v14, 0x3e8

    const/high16 v16, 0x40a00000  # 5.0f

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2992
    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v18

    .line 2991
    const-string v13, "gps"

    move-object v12, v4

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v18}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2993
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_123

    .line 2995
    :cond_121
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2999
    :goto_123
    iget-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v11, :cond_129

    .line 3000
    goto/16 :goto_1a5

    .line 3005
    .end local v4  # "locationManager":Landroid/location/LocationManager;
    :cond_129
    :pswitch_129  #0x4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3007
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3012
    :pswitch_134  #0x7
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3013
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3017
    :pswitch_140  #0x6
    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3020
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v4, v10

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v10, v10, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v4, v10

    float-to-long v10, v4

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3023
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3024
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v4, v10, v12

    if-gez v4, :cond_172

    .line 3025
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3027
    :cond_172
    invoke-direct {v0, v7, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3028
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v4, v5, :cond_17e

    .line 3029
    iput v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3032
    :cond_17e
    invoke-direct {v0, v8, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3033
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3034
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3035
    goto :goto_1a5

    .line 2946
    :pswitch_18c  #0x1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 2947
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 2948
    .local v4, "delay":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v7

    if-eqz v7, :cond_19e

    .line 2949
    iget v7, v0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v8, v4

    mul-float/2addr v7, v8

    float-to-long v4, v7

    .line 2951
    :cond_19e
    invoke-virtual {v0, v4, v5, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2952
    invoke-direct {v0, v6, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 2953
    nop

    .line 3059
    .end local v4  # "delay":J
    :goto_1a5
    return-void

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_18c  #00000001
        :pswitch_97  #00000002
        :pswitch_ce  #00000003
        :pswitch_129  #00000004
        :pswitch_44  #00000005
        :pswitch_140  #00000006
        :pswitch_134  #00000007
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"  # Ljava/lang/String;

    .line 2824
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_113

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    goto/16 :goto_113

    .line 2832
    :cond_b
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 2834
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v0, v2, :cond_84

    if-eq v0, v6, :cond_a7

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-eq v0, v5, :cond_24

    if-eq v0, v8, :cond_24

    if-eq v0, v7, :cond_a7

    goto/16 :goto_112

    .line 2877
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v8, :cond_2d

    goto :goto_3b

    .line 2900
    :cond_2d
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2902
    iput v8, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2903
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_112

    .line 2879
    :cond_3b
    :goto_3b
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2881
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_54

    .line 2882
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_64

    .line 2883
    :cond_54
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_64

    .line 2884
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2887
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2889
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2892
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2893
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2894
    invoke-direct {p0, v6, v1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2895
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_112

    .line 2836
    :cond_84
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2838
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2839
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2840
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2843
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2844
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2845
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2846
    goto :goto_112

    .line 2851
    :cond_a7
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_d2

    .line 2852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v7, v9

    .line 2853
    .local v7, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_c7

    .line 2855
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_d2

    .line 2858
    :cond_c7
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v11, v7, v11

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2861
    .end local v7  # "duration":J
    :cond_d2
    :goto_d2
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2862
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2863
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

    .line 2865
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v2, v7

    if-gez v0, :cond_fc

    .line 2866
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2869
    :cond_fc
    iput v5, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2870
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2871
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2872
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2873
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 2874
    nop

    .line 2907
    :goto_112
    return-void

    .line 2827
    :cond_113
    :goto_113
    return-void
.end method

.method stopMonitoringMotionLocked()V
    .registers 2

    .line 3356
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_f

    .line 3357
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3359
    :cond_f
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/IMaintenanceActivityListener;

    .line 3126
    monitor-enter p0

    .line 3127
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3128
    monitor-exit p0

    .line 3129
    return-void

    .line 3128
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method updateChargingLocked(Z)V
    .registers 4
    .param p1, "charging"  # Z

    .line 2591
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 2592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2593
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_25

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_25

    .line 2596
    :cond_11
    if-eqz p1, :cond_25

    .line 2597
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2598
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_25

    .line 2599
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2600
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "charging"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2603
    :cond_25
    :goto_25
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 7
    .param p1, "connIntent"  # Landroid/content/Intent;

    .line 2520
    monitor-enter p0

    .line 2521
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getConnectivityService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    .line 2522
    .local v0, "cm":Lcom/android/server/ConnectivityService;
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4e

    .line 2523
    if-nez v0, :cond_b

    .line 2524
    return-void

    .line 2527
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2528
    .local v1, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 2530
    if-nez v1, :cond_14

    .line 2531
    const/4 v2, 0x0

    .local v2, "conn":Z
    goto :goto_36

    .line 2533
    .end local v2  # "conn":Z
    :cond_14
    if-nez p1, :cond_1b

    .line 2534
    :try_start_16
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .restart local v2  # "conn":Z
    goto :goto_36

    .line 2536
    .end local v2  # "conn":Z
    :cond_1b
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    .line 2537
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2539
    .local v2, "networkType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_2b

    .line 2540
    monitor-exit p0

    return-void

    .line 2542
    :cond_2b
    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 2546
    .local v2, "conn":Z
    :goto_36
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, v3, :cond_49

    .line 2547
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2548
    if-eqz v2, :cond_49

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_49

    .line 2549
    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2552
    .end local v2  # "conn":Z
    :cond_49
    monitor-exit p0

    .line 2553
    return-void

    .line 2552
    :catchall_4b
    move-exception v2

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_16 .. :try_end_4d} :catchall_4b

    throw v2

    .line 2522
    .end local v0  # "cm":Lcom/android/server/ConnectivityService;
    .end local v1  # "ni":Landroid/net/NetworkInfo;
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method updateInteractivityLocked()V
    .registers 4

    .line 2566
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 2568
    .local v0, "screenOn":Z
    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    .line 2569
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2570
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_37

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_37

    .line 2573
    :cond_17
    if-eqz v0, :cond_37

    .line 2574
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2575
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v1, :cond_37

    .line 2576
    :cond_2a
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2577
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string/jumbo v2, "screen"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2580
    :cond_37
    :goto_37
    return-void
.end method

.method updatePreIdleFactor()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3201
    monitor-enter p0

    .line 3202
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3203
    monitor-exit p0

    return-void

    .line 3205
    :cond_9
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 3206
    :cond_13
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 3207
    monitor-exit p0

    return-void

    .line 3209
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3210
    .local v0, "delay":J
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_2d

    .line 3211
    monitor-exit p0

    return-void

    .line 3213
    :cond_2d
    long-to-float v4, v0

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 3214
    .local v4, "newDelay":J
    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gez v2, :cond_41

    .line 3215
    monitor-exit p0

    return-void

    .line 3217
    :cond_41
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3219
    .end local v0  # "delay":J
    .end local v4  # "newDelay":J
    :cond_45
    monitor-exit p0

    .line 3220
    return-void

    .line 3219
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_47

    throw v0
.end method

.method updateQuickDozeFlagLocked(Z)V
    .registers 2
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2616
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 2617
    if-eqz p1, :cond_7

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2624
    :cond_7
    return-void
.end method

.method writeConfigFileLocked()V
    .registers 5

    .line 3613
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 3614
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3615
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3646
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3647
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3648
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string/jumbo v4, "n"

    if-ge v2, v3, :cond_31

    .line 3649
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3650
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "wl"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3651
    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3652
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3648
    .end local v3  # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3654
    .end local v2  # "i":I
    :cond_31
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_32
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 3655
    const-string/jumbo v3, "un-wl"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3656
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3657
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3654
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 3659
    .end local v2  # "i":I
    :cond_51
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3661
    return-void
.end method
