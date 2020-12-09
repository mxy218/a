.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$Injector;,
        Lcom/android/server/power/PowerManagerService$NativeWrapper;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_BUTTON_ON_DURATION:I = 0x1388

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final MSG_WAKE_UP:I = 0x5

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final PROXIMITY_NEAR_THRESHOLD:F = 5.0f

.field private static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field private static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field private static final REBOOT_PROPERTY:Ljava/lang/String; = "sys.boot.reason"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static sQuiescent:Z


# instance fields
.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field private mBootCompleted:Z

.field private mButtonBrightness:I

.field private mButtonBrightnessOverrideFromWindowManager:I

.field private mButtonBrightnessSettingDefault:I

.field private mButtonLightOnKeypressOnly:Z

.field private mButtonOn:Z

.field private mButtonPressed:Z

.field private mButtonTimeout:I

.field private mButtonsLight:Lcom/android/server/lights/Light;

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOff:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDozeStartInProgress:Z

.field private mDrawWakeLockOverrideFromSidekick:Z

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mEnableAutoSuspendConfig:Z

.field private mForceNavbar:Z

.field private mForceSuspendActive:Z

.field private mForegroundProfile:I

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field private mIsPowered:Z

.field private mIsVrModeEnabled:Z

.field private mKeyboardBrightness:I

.field private mKeyboardBrightnessSettingDefault:I

.field private mKeyboardLight:Lcom/android/server/lights/Light;

.field private mKeyboardVisible:Z

.field private mLastButtonActivityTime:J

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepReason:I

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeReason:I

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mMaximumScreenDimDurationConfig:J

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field private mMinimumScreenOffTimeoutConfig:J

.field private final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOverriddenTimeout:J

.field private mPlugType:I

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPositive:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityTimeOut:I

.field private mProximityWakeEnabled:Z

.field private mProximityWakeEnabledByDefaultConfig:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProximityWakeSupported:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffTimeoutSetting:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:J

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedSetting:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 796
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    .line 797
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 801
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 343
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 393
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 480
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 511
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 519
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 524
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessOverrideFromWindowManager:I

    .line 529
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 532
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 535
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 541
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 553
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 556
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 558
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 603
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 2756
    new-instance v2, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 4148
    new-instance v2, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 803
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 804
    new-instance v2, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 805
    new-instance v2, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 806
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 807
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 809
    new-instance p2, Lcom/android/server/ServiceThread;

    const-string v2, "PowerManagerService"

    const/4 v3, -0x4

    invoke-direct {p2, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 811
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->start()V

    .line 812
    new-instance p2, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 813
    new-instance p2, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 814
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 815
    new-instance p1, Lcom/android/server/power/AttentionDetector;

    new-instance p2, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;

    invoke-direct {p2, p0}, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p2, v2}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 817
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 818
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 819
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 820
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 821
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 823
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p1, p2, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 826
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 827
    :try_start_f2
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v2, "PowerManagerService.WakeLocks"

    .line 828
    invoke-virtual {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 829
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v2, "PowerManagerService.Display"

    .line 830
    invoke-virtual {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 831
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    if-eqz p2, :cond_111

    .line 832
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p2}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 833
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 835
    :cond_111
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 836
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 838
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 839
    const-string/jumbo p2, "ro.boot.quiescent"

    const-string v2, "0"

    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    sput-boolean p2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 841
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p2, p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 842
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p2, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    .line 843
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p2, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V

    .line 844
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 845
    monitor-exit p1

    .line 846
    return-void

    .line 845
    :catchall_13e
    move-exception p2

    monitor-exit p1
    :try_end_140
    .catchall {:try_start_f2 .. :try_end_140} :catchall_13e

    throw p2
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 122
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    .line 122
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1576(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3

    .line 122
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mEnableAutoSuspendConfig:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 122
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p0
.end method

.method static synthetic access$2802(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    .line 122
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->cleanupProximity()V

    return-void
.end method

.method static synthetic access$3500(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 9

    .line 122
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/android/server/power/PowerManagerService;J)J
    .registers 3

    .line 122
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->runWithProximityCheck(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardVisible:Z

    return p0
.end method

.method static synthetic access$5802(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Z)V
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 8

    .line 122
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setButtonBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$700(Z)V
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7300(I)I
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeGetFeature(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->cleanupProximityLocked()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$800(II)V
    .registers 2

    .line 122
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    return-void
.end method

.method static synthetic access$900(II)V
    .registers 2

    .line 122
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    return-void
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 25

    .line 1164
    move-object/from16 v0, p0

    move/from16 v12, p7

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1172
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1174
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ltz v1, :cond_50

    .line 1175
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1176
    move-object v1, v10

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1178
    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1180
    move-object v1, v10

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1182
    :cond_4f
    goto :goto_99

    .line 1184
    :cond_50
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 1185
    if-nez v1, :cond_6a

    .line 1186
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, v12}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 1187
    const/16 v2, 0x15

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1188
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v11, v1

    goto :goto_6b

    .line 1185
    :cond_6a
    move-object v11, v1

    .line 1190
    :goto_6b
    iget v1, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/2addr v1, v15

    iput v1, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1191
    new-instance v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object v15, v10

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_b5

    .line 1194
    move-object/from16 v1, p1

    :try_start_8b
    invoke-interface {v1, v15, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_ac
    .catchall {:try_start_8b .. :try_end_8e} :catchall_b5

    .line 1197
    nop

    .line 1198
    :try_start_8f
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-direct {v0, v15}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1200
    move-object v10, v15

    const/4 v14, 0x1

    .line 1203
    :goto_99
    invoke-direct {v0, v10, v12}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1204
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1206
    if-eqz v14, :cond_aa

    .line 1212
    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1214
    :cond_aa
    monitor-exit v13

    .line 1215
    return-void

    .line 1195
    :catch_ac
    move-exception v0

    .line 1196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wake lock is already dead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :catchall_b5
    move-exception v0

    monitor-exit v13
    :try_end_b7
    .catchall {:try_start_8f .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method private adjustWakeLockSummaryLocked(I)I
    .registers 4

    .line 2038
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 2039
    and-int/lit16 p1, p1, -0xc1

    .line 2041
    :cond_7
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_f

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_17

    .line 2043
    :cond_f
    and-int/lit8 p1, p1, -0xf

    .line 2045
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_17

    .line 2046
    and-int/lit8 p1, p1, -0x11

    .line 2051
    :cond_17
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_28

    .line 2052
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 2053
    or-int/lit8 p1, p1, 0x21

    goto :goto_28

    .line 2054
    :cond_23
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 2055
    or-int/lit8 p1, p1, 0x1

    .line 2058
    :cond_28
    :goto_28
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2e

    .line 2059
    or-int/lit8 p1, p1, 0x1

    .line 2062
    :cond_2e
    return p1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 12

    .line 1243
    iget p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v0, 0x10000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_52

    .line 1244
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 1247
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p2, :cond_40

    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_40

    .line 1248
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1249
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_2a

    .line 1251
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    .line 1252
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    goto :goto_3d

    .line 1254
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1255
    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_36
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1256
    :goto_38
    invoke-virtual {p2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v0

    move-object p2, v1

    .line 1258
    :goto_3d
    move-object v7, p2

    move v8, v0

    goto :goto_46

    .line 1259
    :cond_40
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1260
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v7, p2

    move v8, v0

    .line 1262
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v6, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 1266
    :cond_52
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9

    .line 1326
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 1327
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1333
    :cond_19
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .registers 12

    .line 3329
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3330
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_4e

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_4e

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_12

    goto :goto_4e

    .line 3335
    :cond_12
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 3337
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_3b

    .line 3338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3339
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3341
    :cond_3b
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3343
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3345
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3346
    monitor-exit v0

    .line 3347
    return-void

    .line 3332
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    .line 3346
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private canDozeLocked()Z
    .registers 3

    .line 2603
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private canDreamLocked()Z
    .registers 4

    .line 2571
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2574
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2575
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    if-nez v0, :cond_54

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_29

    goto :goto_54

    .line 2581
    :cond_29
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_52

    .line 2582
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v0, :cond_38

    .line 2583
    return v1

    .line 2585
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_45

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v2, v0, :cond_45

    .line 2588
    return v1

    .line 2590
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v0, :cond_52

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v2, v0, :cond_52

    .line 2593
    return v1

    .line 2596
    :cond_52
    const/4 v0, 0x1

    return v0

    .line 2579
    :cond_54
    :goto_54
    return v1
.end method

.method private cleanupProximity()V
    .registers 3

    .line 5302
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 5303
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->cleanupProximityLocked()V

    .line 5304
    monitor-exit v0

    .line 5305
    return-void

    .line 5304
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private cleanupProximityLocked()V
    .registers 3

    .line 5308
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5309
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5311
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_19

    .line 5312
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 5315
    :cond_19
    return-void
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    .line 4088
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 4

    .line 3060
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3068
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 3071
    goto :goto_14

    .line 3069
    :catch_e
    move-exception p1

    .line 3070
    const-string v0, "PowerManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3072
    :goto_14
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11

    .line 3550
    const-string v0, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3554
    :try_start_8
    const-string v1, "Power Manager State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDirty=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    const-string v1, "  mNotifyLongScheduled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3572
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17b

    .line 3573
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_184

    .line 3575
    :cond_17b
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3577
    :goto_184
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3578
    const-string v1, "  mNotifyLongDispatched="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3579
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_198

    .line 3580
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a1

    .line 3582
    :cond_198
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3584
    :goto_1a1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3585
    const-string v1, "  mNotifyLongNextCheck="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3586
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b5

    .line 3587
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1be

    .line 3589
    :cond_1b5
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3591
    :goto_1be
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivitySummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanSummoned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    invoke-static {v2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 3606
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3605
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 3608
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3607
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 3610
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3609
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3618
    const-string v1, "Settings and Configuration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOffTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSleepTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (enforced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3654
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v1

    .line 3679
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v3

    .line 3680
    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v5

    .line 3681
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sleep timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen off timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen dim duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3687
    const-string v1, "UID states (changing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3688
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3689
    const-string v1, " changed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3691
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const/4 v1, 0x0

    move v2, v1

    :goto_78c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7d5

    .line 3693
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3694
    const-string v4, "  UID "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3695
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v4, :cond_7b9

    const-string v4, "  ACTIVE "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7be

    .line 3697
    :cond_7b9
    const-string v4, "INACTIVE "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3698
    :goto_7be
    const-string v4, " count="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3699
    iget v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3700
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3701
    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3692
    add-int/lit8 v2, v2, 0x1

    goto :goto_78c

    .line 3704
    :cond_7d5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3705
    const-string v2, "Looper state:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, "  "

    invoke-virtual {v2, v3, v4}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3708
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake Locks: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_810
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_831

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    goto :goto_810

    .line 3714
    :cond_831
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend Blockers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_854
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_875

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/SuspendBlocker;

    .line 3717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    goto :goto_854

    .line 3720
    :cond_875
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 3724
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 3725
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v2, p1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3727
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3728
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile power states: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    nop

    :goto_8bb
    if-ge v1, v2, :cond_8fa

    .line 3731
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3732
    const-string v4, "  mUserId="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3733
    iget v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3734
    const-string v4, " mScreenOffTimeout="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3735
    iget-wide v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 3736
    const-string v4, " mWakeLockSummary="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3737
    iget v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3738
    const-string v4, " mLastUserActivityTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    iget-wide v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 3740
    const-string v4, " mLockingNotified="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3741
    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3730
    add-int/lit8 v1, v1, 0x1

    goto :goto_8bb

    .line 3744
    :cond_8fa
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 3745
    monitor-exit v0
    :try_end_8fd
    .catchall {:try_start_8 .. :try_end_8fd} :catchall_903

    .line 3747
    if-eqz v1, :cond_902

    .line 3748
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3750
    :cond_902
    return-void

    .line 3745
    :catchall_903
    move-exception p1

    :try_start_904
    monitor-exit v0
    :try_end_905
    .catchall {:try_start_904 .. :try_end_905} :catchall_903

    throw p1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 20

    .line 3754
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3756
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3757
    :try_start_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 3758
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3759
    const-wide v6, 0x10e00000003L

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3760
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v6, 0x10800000004L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3761
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v8, 0x10800000005L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3762
    const-wide v10, 0x10e00000006L

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3763
    const-wide v10, 0x10500000007L

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3764
    const-wide v10, 0x10500000008L

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3767
    const-wide v10, 0x10e00000009L

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3768
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v10, 0x1080000000aL

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3769
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v12, 0x1080000000bL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3770
    const-wide v14, 0x1080000000cL

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3771
    const-wide v14, 0x1080000000dL

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3772
    const-wide v14, 0x1080000000eL

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3775
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v14, 0x1080000000fL

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3779
    const-wide v4, 0x10b00000010L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3780
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v16, 0x1

    and-int/lit8 v5, v5, 0x1

    const/16 v17, 0x0

    if-eqz v5, :cond_b3

    move/from16 v5, v16

    goto :goto_b5

    :cond_b3
    move/from16 v5, v17

    :goto_b5
    const-wide v14, 0x10800000001L

    invoke-virtual {v1, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3783
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c6

    move/from16 v5, v16

    goto :goto_c8

    :cond_c6
    move/from16 v5, v17

    :goto_c8
    const-wide v12, 0x10800000002L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3786
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_d9

    move/from16 v5, v16

    goto :goto_db

    :cond_d9
    move/from16 v5, v17

    :goto_db
    const-wide v10, 0x10800000003L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3789
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_ec

    move/from16 v5, v16

    goto :goto_ee

    :cond_ec
    move/from16 v5, v17

    :goto_ee
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3792
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_fa

    move/from16 v5, v16

    goto :goto_fc

    :cond_fa
    move/from16 v5, v17

    :goto_fc
    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3795
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_108

    move/from16 v5, v16

    goto :goto_10a

    :cond_108
    move/from16 v5, v17

    :goto_10a
    const-wide v8, 0x10800000006L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3798
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_11b

    move/from16 v5, v16

    goto :goto_11d

    :cond_11b
    move/from16 v5, v17

    :goto_11d
    const-wide v8, 0x10800000007L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3801
    const-wide v8, 0x10800000008L

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_133

    move/from16 v5, v16

    goto :goto_135

    :cond_133
    move/from16 v5, v17

    :goto_135
    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3804
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3806
    const-wide v3, 0x10300000011L

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3807
    const-wide v3, 0x10300000012L

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3808
    const-wide v3, 0x10300000013L

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3810
    const-wide v3, 0x10b00000014L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3811
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16b

    move/from16 v5, v16

    goto :goto_16d

    :cond_16b
    move/from16 v5, v17

    :goto_16d
    invoke-virtual {v1, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3814
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_179

    move/from16 v5, v16

    goto :goto_17b

    :cond_179
    move/from16 v5, v17

    :goto_17b
    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3817
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_187

    move/from16 v5, v16

    goto :goto_189

    :cond_187
    move/from16 v5, v17

    :goto_189
    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3820
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3822
    const-wide v3, 0x10800000015L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3825
    const-wide v3, 0x10800000016L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3826
    const-wide v3, 0x10800000017L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3827
    const-wide v3, 0x10800000018L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3828
    const-wide v3, 0x10800000019L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3829
    const-wide v3, 0x1080000001aL

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3831
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v4, v3

    move/from16 v5, v17

    :goto_1d0
    if-ge v5, v4, :cond_1e4

    aget v8, v3, v5

    .line 3832
    const-wide v6, 0x2050000001bL

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3831
    add-int/lit8 v5, v5, 0x1

    const-wide v6, 0x10800000004L

    goto :goto_1d0

    .line 3834
    :cond_1e4
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v4, v3

    move/from16 v5, v17

    :goto_1e9
    if-ge v5, v4, :cond_1f8

    aget v6, v3, v5

    .line 3835
    const-wide v7, 0x2050000001cL

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3834
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e9

    .line 3838
    :cond_1f8
    const-wide v3, 0x1030000001dL

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3839
    const-wide v3, 0x1030000001eL

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3840
    const-wide v3, 0x1030000001fL

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3841
    const-wide v3, 0x10300000020L

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3844
    const-wide v3, 0x10300000021L

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3847
    const-wide v3, 0x10300000022L

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3850
    const-wide v3, 0x10800000023L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3853
    const-wide v3, 0x10800000024L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3854
    const-wide v3, 0x10800000025L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3857
    const-wide v3, 0x10800000026L

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3861
    const-wide v3, 0x10b00000027L

    .line 3862
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3863
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3867
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3871
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3875
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v6, 0x10800000004L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3879
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v6, 0x10800000005L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3882
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v6, 0x10800000006L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3886
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v6, 0x10800000007L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3889
    const-wide v5, 0x10800000008L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3893
    const-wide v5, 0x10800000009L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3897
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v6, 0x1080000000aL

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3901
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v6, 0x1080000000bL

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3905
    const-wide v5, 0x1110000000cL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3909
    const-wide v5, 0x1110000000dL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3913
    const-wide v5, 0x1110000000eL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3917
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v6, 0x1080000000fL

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3920
    const-wide v5, 0x10800000010L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3924
    const-wide v5, 0x10800000011L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3928
    const-wide v5, 0x10800000012L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3931
    const-wide v5, 0x10500000013L

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3935
    const-wide v5, 0x10500000014L

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3939
    const-wide v5, 0x10200000015L

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3942
    const-wide v5, 0x10500000016L

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3945
    const-wide v5, 0x11100000017L

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3948
    const-wide v5, 0x10500000018L

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v10, 0x7fffffff

    .line 3952
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 3948
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3953
    const-wide v5, 0x10800000019L

    .line 3956
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v7

    .line 3953
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3958
    const-wide v5, 0x10b0000001aL

    .line 3959
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3961
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_36b

    move/from16 v7, v16

    goto :goto_36d

    :cond_36b
    move/from16 v7, v17

    :goto_36d
    invoke-virtual {v1, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3965
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_379

    move/from16 v7, v16

    goto :goto_37b

    :cond_379
    move/from16 v7, v17

    :goto_37b
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3969
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_387

    move/from16 v7, v16

    goto :goto_389

    :cond_387
    move/from16 v7, v17

    :goto_389
    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3974
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3976
    const-wide v5, 0x10e0000001bL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3979
    const-wide v5, 0x1110000001cL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3983
    const-wide v5, 0x1120000001dL

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3987
    const-wide v5, 0x1080000001eL

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3991
    const-wide v5, 0x10e0000001fL

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3995
    const-wide v5, 0x10800000024L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3999
    const-wide v5, 0x10200000020L

    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4004
    const-wide v5, 0x10b00000021L

    .line 4005
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4008
    const-wide v7, 0x10500000001L

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4012
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    const-wide v8, 0x10500000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4016
    const-wide v7, 0x10500000003L

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4020
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4022
    const-wide v5, 0x10800000022L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4025
    const-wide v5, 0x10800000023L

    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4028
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4030
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v3

    .line 4031
    invoke-direct {v0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v5

    .line 4032
    invoke-direct {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v7

    .line 4033
    const-wide v9, 0x11100000028L

    invoke-virtual {v1, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4034
    const-wide v3, 0x10500000029L

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4035
    const-wide v3, 0x1050000002aL

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4036
    const-wide v3, 0x1080000002bL

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4037
    const-wide v3, 0x1080000002cL

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4039
    move/from16 v3, v17

    :goto_455
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b0

    .line 4040
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4041
    const-wide v5, 0x20b0000002dL

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4042
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4043
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4044
    const-wide v8, 0x10900000002L

    invoke-static {v7}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4045
    iget-boolean v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4046
    const-wide v10, 0x10500000004L

    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4047
    const-wide v10, 0x10e00000005L

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4048
    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    .line 4047
    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4049
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4039
    add-int/lit8 v3, v3, 0x1

    goto :goto_455

    .line 4052
    :cond_4b0
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v4, 0x10b00000032L

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4055
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide v4, 0x10b0000002eL

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Looper;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4057
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4058
    const-wide v5, 0x20b0000002fL

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4059
    goto :goto_4ce

    .line 4061
    :cond_4e3
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/SuspendBlocker;

    .line 4062
    const-wide v5, 0x20b00000030L

    invoke-interface {v4, v1, v5, v6}, Lcom/android/server/power/SuspendBlocker;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4063
    goto :goto_4e9

    .line 4064
    :cond_4fe
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4065
    monitor-exit v2
    :try_end_501
    .catchall {:try_start_c .. :try_end_501} :catchall_50f

    .line 4067
    if-eqz v0, :cond_50b

    .line 4068
    const-wide v2, 0x10b00000031L

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/WirelessChargerDetector;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4070
    :cond_50b
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4071
    return-void

    .line 4065
    :catchall_50f
    move-exception v0

    :try_start_510
    monitor-exit v2
    :try_end_511
    .catchall {:try_start_510 .. :try_end_511} :catchall_50f

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .registers 5

    .line 1385
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 1386
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1388
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1389
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5

    .line 1365
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1366
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1367
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1368
    return v1

    .line 1366
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1371
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .registers 6

    .line 1763
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_5b

    .line 1764
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    .line 1766
    return-void

    .line 1769
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 1771
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v2, v1, :cond_1d

    if-nez v2, :cond_20

    .line 1772
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 1774
    :cond_20
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_54

    .line 1775
    const-wide/32 v1, 0x20000

    const-string v3, "Screen turning on"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 1777
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_54

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen on took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_54
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1782
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    .line 1784
    :cond_5b
    return-void
.end method

.method private forceSuspendInternal(I)Z
    .registers 11

    .line 3458
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_52

    .line 3459
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    .line 3466
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3467
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_4f

    .line 3469
    :try_start_17
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result p1

    .line 3471
    if-nez p1, :cond_41

    .line 3472
    const-string v1, "PowerManagerService"

    const-string v2, "Force-Suspending failed in native."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_52

    .line 3474
    :cond_41
    nop

    .line 3476
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3477
    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3479
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3480
    monitor-exit v1

    .line 3474
    return p1

    .line 3480
    :catchall_4c
    move-exception p1

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw p1

    .line 3467
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 3476
    :catchall_52
    move-exception p1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3477
    :try_start_56
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3479
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3480
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    throw p1

    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method private static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 4

    .line 1229
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1230
    return-object v1

    .line 1233
    :cond_8
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 1234
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v2

    if-lez v2, :cond_23

    .line 1235
    return-object v0

    .line 1237
    :cond_23
    goto :goto_10

    .line 1239
    :cond_24
    return-object v1
.end method

.method private getLastSleepReasonInternal()I
    .registers 3

    .line 5124
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5125
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    monitor-exit v0

    return v1

    .line 5126
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .registers 6

    .line 5130
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5131
    :try_start_3
    new-instance v1, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    invoke-direct {v1, v2, v3, v4}, Landroid/os/PowerManager$WakeData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    .line 5132
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .registers 14

    .line 2307
    nop

    .line 2308
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2309
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_b
    if-ge v3, v0, :cond_2a

    .line 2310
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2311
    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v9, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v7, v9

    .line 2312
    cmp-long v6, v7, p1

    if-lez v6, :cond_27

    cmp-long v6, v4, v1

    if-eqz v6, :cond_26

    cmp-long v6, v7, v4

    if-gez v6, :cond_27

    .line 2313
    :cond_26
    move-wide v4, v7

    .line 2309
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2316
    :cond_2a
    return-wide v4
.end method

.method private getScreenDimDurationLocked(J)J
    .registers 5

    .line 2361
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float p1, p1

    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getScreenOffTimeoutLocked(J)J
    .registers 10

    .line 2347
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 2348
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2349
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2351
    :cond_e
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1a

    .line 2352
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2354
    :cond_1a
    cmp-long v2, p1, v4

    if-ltz v2, :cond_22

    .line 2355
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2357
    :cond_22
    iget-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getSleepTimeoutLocked()J
    .registers 5

    .line 2339
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 2340
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 2341
    const-wide/16 v0, -0x1

    return-wide v0

    .line 2343
    :cond_b
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .registers 4

    .line 2067
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 p1, 0x6

    if-eq v0, p1, :cond_29

    const/16 p1, 0xa

    if-eq v0, p1, :cond_27

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_26

    const/16 p1, 0x20

    if-eq v0, p1, :cond_23

    const/16 p1, 0x40

    if-eq v0, p1, :cond_22

    const/16 p1, 0x80

    if-eq v0, p1, :cond_21

    goto :goto_30

    .line 2085
    :cond_21
    return p1

    .line 2083
    :cond_22
    return p1

    .line 2081
    :cond_23
    const/16 p1, 0x10

    return p1

    .line 2075
    :cond_26
    return p1

    .line 2077
    :cond_27
    const/4 p1, 0x2

    return p1

    .line 2079
    :cond_29
    const/4 p1, 0x4

    return p1

    .line 2069
    :cond_2b
    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez p1, :cond_30

    .line 2071
    return v1

    .line 2087
    :cond_30
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method private goToSleepInternal(JIII)V
    .registers 7

    .line 1607
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1609
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1611
    :cond_c
    monitor-exit v0

    .line 1612
    return-void

    .line 1611
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .registers 13

    .line 1628
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9a

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_9a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_18

    goto/16 :goto_9a

    .line 1635
    :cond_18
    const-wide/32 v3, 0x20000

    const-string v0, "goToSleep"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1637
    const/16 v0, 0x8

    .line 1638
    :try_start_22
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1637
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1639
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1643
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1645
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 1646
    invoke-virtual {p0, v2, p3, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 1649
    nop

    .line 1650
    iget-object p3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1651
    move v2, v1

    :goto_65
    if-ge v1, p3, :cond_86

    .line 1652
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1653
    iget v5, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x6

    if-eq v5, v6, :cond_81

    const/16 v6, 0xa

    if-eq v5, v6, :cond_81

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_81

    goto :goto_83

    .line 1657
    :cond_81
    add-int/lit8 v2, v2, 0x1

    .line 1651
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1661
    :cond_86
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V

    .line 1664
    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_90

    .line 1665
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_90
    .catchall {:try_start_22 .. :try_end_90} :catchall_95

    .line 1668
    :cond_90
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1669
    nop

    .line 1670
    return v0

    .line 1668
    :catchall_95
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1632
    :cond_9a
    :goto_9a
    return v1
.end method

.method private handleBatteryStateChangedLocked()V
    .registers 2

    .line 3005
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3006
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3007
    return-void
.end method

.method private handleSandman()V
    .registers 14

    .line 2470
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2471
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2472
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2473
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_24

    .line 2474
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_20

    :cond_1e
    move v3, v1

    goto :goto_21

    :cond_20
    :goto_20
    move v3, v4

    .line 2475
    :goto_21
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    goto :goto_25

    .line 2477
    :cond_24
    move v3, v1

    .line 2479
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_100

    .line 2485
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v5, 0x3

    if-eqz v0, :cond_40

    .line 2487
    if-eqz v3, :cond_39

    .line 2488
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2489
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v2, v5, :cond_35

    goto :goto_36

    :cond_35
    move v4, v1

    :goto_36
    invoke-virtual {v0, v4}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2491
    :cond_39
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    goto :goto_41

    .line 2493
    :cond_40
    move v0, v1

    .line 2498
    :goto_41
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2501
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2503
    if-eqz v3, :cond_5f

    if-eqz v0, :cond_5f

    .line 2504
    :try_start_4a
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2505
    if-ne v2, v5, :cond_58

    .line 2506
    const-string v3, "PowerManagerService"

    const-string v6, "Dozing..."

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 2508
    :cond_58
    const-string v3, "PowerManagerService"

    const-string v6, "Dreaming..."

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_5f
    :goto_5f
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v3, :cond_fb

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v3, v2, :cond_69

    goto/16 :goto_fb

    .line 2519
    :cond_69
    const/4 v3, 0x2

    if-ne v2, v3, :cond_e0

    .line 2520
    if-eqz v0, :cond_b1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2521
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v2, :cond_af

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_af

    .line 2524
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v2

    if-nez v2, :cond_af

    .line 2528
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%.  Battery level now: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 2534
    :cond_af
    monitor-exit v4

    return-void

    .line 2539
    :cond_b1
    :goto_b1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 2540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 2542
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_f2

    .line 2544
    :cond_c7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v9, "android.server.power:DREAM_FINISHED"

    const/16 v10, 0x3e8

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2547
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    .line 2544
    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 2548
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_f2

    .line 2550
    :cond_e0
    if-ne v2, v5, :cond_f2

    .line 2551
    if-eqz v0, :cond_e6

    .line 2552
    monitor-exit v4

    return-void

    .line 2556
    :cond_e6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v5, 0x3e8

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2557
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2559
    :cond_f2
    :goto_f2
    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_4a .. :try_end_f3} :catchall_fd

    .line 2562
    if-eqz v0, :cond_fa

    .line 2563
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2565
    :cond_fa
    return-void

    .line 2515
    :cond_fb
    :goto_fb
    :try_start_fb
    monitor-exit v4

    return-void

    .line 2559
    :catchall_fd
    move-exception v0

    monitor-exit v4
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_fd

    throw v0

    .line 2479
    :catchall_100
    move-exception v1

    :try_start_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v1
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .registers 3

    .line 3362
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3367
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3368
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3369
    monitor-exit v0

    .line 3370
    return-void

    .line 3369
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    .line 1158
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1159
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1160
    return-void
.end method

.method private handleUidStateChangeLocked()V
    .registers 2

    .line 3174
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    .line 3175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_b

    .line 3177
    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3179
    :goto_b
    return-void
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    .line 2328
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2333
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2334
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2335
    monitor-exit v0

    .line 2336
    return-void

    .line 2335
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 4

    .line 1295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1301
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1302
    if-gez v1, :cond_d

    .line 1303
    monitor-exit v0

    return-void

    .line 1306
    :cond_d
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1307
    monitor-exit v0

    .line 1308
    return-void

    .line 1307
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private incrementBootCount()V
    .registers 5

    .line 4074
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4077
    nop

    .line 4078
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 4077
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    .line 4081
    goto :goto_17

    .line 4084
    :catchall_13
    move-exception v1

    goto :goto_29

    .line 4079
    :catch_15
    move-exception v1

    .line 4080
    const/4 v1, 0x0

    .line 4082
    :goto_17
    nop

    .line 4083
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v1, v1, 0x1

    .line 4082
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4084
    monitor-exit v0

    .line 4085
    return-void

    .line 4084
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_13

    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    .line 2423
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private isInteractiveInternal()Z
    .registers 3

    .line 2972
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2973
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2974
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    .line 2411
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 5

    .line 3305
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .registers 8

    .line 1864
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-gtz p2, :cond_1c

    iget p2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 p2, p2, 0x20

    if-nez p2, :cond_1c

    iget-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz p2, :cond_1a

    iget p1, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    :goto_1d
    return p1
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .registers 3

    .line 3350
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3351
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    .line 3352
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 2

    .line 1219
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_13

    .line 1225
    const/4 p0, 0x0

    return p0

    .line 1223
    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidBrightness(I)Z
    .registers 2

    .line 2719
    if-ltz p0, :cond_8

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6

    .line 1443
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    const/4 v2, 0x6

    if-eq p1, v2, :cond_32

    const/16 v2, 0xa

    if-eq p1, v2, :cond_32

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_32

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_22

    const/16 v2, 0x40

    if-eq p1, v2, :cond_32

    const/16 v2, 0x80

    if-eq p1, v2, :cond_32

    .line 1457
    :try_start_1e
    monitor-exit v0

    return v3

    .line 1459
    :catchall_20
    move-exception p1

    goto :goto_34

    .line 1454
    :cond_22
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    monitor-exit v0

    return v1

    .line 1451
    :cond_32
    monitor-exit v0

    return v1

    .line 1459
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_20

    throw p1
.end method

.method public static synthetic lambda$FUW_os-Z9SregUE_DR9vDwaRuXo(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .registers 5

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1755
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    .line 1756
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_14

    .line 1757
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    .line 1758
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1760
    :cond_14
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 6

    .line 3505
    const-string v0, ""

    if-nez p0, :cond_5

    .line 3506
    move-object p0, v0

    .line 3513
    :cond_5
    const-string/jumbo v1, "quiescent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ",quiescent"

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    .line 3514
    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 3515
    goto :goto_2d

    .line 3516
    :cond_14
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3517
    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 3518
    const/4 v0, 0x0

    .line 3519
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v4

    .line 3518
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 3516
    :cond_2c
    move-object v0, p0

    .line 3522
    :goto_2d
    const-string/jumbo p0, "recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 3523
    const-string/jumbo v1, "recovery-update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_42

    :cond_40
    move-object p0, v0

    goto :goto_43

    .line 3524
    :cond_42
    :goto_42
    nop

    .line 3527
    :goto_43
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_56

    .line 3530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3533
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    const-wide/16 v0, 0x4e20

    :try_start_70
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_74

    .line 3538
    goto :goto_7c

    .line 3536
    :catch_74
    move-exception p0

    .line 3537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 3539
    :goto_7c
    const-string p0, "PowerManagerService"

    const-string v0, "Unexpected return from lowLevelReboot!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 3

    .line 3491
    if-nez p0, :cond_4

    .line 3492
    const-string p0, ""

    .line 3494
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    return-void
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .registers 6

    .line 1556
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1557
    if-eqz v0, :cond_14

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_14

    .line 1558
    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 1560
    :cond_14
    return-void
.end method

.method private napInternal(JI)V
    .registers 5

    .line 1674
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1675
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1676
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1678
    :cond_c
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private napNoUpdateLocked(JI)Z
    .registers 11

    .line 1686
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_49

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_15

    goto :goto_49

    .line 1691
    :cond_15
    const-wide/32 v3, 0x20000

    const-string/jumbo v0, "nap"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1693
    :try_start_1e
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nap time (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")..."

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1696
    const/4 p3, 0x2

    invoke-virtual {p0, p3, v1, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_44

    .line 1698
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1699
    nop

    .line 1700
    return v2

    .line 1698
    :catchall_44
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1688
    :cond_49
    :goto_49
    return v1
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private static native nativeGetFeature(I)I
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .registers 4

    .line 2903
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2904
    return v1

    .line 2906
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2911
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-nez v0, :cond_1d

    .line 2913
    :cond_1c
    return v1

    .line 2917
    :cond_1d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    .line 2922
    return v1

    .line 2924
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_30

    .line 2925
    return v1

    .line 2933
    :cond_30
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_3a

    .line 2934
    return v1

    .line 2938
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 11

    .line 1375
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_21

    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1377
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1382
    :cond_21
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 27

    .line 1417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_33

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_33

    .line 1418
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1421
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1426
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1428
    :cond_33
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6

    .line 1408
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    .line 1409
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1410
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1413
    :cond_14
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6

    .line 1400
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_18

    .line 1401
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1402
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1405
    :cond_18
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 12

    .line 1431
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_25

    .line 1432
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1433
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1434
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1437
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1439
    :cond_25
    return-void
.end method

.method private onUserAttention()V
    .registers 8

    .line 1476
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1477
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1480
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1482
    :cond_15
    monitor-exit v0

    .line 1483
    return-void

    .line 1482
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private powerHintInternal(II)V
    .registers 4

    .line 3431
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    goto :goto_11

    .line 3433
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3434
    return-void

    .line 3439
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSendPowerHint(II)V

    .line 3440
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .registers 10

    .line 1710
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_47

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_14

    goto :goto_47

    .line 1715
    :cond_14
    const-wide/32 v2, 0x20000

    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1717
    :try_start_1d
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")..."

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 p3, 0x2

    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_42

    .line 1722
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1723
    nop

    .line 1724
    const/4 p1, 0x1

    return p1

    .line 1722
    :catchall_42
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1712
    :cond_47
    :goto_47
    return v1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 6

    .line 1269
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    .line 1271
    if-gez p1, :cond_b

    .line 1276
    monitor-exit v0

    return-void

    .line 1279
    :cond_b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1285
    const/4 v2, 0x1

    and-int/2addr p2, v2

    if-eqz p2, :cond_19

    .line 1286
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1289
    :cond_19
    iget-object p2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1290
    invoke-direct {p0, v1, p1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1291
    monitor-exit v0

    .line 1292
    return-void

    .line 1291
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 5

    .line 1311
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1312
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1313
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1314
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v0, :cond_1e

    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1e

    .line 1316
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget p2, p2, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1318
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1321
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1322
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1323
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6

    .line 1392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1393
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 1395
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    .line 1397
    :cond_20
    return-void
.end method

.method private runPostProximityCheck(Ljava/lang/Runnable;)V
    .registers 6

    .line 5338
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_8

    .line 5339
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5340
    return-void

    .line 5342
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 5343
    :try_start_b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5344
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 5368
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5370
    monitor-exit v0

    .line 5371
    return-void

    .line 5370
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p1
.end method

.method private runWithProximityCheck(Ljava/lang/Runnable;)V
    .registers 6

    .line 5318
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5320
    return-void

    .line 5323
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5324
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 5326
    :goto_1d
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeSupported:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeEnabled:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3f

    if-nez v2, :cond_3f

    .line 5328
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5329
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5330
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityTimeOut:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5331
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->runPostProximityCheck(Ljava/lang/Runnable;)V

    .line 5332
    goto :goto_42

    .line 5333
    :cond_3f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5335
    :goto_42
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 4

    .line 2451
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_16

    .line 2452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2453
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2454
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2455
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2457
    :cond_16
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .registers 5

    .line 2298
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2299
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2300
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2301
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 6

    .line 3311
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3312
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_9

    .line 3313
    monitor-exit v0

    return-void

    .line 3315
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 3316
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 3319
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x3

    goto :goto_13

    :cond_12
    move p1, v2

    :goto_13
    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3320
    return-void

    .line 3316
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private setButtonBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 4

    .line 5136
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5137
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessOverrideFromWindowManager:I

    if-eq v1, p1, :cond_12

    .line 5138
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessOverrideFromWindowManager:I

    .line 5139
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5140
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5142
    :cond_12
    monitor-exit v0

    .line 5143
    return-void

    .line 5142
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .registers 3

    .line 3323
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3324
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 3325
    monitor-exit v0

    .line 3326
    return-void

    .line 3325
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5

    .line 3403
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3404
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_b

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_18

    .line 3406
    :cond_b
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 3407
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 3408
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3409
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3411
    :cond_18
    monitor-exit v0

    .line 3412
    return-void

    .line 3411
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .registers 4

    .line 3415
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3416
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_12

    .line 3417
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 3418
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3419
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3421
    :cond_12
    monitor-exit v0

    .line 3422
    return-void

    .line 3421
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 5

    .line 2942
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_31

    .line 2946
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 2947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2949
    :try_start_23
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 2951
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2952
    goto :goto_31

    .line 2951
    :catchall_2c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 2954
    :cond_31
    :goto_31
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 5

    .line 2957
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_31

    .line 2961
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2964
    :try_start_23
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 2966
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2967
    goto :goto_31

    .line 2966
    :catchall_2c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 2969
    :cond_31
    :goto_31
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 4

    .line 2978
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2982
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_a

    .line 2983
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2986
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    .line 2988
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2989
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 4

    .line 3373
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3374
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v1, p1, :cond_12

    .line 3375
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3376
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3377
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3379
    :cond_12
    monitor-exit v0

    .line 3380
    return-void

    .line 3379
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 6

    .line 3391
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_17

    .line 3393
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3394
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 3395
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3396
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3398
    :cond_17
    monitor-exit v0

    .line 3399
    return-void

    .line 3398
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    .line 3383
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3384
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 3385
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3386
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3387
    monitor-exit v0

    .line 3388
    return-void

    .line 3387
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 9

    .line 3271
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_64

    .line 3273
    nop

    .line 3274
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3275
    const/16 v3, 0x2710

    if-lt v0, v3, :cond_5c

    .line 3277
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v4, 0x15

    if-eqz v3, :cond_3a

    .line 3278
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v3, :cond_38

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v3, :cond_36

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v3, v4, :cond_36

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v5, 0xc

    if-le v3, v5, :cond_36

    goto :goto_38

    :cond_36
    move v3, v1

    goto :goto_3b

    :cond_38
    :goto_38
    move v3, v2

    goto :goto_3b

    .line 3277
    :cond_3a
    move v3, v1

    .line 3283
    :goto_3b
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v5, :cond_5d

    .line 3286
    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 3287
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-gez v6, :cond_5d

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3288
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_5d

    iget v0, v5, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v0, v4, :cond_5d

    iget v0, v5, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v4, 0x6

    if-le v0, v4, :cond_5d

    .line 3292
    move v3, v2

    goto :goto_5d

    .line 3275
    :cond_5c
    move v3, v1

    .line 3296
    :cond_5d
    :goto_5d
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, v3, :cond_64

    .line 3297
    iput-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 3298
    return v2

    .line 3301
    :cond_64
    return v1
.end method

.method private shouldBoostScreenBrightness()Z
    .registers 2

    .line 2715
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 2

    .line 2400
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 2

    .line 2835
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 7

    .line 1935
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedSetting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1936
    return v1

    .line 1941
    :cond_6
    const/4 v0, 0x4

    if-eqz p1, :cond_10

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_10

    if-ne p2, v0, :cond_10

    .line 1943
    return v1

    .line 1948
    :cond_10
    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne p1, v0, :cond_1d

    if-nez p3, :cond_1d

    .line 1951
    return v1

    .line 1955
    :cond_1d
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_27

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_27

    .line 1956
    return v1

    .line 1960
    :cond_27
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz p1, :cond_30

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez p1, :cond_30

    .line 1961
    return v1

    .line 1965
    :cond_30
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz p1, :cond_3a

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3a

    .line 1966
    return v1

    .line 1970
    :cond_3a
    const/4 p1, 0x1

    return p1
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V
    .registers 13

    .line 3011
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_11

    .line 3012
    :cond_8
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3016
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 3022
    :cond_11
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZZLjava/lang/String;)V

    .line 3042
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 3043
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3044
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3047
    if-eqz p4, :cond_3b

    .line 3048
    monitor-enter v0

    .line 3051
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_39
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 3053
    :goto_35
    goto :goto_32

    .line 3055
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1

    .line 3052
    :catch_39
    move-exception p1

    goto :goto_35

    .line 3057
    :cond_3b
    return-void

    .line 3018
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too early to call shutdown() or reboot()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .registers 9

    .line 2617
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2618
    and-int/lit16 v1, p1, 0x383f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_96

    .line 2622
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v4

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2627
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v4, -0x1

    if-nez v1, :cond_1a

    .line 2630
    nop

    .line 2631
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move v5, v3

    goto :goto_30

    .line 2632
    :cond_1a
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2633
    nop

    .line 2634
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    move v5, v3

    goto :goto_30

    .line 2636
    :cond_27
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v1, v2, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 2638
    :goto_2e
    move v5, v1

    move v1, v4

    .line 2642
    :goto_30
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v1, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 2643
    iput-boolean v5, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2644
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v1

    iput-boolean v1, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2645
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v5

    iput-boolean v5, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 2647
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 2649
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v1, v2, :cond_7c

    .line 2650
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2651
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_75

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-nez v4, :cond_75

    .line 2653
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_69

    .line 2654
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x3

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2656
    :cond_69
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_75

    .line 2657
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x2

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2660
    :cond_75
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_82

    .line 2663
    :cond_7c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2664
    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2667
    :goto_82
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2669
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2671
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_96

    .line 2672
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 2688
    :cond_96
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz p1, :cond_9d

    if-nez v0, :cond_9d

    goto :goto_9e

    :cond_9d
    move v2, v3

    :goto_9e
    return v2
.end method

.method private updateDreamLocked(IZ)V
    .registers 3

    .line 2435
    and-int/lit16 p1, p1, 0x3f7

    if-nez p1, :cond_6

    if-eqz p2, :cond_d

    .line 2444
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz p1, :cond_d

    .line 2445
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2448
    :cond_d
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .registers 14

    .line 1875
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_bd

    .line 1876
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1877
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1878
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 1879
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1880
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1881
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 1882
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 1892
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne p1, v1, :cond_33

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v0, v1, :cond_b2

    .line 1893
    :cond_33
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1896
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v1

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1905
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1907
    const/4 v5, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.server.power:PLUGGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1909
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e8

    .line 1907
    move-object v2, p0

    move-wide v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 1911
    :cond_70
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1916
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_b2

    .line 1917
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_97

    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-nez v0, :cond_97

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1918
    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1919
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    goto :goto_b2

    .line 1920
    :cond_97
    if-eqz p1, :cond_a7

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez p1, :cond_a7

    if-nez v1, :cond_a7

    .line 1921
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {p1, v0}, Lcom/android/server/power/Notifier;->onWiredChargingDisconnected(I)V

    goto :goto_b2

    .line 1922
    :cond_a7
    if-eqz v1, :cond_b2

    .line 1923
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(II)V

    .line 1928
    :cond_b2
    :goto_b2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    .line 1930
    :cond_bd
    return-void
.end method

.method private updatePowerStateLocked()V
    .registers 8

    .line 1795
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v0, :cond_9

    goto :goto_63

    .line 1798
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1799
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_18
    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1805
    :try_start_21
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 1806
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 1807
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 1812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1813
    const/4 v4, 0x0

    move v5, v4

    .line 1815
    :goto_36
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1816
    or-int/2addr v5, v6

    .line 1817
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1819
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 1820
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 1821
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 1822
    nop

    .line 1827
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 1830
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 1833
    invoke-direct {p0, v5, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 1836
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 1841
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5e

    .line 1843
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1824
    :cond_5d
    goto :goto_36

    .line 1843
    :catchall_5e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 1796
    :cond_63
    :goto_63
    return-void
.end method

.method private updateProfilesLocked(J)V
    .registers 8

    .line 1851
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1852
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 1853
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1854
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1855
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_29

    .line 1856
    :cond_1b
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v4, :cond_29

    .line 1857
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 1858
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v4, v3}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    .line 1852
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1861
    :cond_2c
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .registers 9

    .line 2692
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_41

    .line 2693
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p1, :cond_41

    .line 2694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2695
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2696
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_31

    .line 2697
    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    .line 2699
    cmp-long p1, v3, v1

    if-lez p1, :cond_31

    .line 2700
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2701
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2702
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2703
    return-void

    .line 2706
    :cond_31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 2707
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {p1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 2708
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2712
    :cond_41
    return-void
.end method

.method private updateSettingsLocked()V
    .registers 8

    .line 1084
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1086
    nop

    .line 1088
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1086
    const/4 v2, -0x2

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_17

    move v1, v4

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1090
    nop

    .line 1092
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1090
    const-string/jumbo v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_28

    move v1, v4

    goto :goto_29

    :cond_28
    move v1, v3

    :goto_29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1094
    nop

    .line 1096
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1094
    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_39

    move v1, v4

    goto :goto_3a

    :cond_39
    move v1, v3

    :goto_3a
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1098
    const/16 v1, 0x3a98

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 1101
    const/4 v1, -0x1

    const-string/jumbo v5, "sleep_timeout"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 1104
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1106
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6d

    move v1, v4

    goto :goto_6e

    :cond_6d
    move v1, v3

    :goto_6e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1108
    nop

    .line 1110
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1108
    const-string/jumbo v5, "wake_when_plugged_or_unplugged"

    invoke-static {v0, v5, v1}, Llineageos/providers/LineageSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_7e

    move v1, v4

    goto :goto_7f

    :cond_7e
    move v1, v3

    :goto_7f
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedSetting:Z

    .line 1111
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1113
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_a5

    .line 1114
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_97

    move v1, v4

    goto :goto_98

    :cond_97
    move v1, v3

    .line 1117
    :goto_98
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_a5

    .line 1118
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1119
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1120
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1119
    invoke-virtual {v1, v4, v5}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 1124
    :cond_a5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string v1, "1"

    goto :goto_b2

    :cond_b0
    const-string v1, "0"

    .line 1125
    :goto_b2
    const-string/jumbo v5, "sys.retaildemo.enabled"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c2

    .line 1126
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_c2
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1133
    const/16 v1, 0x1388

    const-string v5, "button_backlight_timeout"

    invoke-static {v0, v5, v1, v2}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonTimeout:I

    .line 1136
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessSettingDefault:I

    const-string v5, "button_brightness"

    invoke-static {v0, v5, v1, v2}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    .line 1139
    const-string v1, "button_backlight_only_when_pressed"

    invoke-static {v0, v1, v3, v2}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_e9

    move v1, v4

    goto :goto_ea

    :cond_e9
    move v1, v3

    :goto_ea
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonLightOnKeypressOnly:Z

    .line 1142
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardBrightnessSettingDefault:I

    const-string v5, "keyboard_brightness"

    invoke-static {v0, v5, v1, v2}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardBrightness:I

    .line 1146
    nop

    .line 1148
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeEnabledByDefaultConfig:Z

    .line 1146
    const-string/jumbo v5, "proximity_on_wake"

    invoke-static {v0, v5, v1}, Llineageos/providers/LineageSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_104

    move v1, v4

    goto :goto_105

    :cond_104
    move v1, v3

    :goto_105
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeEnabled:Z

    .line 1150
    const-string v1, "force_show_navbar"

    invoke-static {v0, v1, v3, v2}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_110

    move v3, v4

    :cond_110
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForceNavbar:Z

    .line 1154
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1155
    return-void
.end method

.method private updateStayOnLocked(I)V
    .registers 4

    .line 1978
    and-int/lit16 p1, p1, 0x120

    if-eqz p1, :cond_28

    .line 1979
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1980
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v0, :cond_1b

    .line 1981
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1982
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1e

    .line 1984
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1987
    :goto_1e
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v0, p1, :cond_28

    .line 1988
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1991
    :cond_28
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .registers 8

    .line 2844
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 2845
    :goto_a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v3

    .line 2846
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mEnableAutoSuspendConfig:Z

    if-eqz v4, :cond_16

    if-nez v3, :cond_16

    move v4, v1

    goto :goto_17

    :cond_16
    move v4, v2

    .line 2847
    :goto_17
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v5

    .line 2852
    if-nez v4, :cond_26

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_26

    .line 2853
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 2857
    :cond_26
    if-eqz v0, :cond_33

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_33

    .line 2858
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2859
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 2861
    :cond_33
    if-eqz v3, :cond_40

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_40

    .line 2862
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2863
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 2872
    :cond_40
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_4d

    .line 2877
    if-nez v5, :cond_4a

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_4d

    .line 2878
    :cond_4a
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 2883
    :cond_4d
    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v0, :cond_5a

    .line 2884
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2885
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 2887
    :cond_5a
    if-nez v3, :cond_67

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v0, :cond_67

    .line 2888
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2889
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 2893
    :cond_67
    if-eqz v4, :cond_70

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v0, :cond_70

    .line 2894
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 2896
    :cond_70
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 24

    .line 2157
    move-object/from16 v0, p0

    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_17b

    .line 2159
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2161
    nop

    .line 2162
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1d

    if-eq v1, v4, :cond_1d

    if-ne v1, v3, :cond_19

    goto :goto_1d

    .line 2285
    :cond_19
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_17b

    .line 2165
    :cond_1d
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v6

    .line 2166
    invoke-direct {v0, v6, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v8

    .line 2167
    invoke-direct {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v10

    .line 2168
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2169
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v12

    .line 2171
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2172
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v3, v14, v3

    const-wide/16 v16, 0x0

    if-ltz v3, :cond_e9

    .line 2173
    add-long v3, v14, v8

    sub-long/2addr v3, v10

    .line 2175
    cmp-long v10, p1, v3

    if-gez v10, :cond_ce

    .line 2176
    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2177
    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v10, v2, :cond_c9

    .line 2179
    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessOverrideFromWindowManager:I

    if-ltz v10, :cond_4d

    .line 2180
    goto :goto_55

    .line 2182
    :cond_4d
    iget-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mForceNavbar:Z

    if-nez v10, :cond_54

    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    goto :goto_55

    :cond_54
    move v10, v5

    .line 2185
    :goto_55
    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mButtonLightOnKeypressOnly:Z

    if-eqz v11, :cond_5c

    .line 2186
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastButtonActivityTime:J

    goto :goto_5e

    :cond_5c
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    :goto_5e
    iput-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastButtonActivityTime:J

    .line 2187
    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mButtonTimeout:I

    if-eqz v11, :cond_76

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastButtonActivityTime:J

    move-wide/from16 v18, v3

    int-to-long v2, v11

    add-long/2addr v14, v2

    cmp-long v2, p1, v14

    if-lez v2, :cond_78

    .line 2189
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 2190
    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mButtonOn:Z

    goto :goto_b4

    .line 2187
    :cond_76
    move-wide/from16 v18, v3

    .line 2192
    :cond_78
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonLightOnKeypressOnly:Z

    if-eqz v2, :cond_80

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonPressed:Z

    if-eqz v2, :cond_9f

    :cond_80
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v2, :cond_9f

    .line 2194
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v10}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 2195
    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mButtonPressed:Z

    .line 2196
    if-eqz v10, :cond_b4

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonTimeout:I

    if-eqz v2, :cond_b4

    .line 2197
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mButtonOn:Z

    .line 2198
    int-to-long v3, v2

    add-long v3, p1, v3

    cmp-long v3, v3, v18

    if-gez v3, :cond_b4

    .line 2199
    int-to-long v2, v2

    add-long v2, p1, v2

    goto :goto_b6

    .line 2202
    :cond_9f
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonLightOnKeypressOnly:Z

    if-eqz v2, :cond_b4

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mButtonOn:Z

    if-eqz v2, :cond_b4

    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastButtonActivityTime:J

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mButtonTimeout:I

    int-to-long v10, v4

    add-long/2addr v10, v2

    cmp-long v10, v10, v18

    if-gez v10, :cond_b4

    .line 2204
    int-to-long v10, v4

    add-long/2addr v2, v10

    goto :goto_b6

    .line 2209
    :cond_b4
    :goto_b4
    move-wide/from16 v2, v18

    :goto_b6
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessOverrideFromWindowManager:I

    if-ltz v4, :cond_bb

    .line 2210
    goto :goto_bd

    .line 2212
    :cond_bb
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardBrightness:I

    .line 2214
    :goto_bd
    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardLight:Lcom/android/server/lights/Light;

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v11, :cond_c4

    .line 2215
    goto :goto_c5

    :cond_c4
    move v4, v5

    .line 2214
    :goto_c5
    invoke-virtual {v10, v4}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 2216
    goto :goto_eb

    .line 2177
    :cond_c9
    move-wide/from16 v18, v3

    move-wide/from16 v2, v18

    goto :goto_eb

    .line 2218
    :cond_ce
    add-long v2, v14, v8

    .line 2219
    cmp-long v4, p1, v2

    if-gez v4, :cond_eb

    .line 2220
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2221
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_eb

    .line 2222
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 2223
    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mButtonOn:Z

    .line 2225
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_eb

    .line 2172
    :cond_e9
    move-wide/from16 v2, v16

    .line 2230
    :cond_eb
    :goto_eb
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v5, 0x4

    if-nez v4, :cond_119

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, v10, v14

    if-ltz v4, :cond_119

    .line 2232
    add-long v2, v10, v8

    .line 2233
    cmp-long v4, p1, v2

    if-gez v4, :cond_119

    .line 2234
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x3

    if-eq v4, v8, :cond_116

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v4, v5, :cond_10c

    goto :goto_116

    .line 2237
    :cond_10c
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_119

    .line 2238
    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_119

    .line 2236
    :cond_116
    :goto_116
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2243
    :cond_119
    :goto_119
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v8, -0x1

    if-nez v4, :cond_13d

    .line 2244
    cmp-long v4, v6, v16

    if-ltz v4, :cond_13a

    .line 2245
    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2247
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, v10, v14

    if-ltz v4, :cond_139

    .line 2248
    add-long/2addr v10, v6

    .line 2249
    cmp-long v2, p1, v10

    if-gez v2, :cond_138

    .line 2250
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2253
    :cond_138
    move-wide v2, v10

    :cond_139
    goto :goto_13d

    .line 2254
    :cond_13a
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2255
    move-wide v2, v8

    .line 2259
    :cond_13d
    :goto_13d
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v4, v5, :cond_156

    if-eqz v1, :cond_156

    .line 2260
    const/4 v1, 0x3

    and-int/2addr v1, v4

    if-eqz v1, :cond_153

    .line 2263
    cmp-long v1, v2, p1

    if-ltz v1, :cond_153

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_153

    .line 2265
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2268
    :cond_153
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2269
    move-wide v2, v8

    .line 2272
    :cond_156
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v4, 0x1

    and-int/2addr v1, v4

    if-eqz v1, :cond_168

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_168

    .line 2274
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(J)J

    move-result-wide v2

    .line 2277
    :cond_168
    cmp-long v1, v12, v16

    if-lez v1, :cond_170

    .line 2278
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2281
    :cond_170
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v1, :cond_17b

    cmp-long v1, v2, v16

    if-ltz v1, :cond_17b

    .line 2282
    invoke-direct {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    .line 2295
    :cond_17b
    :goto_17b
    return-void
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .registers 8

    .line 3247
    nop

    .line 3248
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3249
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    const/4 v3, 0x1

    if-ge v1, v0, :cond_32

    .line 3250
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3251
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_2f

    .line 3253
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3254
    nop

    .line 3255
    iget-boolean v2, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_2b

    .line 3257
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2e

    .line 3259
    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3249
    :goto_2e
    move v2, v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3264
    :cond_32
    if-eqz v2, :cond_3c

    .line 3265
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3266
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3268
    :cond_3c
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 10

    .line 2001
    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_73

    .line 2002
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2004
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2005
    move v1, p1

    :goto_e
    if-ge v1, v0, :cond_1d

    .line 2006
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput p1, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2005
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2009
    :cond_1d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2010
    move v2, p1

    :goto_24
    if-ge v2, v1, :cond_55

    .line 2011
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2012
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v4

    .line 2013
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2014
    move v5, p1

    :goto_38
    if-ge v5, v0, :cond_52

    .line 2015
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2016
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v3, v7}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2017
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v7, v4

    iput v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2014
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 2010
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2022
    :cond_55
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2023
    nop

    :goto_5e
    if-ge p1, v0, :cond_73

    .line 2024
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2025
    iget v2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2023
    add-int/lit8 p1, p1, 0x1

    goto :goto_5e

    .line 2034
    :cond_73
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 15

    .line 1337
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1339
    if-ltz v1, :cond_2f

    .line 1348
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1354
    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result p4

    if-nez p4, :cond_2d

    .line 1355
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1358
    iput-object p3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1359
    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1361
    :cond_2d
    monitor-exit v0

    .line 1362
    return-void

    .line 1344
    :cond_2f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock not active: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1361
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 8

    .line 2375
    nop

    .line 2376
    and-int/lit16 p1, p1, 0x697

    if-eqz p1, :cond_2b

    .line 2379
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2384
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2385
    const/16 p1, 0x3e8

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result p1

    goto :goto_2c

    .line 2387
    :cond_21
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result p1

    goto :goto_2c

    .line 2392
    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method private userActivityFromNative(JII)V
    .registers 11

    .line 1464
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1465
    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 7

    .line 1468
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1470
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1472
    :cond_c
    monitor-exit v0

    .line 1473
    return-void

    .line 1472
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 12

    .line 1492
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_bc

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_bc

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_bc

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_17

    goto/16 :goto_bc

    .line 1497
    :cond_17
    const-wide/32 v2, 0x20000

    const-string/jumbo v0, "userActivity"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1499
    :try_start_20
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_2c

    .line 1500
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1501
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1504
    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1505
    iget-object p5, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {p5, p1, p2, p3}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    .line 1507
    iget-boolean p5, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz p5, :cond_40

    .line 1508
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 1509
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1512
    :cond_40
    iget p5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz p5, :cond_b2

    iget p5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x3

    if-eq p5, v0, :cond_b2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_4e

    goto :goto_b2

    .line 1518
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    .line 1520
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_77

    .line 1521
    iget-wide p4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long p4, p1, p4

    if-lez p4, :cond_ad

    iget-wide p4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long p4, p1, p4

    if-lez p4, :cond_ad

    .line 1523
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1524
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1525
    if-ne p3, v0, :cond_72

    .line 1526
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_72
    .catchall {:try_start_20 .. :try_end_72} :catchall_b7

    .line 1529
    :cond_72
    nop

    .line 1550
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1529
    return v0

    .line 1532
    :cond_77
    :try_start_77
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long p5, p1, v4

    if-lez p5, :cond_ad

    .line 1533
    if-ne p3, v0, :cond_80

    move v1, v0

    :cond_80
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonPressed:Z

    .line 1534
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long p5, p1, v4

    if-eqz p5, :cond_94

    iget-boolean p5, p0, Lcom/android/server/power/PowerManagerService;->mButtonLightOnKeypressOnly:Z

    if-eqz p5, :cond_98

    iget-boolean p5, p0, Lcom/android/server/power/PowerManagerService;->mButtonPressed:Z

    if-eqz p5, :cond_98

    and-int/lit8 p4, p4, 0x4

    if-nez p4, :cond_98

    .line 1538
    :cond_94
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonPressed:Z

    .line 1539
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastButtonActivityTime:J

    .line 1541
    :cond_98
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1542
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1543
    if-ne p3, v0, :cond_a8

    .line 1544
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_a8
    .catchall {:try_start_77 .. :try_end_a8} :catchall_b7

    .line 1546
    :cond_a8
    nop

    .line 1550
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1546
    return v0

    .line 1550
    :cond_ad
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1551
    nop

    .line 1552
    return v1

    .line 1515
    :cond_b2
    :goto_b2
    nop

    .line 1550
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1515
    return v1

    .line 1550
    :catchall_b7
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1494
    :cond_bc
    :goto_bc
    return v1
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .registers 8

    .line 2091
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_42

    .line 2092
    move v0, v1

    :goto_7
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 2093
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 2094
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_1c

    .line 2095
    return v2

    .line 2092
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2099
    :cond_1f
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 2100
    if-eqz v0, :cond_42

    .line 2101
    move v3, v1

    :goto_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 2102
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    .line 2103
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_3f

    .line 2104
    return v2

    .line 2101
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2109
    :cond_42
    iget p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p2, p1, :cond_4b

    move v1, v2

    :cond_4b
    return v1
.end method

.method private wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V
    .registers 9

    .line 1564
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_3
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1566
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1568
    :cond_c
    monitor-exit v0

    .line 1569
    return-void

    .line 1568
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z
    .registers 22

    .line 1577
    move-object v0, p0

    move-wide v2, p1

    move/from16 v1, p3

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_96

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_96

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_96

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_96

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-eqz v4, :cond_1e

    goto/16 :goto_96

    .line 1582
    :cond_1e
    const-wide/32 v11, 0x20000

    const-string v4, "Screen turning on"

    invoke-static {v11, v12, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1584
    const-string/jumbo v4, "wakeUp"

    invoke-static {v11, v12, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1586
    :try_start_2c
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waking up from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1587
    invoke-static {v6}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", details="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1586
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1594
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    .line 1595
    invoke-virtual {p0, v10, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 1597
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 1598
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_8c
    .catchall {:try_start_2c .. :try_end_8c} :catchall_91

    .line 1601
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1602
    nop

    .line 1603
    return v10

    .line 1601
    :catchall_91
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1579
    :cond_96
    :goto_96
    return v5
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .registers 15

    .line 2113
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2115
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 2116
    const-wide/32 v3, 0xea60

    sub-long/2addr v1, v3

    .line 2117
    nop

    .line 2118
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2119
    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-wide v9, v7

    :goto_1b
    if-ge v6, v5, :cond_4b

    .line 2120
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2121
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_48

    .line 2123
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_48

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_48

    .line 2124
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v1

    if-gez v12, :cond_40

    .line 2126
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_48

    .line 2129
    :cond_40
    iget-wide v11, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v11, v3

    .line 2130
    cmp-long v13, v11, v9

    if-gez v13, :cond_48

    .line 2131
    move-wide v9, v11

    .line 2119
    :cond_48
    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 2137
    :cond_4b
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2138
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2139
    cmp-long v3, v9, v7

    if-eqz v3, :cond_5f

    .line 2140
    iput-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2141
    invoke-direct {p0, v9, v10}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_61

    .line 2143
    :cond_5f
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2145
    :goto_61
    monitor-exit v0

    .line 2146
    return-void

    .line 2145
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method finishUidChangesInternal()V
    .registers 4

    .line 3164
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3165
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3166
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_f

    .line 3167
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3168
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 3170
    :cond_f
    monitor-exit v0

    .line 3171
    return-void

    .line 3170
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5090
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object v0
.end method

.method getDesiredScreenPolicyLocked()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2724
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v2, :cond_a

    goto :goto_36

    .line 2728
    :cond_a
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a

    .line 2729
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    .line 2730
    return v2

    .line 2732
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    if-eqz v0, :cond_1a

    .line 2733
    return v1

    .line 2742
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_20

    .line 2743
    const/4 v0, 0x4

    return v0

    .line 2746
    :cond_20
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_35

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/2addr v0, v2

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_34

    goto :goto_35

    .line 2753
    :cond_34
    return v1

    .line 2750
    :cond_35
    :goto_35
    return v3

    .line 2725
    :cond_36
    :goto_36
    return v1
.end method

.method getLastShutdownReasonInternal(Ljava/lang/String;)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5101
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5102
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 5103
    return v0

    .line 5105
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_6c

    :cond_15
    goto :goto_57

    :sswitch_16
    const-string/jumbo v2, "shutdown,thermal,battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v3

    goto :goto_57

    :sswitch_21
    const-string/jumbo v2, "shutdown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v0

    goto :goto_57

    :sswitch_2c
    const-string/jumbo v2, "shutdown,userrequested"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v6

    goto :goto_57

    :sswitch_37
    const-string/jumbo v2, "reboot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v7

    goto :goto_57

    :sswitch_42
    const-string/jumbo v2, "shutdown,battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v4

    goto :goto_57

    :sswitch_4d
    const-string/jumbo v2, "shutdown,thermal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v5

    :goto_57
    if-eqz v1, :cond_6a

    if-eq v1, v7, :cond_69

    if-eq v1, v6, :cond_68

    if-eq v1, v5, :cond_67

    if-eq v1, v4, :cond_66

    if-eq v1, v3, :cond_64

    .line 5119
    return v0

    .line 5117
    :cond_64
    const/4 p1, 0x6

    return p1

    .line 5115
    :cond_66
    return v3

    .line 5113
    :cond_67
    return v4

    .line 5111
    :cond_68
    return v5

    .line 5109
    :cond_69
    return v6

    .line 5107
    :cond_6a
    return v7

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x7e3d61bf -> :sswitch_4d
        -0x418b4b49 -> :sswitch_42
        -0x37ba085b -> :sswitch_37
        -0x32cb60d3 -> :sswitch_2c
        -0xa17f9aa -> :sswitch_21
        0x489a31a2 -> :sswitch_16
    .end sparse-switch
.end method

.method getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5095
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object v0
.end method

.method getWakefulness()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1746
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method isDeviceIdleModeInternal()Z
    .registers 3

    .line 2993
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2994
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 2995
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .registers 3

    .line 2999
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3000
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3001
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 3545
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3546
    :try_start_3
    monitor-exit v0

    .line 3547
    return-void

    .line 3546
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 10

    .line 859
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    const/16 v1, 0x258

    if-ne p1, v1, :cond_d

    .line 861
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_2e

    .line 873
    :catchall_b
    move-exception p1

    goto :goto_30

    .line 863
    :cond_d
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2e

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 865
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 866
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 868
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    .line 869
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 871
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 873
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 874
    return-void

    .line 873
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_b

    throw p1
.end method

.method public onStart()V
    .registers 3

    .line 850
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 851
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 853
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 854
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 855
    return-void
.end method

.method onUserActivity()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3451
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3452
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 3453
    monitor-exit v0

    .line 3454
    return-void

    .line 3453
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method readConfigurationLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1033
    const v1, 0x11100ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1035
    const v1, 0x11100af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1037
    const v1, 0x111006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mEnableAutoSuspendConfig:Z

    .line 1039
    const v1, 0x11100ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1041
    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1043
    const v1, 0x11100df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1045
    const v1, 0x1110066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1047
    const v1, 0x1110064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1049
    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1051
    const v1, 0x1110062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1053
    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1055
    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1057
    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1059
    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1061
    const v1, 0x111005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 1063
    const v1, 0x10e007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    .line 1065
    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    .line 1067
    const/4 v1, 0x1

    const v2, 0x1130002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1069
    const v2, 0x11100d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1071
    const v2, 0x3f040008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeSupported:Z

    .line 1073
    const v2, 0x3f040009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeEnabledByDefaultConfig:Z

    .line 1075
    const v2, 0x3f08000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityTimeOut:I

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeSupported:Z

    if-eqz v0, :cond_e5

    .line 1078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1079
    const-string v2, "ProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1081
    :cond_e5
    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .registers 4

    .line 3114
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3115
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-ne v1, p1, :cond_a

    .line 3116
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 3118
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 3119
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3120
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3121
    if-eqz p1, :cond_19

    .line 3122
    const-string/jumbo p1, "power"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_1f

    .line 3124
    :cond_19
    const-string/jumbo p1, "power"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    .line 3126
    :goto_1f
    const/4 p1, 0x1

    return p1

    .line 3120
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .registers 3

    .line 3149
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3150
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3151
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz p1, :cond_c

    .line 3152
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3154
    :cond_c
    monitor-exit v0

    .line 3155
    return-void

    .line 3154
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .registers 3

    .line 3140
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3141
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 3142
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz p1, :cond_c

    .line 3143
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3145
    :cond_c
    monitor-exit v0

    .line 3146
    return-void

    .line 3145
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .registers 4

    .line 3130
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3131
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eq v1, p1, :cond_c

    .line 3132
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 3133
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 3135
    :cond_c
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 3136
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .registers 7

    .line 3088
    if-gez p1, :cond_19

    .line 3089
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    return-void

    .line 3092
    :cond_19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3094
    if-nez p1, :cond_23

    .line 3095
    :try_start_1e
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_56

    .line 3110
    :catchall_21
    move-exception p1

    goto :goto_61

    .line 3096
    :cond_23
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_51

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_33

    goto :goto_51

    .line 3099
    :cond_33
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3100
    if-eqz v1, :cond_40

    .line 3101
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_56

    .line 3103
    :cond_40
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJ)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3105
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_56

    .line 3097
    :cond_51
    :goto_51
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3108
    :goto_56
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3109
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3110
    monitor-exit v0

    .line 3111
    return-void

    .line 3110
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_21

    throw p1
.end method

.method setStayOnSettingInternal(I)V
    .registers 4

    .line 3083
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3085
    return-void
.end method

.method setVrModeEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3426
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    .line 3427
    return-void
.end method

.method setWakefulnessLocked(IIJ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1729
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_27

    .line 1730
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1732
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1735
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 1737
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_22

    .line 1738
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    .line 1740
    :cond_22
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {p2, p1}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    .line 1742
    :cond_27
    return-void
.end method

.method startUidChangesInternal()V
    .registers 3

    .line 3158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3159
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3160
    monitor-exit v0

    .line 3161
    return-void

    .line 3160
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .registers 11

    .line 877
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 879
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 880
    const-class p1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/dreams/DreamManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 881
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 882
    const-class p1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 883
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 884
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 886
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 887
    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultButtonBrightness()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessSettingDefault:I

    .line 888
    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultKeyboardBrightness()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardBrightnessSettingDefault:I

    .line 889
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 890
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 891
    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 893
    new-instance p1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 897
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 898
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v7, "PowerManagerService.Broadcasts"

    .line 899
    invoke-virtual {v2, p0, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 898
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 902
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v4, "PowerManagerService.WirelessChargerDetector"

    .line 903
    invoke-virtual {v3, p0, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 902
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 906
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 908
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 909
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 910
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    .line 911
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    invoke-virtual {v2, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLight:Lcom/android/server/lights/Light;

    .line 914
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v3, p1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_d5
    .catchall {:try_start_4 .. :try_end_d5} :catchall_28c

    .line 918
    const/4 p1, 0x0

    :try_start_d6
    new-instance v1, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    .line 919
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_e4} :catch_e5
    .catchall {:try_start_d6 .. :try_end_e4} :catchall_28c

    .line 922
    goto :goto_e6

    .line 920
    :catch_e5
    move-exception v1

    .line 925
    :goto_e6
    :try_start_e6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 926
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 929
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 930
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 931
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 932
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 933
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_e6 .. :try_end_10c} :catchall_28c

    .line 935
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 938
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 939
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    .line 942
    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 945
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 948
    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 951
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 954
    const-string/jumbo v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 957
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 960
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 963
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 966
    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 972
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 975
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 978
    const-string v1, "button_brightness"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 981
    const-string v1, "button_backlight_timeout"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 984
    const-string v1, "button_backlight_only_when_pressed"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    const-string v1, "keyboard_brightness"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 990
    const-string/jumbo v1, "proximity_on_wake"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 993
    const-string v1, "force_show_navbar"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 996
    const-string/jumbo v1, "wake_when_plugged_or_unplugged"

    invoke-static {v1}, Llineageos/providers/LineageSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1000
    const-string/jumbo v0, "vrmanager"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_229

    .line 1003
    :try_start_20c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_211
    .catch Landroid/os/RemoteException; {:try_start_20c .. :try_end_211} :catch_212

    .line 1006
    goto :goto_229

    .line 1004
    :catch_212
    move-exception v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register VR mode state listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_229
    :goto_229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1011
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1015
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1016
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1020
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1021
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1024
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1025
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1027
    return-void

    .line 933
    :catchall_28c
    move-exception p1

    :try_start_28d
    monitor-exit v0
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_28c

    throw p1
.end method

.method uidActiveInternal(I)V
    .registers 5

    .line 3220
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3222
    if-nez v1, :cond_1b

    .line 3223
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 3224
    const/16 v2, 0x14

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3225
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3227
    :cond_1b
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3228
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_25

    .line 3229
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3231
    :cond_25
    monitor-exit v0

    .line 3232
    return-void

    .line 3231
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method uidGoneInternal(I)V
    .registers 5

    .line 3205
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 3207
    if-ltz p1, :cond_2a

    .line 3208
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3209
    const/16 v2, 0x15

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3210
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3211
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3212
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz p1, :cond_2a

    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_2a

    .line 3213
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3216
    :cond_2a
    monitor-exit v0

    .line 3217
    return-void

    .line 3216
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method uidIdleInternal(I)V
    .registers 4

    .line 3235
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3236
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3237
    if-eqz p1, :cond_17

    .line 3238
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3239
    iget p1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_17

    .line 3240
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3243
    :cond_17
    monitor-exit v0

    .line 3244
    return-void

    .line 3243
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3076
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 3077
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 3078
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3079
    iget v0, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 3080
    return-void
.end method

.method updateUidProcStateInternal(II)V
    .registers 9

    .line 3182
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3184
    if-nez v1, :cond_17

    .line 3185
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 3186
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3188
    :cond_17
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-gt p1, v4, :cond_21

    move p1, v2

    goto :goto_22

    :cond_21
    move p1, v3

    .line 3190
    :goto_22
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3191
    iget v5, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v5, :cond_3d

    .line 3192
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v5, :cond_30

    .line 3193
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_3d

    .line 3194
    :cond_30
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v1, :cond_3d

    if-gt p2, v4, :cond_37

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    if-eq p1, v2, :cond_3d

    .line 3198
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3201
    :cond_3d
    :goto_3d
    monitor-exit v0

    .line 3202
    return-void

    .line 3201
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method wasDeviceIdleForInternal(J)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3444
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3445
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit v0

    return p1

    .line 3446
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method
