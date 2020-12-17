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
.field private static final AUDIOIN_TAG:Ljava/lang/String; = "AudioIn"

.field private static final AUDIOIN_TYPE:I = 0x2

.field private static final AUDIOMIX_TAG:Ljava/lang/String; = "AudioMix"

.field private static final AUDIOMIX_TYPE:I = 0x1

.field private static final AUDIO_IN_RELEASE:I = 0x4

.field private static final AUDIO_MIX_RELEASE:I = 0x3

.field private static final AUDIO_NONE:I = 0x0

.field private static final AUTO_UPDATE_FILE:Ljava/lang/String; = "/cache/.update_auto"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIM_STATE_ENTER:I = 0x1

.field private static final DIM_STATE_EXIT:I = 0x2

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

.field private static final MSG_RRE_DIM_TIMEOUT:I = 0x5

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final PREVIOUS_DIM_TIME:I = 0x7d0

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

.field private mAudioMixMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "[I>;"
        }
    .end annotation
.end field

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

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private final mDisabledWakeLockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPreDimTimeout:J

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityPositive:Z

.field private final mProxyWakeLockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

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

.field private mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

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

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 782
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    .line 783
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "injector"  # Lcom/android/server/power/PowerManagerService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 787
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 275
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 340
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 472
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 503
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 511
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 516
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 519
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 522
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 528
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 540
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 543
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 545
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 586
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 755
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    .line 756
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProxyWakeLockList:Ljava/util/ArrayList;

    .line 766
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    .line 2906
    new-instance v2, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 4309
    new-instance v2, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 789
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 790
    new-instance v2, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 791
    new-instance v2, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 792
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 793
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 795
    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v3, "PowerManagerService"

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 797
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 798
    new-instance v2, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 799
    new-instance v2, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 800
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 801
    new-instance v2, Lcom/android/server/power/AttentionDetector;

    new-instance v3, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;

    invoke-direct {v3, p0}, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 803
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 804
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 805
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 806
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 807
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 809
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 812
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 813
    :try_start_105
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v4, "PowerManagerService.WakeLocks"

    .line 814
    invoke-virtual {v3, p0, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 815
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v4, "PowerManagerService.Display"

    .line 816
    invoke-virtual {v3, p0, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 817
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    if-eqz v3, :cond_124

    .line 818
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 819
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 821
    :cond_124
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 822
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 824
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 825
    const-string/jumbo v3, "ro.boot.quiescent"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 827
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v3, p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 828
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    .line 829
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V

    .line 830
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 834
    invoke-static {p0}, Lcom/android/server/power/PowerInjector;->initialize(Lcom/android/server/power/PowerManagerService;)V

    .line 836
    monitor-exit v2

    .line 837
    return-void

    .line 836
    :catchall_154
    move-exception v0

    monitor-exit v2
    :try_end_156
    .catchall {:try_start_105 .. :try_end_156} :catchall_154

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 139
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1576(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I
    .param p5, "x4"  # I

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)Z
    .registers 9
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # Ljava/lang/String;
    .param p5, "x4"  # I
    .param p6, "x5"  # Ljava/lang/String;
    .param p7, "x6"  # I

    .line 139
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handlePreDimTimeout()V

    return-void
.end method

.method static synthetic access$3600(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"  # Landroid/os/WorkSource;

    .line 139
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 139
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 9
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Landroid/os/WorkSource;
    .param p6, "x6"  # Ljava/lang/String;
    .param p7, "x7"  # I
    .param p8, "x8"  # I

    .line 139
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/os/WorkSource;
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # I

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getWakeLockDataInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/android/server/power/PowerManagerService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J

    .line 139
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I
    .param p5, "x4"  # I

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # Ljava/lang/String;
    .param p5, "x4"  # I
    .param p6, "x5"  # Ljava/lang/String;
    .param p7, "x6"  # I

    .line 139
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # I
    .param p5, "x4"  # I

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 139
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Z

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Z)V
    .registers 1
    .param p0, "x0"  # Z

    .line 139
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledForUidInternal(IZ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getWakeLockDisabledUidsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->restoreWakeLockDisabledInternal()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Z)V
    .registers 1
    .param p0, "x0"  # Z

    .line 139
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # J

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"  # Z

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/PowerManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(II)V
    .registers 2
    .param p0, "x0"  # I
    .param p1, "x1"  # I

    .line 139
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    return-void
.end method

.method static synthetic access$900(II)V
    .registers 2
    .param p0, "x0"  # I
    .param p1, "x1"  # I

    .line 139
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    return-void
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 28
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "flags"  # I
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "ws"  # Landroid/os/WorkSource;
    .param p6, "historyTag"  # Ljava/lang/String;
    .param p7, "uid"  # I
    .param p8, "pid"  # I

    .line 1122
    move-object/from16 v12, p0

    move/from16 v11, p7

    iget-object v10, v12, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1130
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    move v9, v0

    .line 1132
    .local v9, "index":I
    if-ltz v9, :cond_58

    .line 1133
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1134
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1136
    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p5

    move v14, v9

    .end local v9  # "index":I
    .local v14, "index":I
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1138
    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    goto :goto_50

    .line 1134
    .end local v14  # "index":I
    .restart local v9  # "index":I
    :cond_4f
    move v14, v9

    .line 1140
    .end local v9  # "index":I
    .restart local v14  # "index":I
    :goto_50
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move-object v15, v10

    move/from16 v16, v14

    move v14, v11

    .local v0, "notifyAcquire":Z
    goto :goto_aa

    .line 1142
    .end local v0  # "notifyAcquire":Z
    .end local v13  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v14  # "index":I
    .restart local v9  # "index":I
    :cond_58
    move v14, v9

    .end local v9  # "index":I
    .restart local v14  # "index":I
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    .line 1143
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v0, :cond_74

    .line 1144
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, v11}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v0, v1

    .line 1145
    const/16 v1, 0x15

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1146
    iget-object v1, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v0

    goto :goto_75

    .line 1143
    :cond_74
    move-object v13, v0

    .line 1148
    .end local v0  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    :goto_75
    iget v0, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1149
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_cc

    move-object v1, v0

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

    move/from16 v16, v14

    move v14, v11

    .end local v14  # "index":I
    .local v16, "index":I
    move-object v11, v13

    :try_start_95
    invoke-direct/range {v1 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_c8

    move-object v1, v0

    .line 1152
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v0, 0x0

    move-object/from16 v2, p1

    :try_start_9c
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_bd
    .catchall {:try_start_9c .. :try_end_9f} :catchall_d3

    .line 1155
    nop

    .line 1156
    :try_start_a0
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    invoke-direct {v12, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1158
    const/4 v0, 0x1

    move-object v13, v1

    .line 1161
    .end local v1  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v0, "notifyAcquire":Z
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_aa
    invoke-direct {v12, v13, v14}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1162
    iget v1, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1163
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1164
    if-eqz v0, :cond_bb

    .line 1170
    invoke-direct {v12, v13}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1172
    .end local v0  # "notifyAcquire":Z
    .end local v13  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v16  # "index":I
    :cond_bb
    monitor-exit v15

    .line 1173
    return-void

    .line 1153
    .restart local v1  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    .restart local v16  # "index":I
    :catch_bd
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1154
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1  # "lock":Landroid/os/IBinder;
    .end local p2  # "flags":I
    .end local p3  # "tag":Ljava/lang/String;
    .end local p4  # "packageName":Ljava/lang/String;
    .end local p5  # "ws":Landroid/os/WorkSource;
    .end local p6  # "historyTag":Ljava/lang/String;
    .end local p7  # "uid":I
    .end local p8  # "pid":I
    throw v3

    .line 1172
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v1  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v16  # "index":I
    .restart local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1  # "lock":Landroid/os/IBinder;
    .restart local p2  # "flags":I
    .restart local p3  # "tag":Ljava/lang/String;
    .restart local p4  # "packageName":Ljava/lang/String;
    .restart local p5  # "ws":Landroid/os/WorkSource;
    .restart local p6  # "historyTag":Ljava/lang/String;
    .restart local p7  # "uid":I
    .restart local p8  # "pid":I
    :catchall_c8
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_d1

    :catchall_cc
    move-exception v0

    move-object/from16 v2, p1

    move-object v15, v10

    move v14, v11

    :goto_d1
    monitor-exit v15
    :try_end_d2
    .catchall {:try_start_a0 .. :try_end_d2} :catchall_d3

    throw v0

    :catchall_d3
    move-exception v0

    goto :goto_d1
.end method

.method private adjustWakeLockSummaryLocked(I)I
    .registers 4
    .param p1, "wakeLockSummary"  # I

    .line 2195
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 2196
    and-int/lit16 p1, p1, -0xc1

    .line 2198
    :cond_7
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_f

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_13

    .line 2200
    :cond_f
    and-int/lit8 p1, p1, -0xf

    .line 2202
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2211
    :cond_13
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_24

    .line 2212
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 2213
    or-int/lit8 p1, p1, 0x21

    goto :goto_24

    .line 2214
    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 2215
    or-int/lit8 p1, p1, 0x1

    .line 2218
    :cond_24
    :goto_24
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2a

    .line 2219
    or-int/lit8 p1, p1, 0x1

    .line 2222
    :cond_2a
    return p1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 14
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"  # I

    .line 1201
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_51

    .line 1202
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1205
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1206
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1207
    .local v0, "workSource":Landroid/os/WorkSource;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1208
    .local v1, "workChain":Landroid/os/WorkSource$WorkChain;
    if-eqz v1, :cond_2b

    .line 1209
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, "opPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    move v0, v3

    .local v3, "opUid":I
    goto :goto_3e

    .line 1212
    .end local v2  # "opPackageName":Ljava/lang/String;
    .end local v3  # "opUid":I
    :cond_2b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1213
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_37
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1214
    .local v3, "opPackageName":Ljava/lang/String;
    :goto_39
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v0

    move-object v2, v3

    .line 1216
    .end local v1  # "workChain":Landroid/os/WorkSource$WorkChain;
    .end local v3  # "opPackageName":Ljava/lang/String;
    .local v0, "opUid":I
    .restart local v2  # "opPackageName":Ljava/lang/String;
    :goto_3e
    goto :goto_43

    .line 1217
    .end local v0  # "opUid":I
    .end local v2  # "opPackageName":Ljava/lang/String;
    :cond_3f
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1218
    .restart local v2  # "opPackageName":Ljava/lang/String;
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1220
    .restart local v0  # "opUid":I
    :goto_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v3, p0

    move v8, v0

    move-object v9, v2

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 1224
    .end local v0  # "opUid":I
    .end local v2  # "opPackageName":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1296
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 1297
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1303
    :cond_19
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .registers 12
    .param p1, "eventTime"  # J
    .param p3, "uid"  # I

    .line 3482
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3483
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_4e

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_4e

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_12

    goto :goto_4e

    .line 3488
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

    .line 3489
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 3490
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_3b

    .line 3491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3492
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3494
    :cond_3b
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3496
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3498
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3499
    monitor-exit v0

    .line 3500
    return-void

    .line 3485
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    .line 3499
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private canDozeLocked()Z
    .registers 3

    .line 2735
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

    .line 2703
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2706
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2707
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    if-nez v0, :cond_54

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_29

    goto :goto_54

    .line 2713
    :cond_29
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_52

    .line 2714
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v0, :cond_38

    .line 2715
    return v1

    .line 2717
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_45

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v2, v0, :cond_45

    .line 2720
    return v1

    .line 2722
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v0, :cond_52

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v2, v0, :cond_52

    .line 2725
    return v1

    .line 2728
    :cond_52
    const/4 v0, 0x1

    return v0

    .line 2711
    :cond_54
    :goto_54
    return v1
.end method

.method private concat2Array([I[I)[I
    .registers 7
    .param p1, "a"  # [I
    .param p2, "b"  # [I

    .line 1575
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1576
    .local v0, "c":[I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1578
    return-object v0
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "workSource"  # Landroid/os/WorkSource;

    .line 4249
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
    .registers 5
    .param p1, "message"  # Ljava/lang/String;

    .line 3213
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    .local v0, "t":Ljava/lang/Thread;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3221
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 3224
    goto :goto_14

    .line 3222
    :catch_e
    move-exception v1

    .line 3223
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3225
    .end local v1  # "e":Ljava/lang/InterruptedException;
    :goto_14
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3703
    const-string v0, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3707
    :try_start_8
    const-string v1, "Power Manager State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3708
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3709
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

    .line 3710
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

    .line 3711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
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

    .line 3724
    const-string v1, "  mNotifyLongScheduled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17b

    .line 3726
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_184

    .line 3728
    :cond_17b
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3730
    :goto_184
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3731
    const-string v1, "  mNotifyLongDispatched="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3732
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_198

    .line 3733
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a1

    .line 3735
    :cond_198
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3737
    :goto_1a1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3738
    const-string v1, "  mNotifyLongNextCheck="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b5

    .line 3740
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1be

    .line 3742
    :cond_1b5
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3744
    :goto_1be
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3745
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

    .line 3746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanSummoned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
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

    .line 3753
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

    .line 3754
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

    .line 3755
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

    .line 3756
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

    .line 3757
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

    .line 3758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 3759
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3758
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 3761
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3760
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 3763
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3762
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3771
    const-string v1, "Settings and Configuration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOffTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSleepTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (enforced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3809
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3807
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3831
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v1

    .line 3832
    .local v1, "sleepTimeout":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v3

    .line 3833
    .local v3, "screenOffTimeout":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v5

    .line 3834
    .local v5, "screenDimDuration":J
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sleep timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen off timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen dim duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3840
    const-string v7, "UID states (changing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3841
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 3842
    const-string v7, " changed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3843
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 3844
    const-string v7, "):"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_78b
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7d4

    .line 3846
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3847
    .local v8, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const-string v9, "  UID "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3848
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3849
    iget-boolean v9, v8, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v9, :cond_7b8

    const-string v9, "  ACTIVE "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7bd

    .line 3850
    :cond_7b8
    const-string v9, "INACTIVE "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3851
    :goto_7bd
    const-string v9, " count="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3852
    iget v9, v8, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 3853
    const-string v9, " state="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3854
    iget v9, v8, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 3845
    .end local v8  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    add-int/lit8 v7, v7, 0x1

    goto :goto_78b

    .line 3857
    .end local v7  # "i":I
    :cond_7d4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3858
    const-string v7, "Looper state:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v9, "  "

    invoke-virtual {v7, v8, v9}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3861
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3862
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wake Locks: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3863
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_80f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_830

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3864
    .local v8, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    .end local v8  # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_80f

    .line 3868
    :cond_830
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy Wake Locks: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mProxyWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mProxyWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_853
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_874

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3871
    .restart local v8  # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    .end local v8  # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_853

    .line 3875
    :cond_874
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3876
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspend Blockers: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3877
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_897
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/SuspendBlocker;

    .line 3878
    .local v8, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    .end local v8  # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_897

    .line 3881
    :cond_8b8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3882
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display Power: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3884
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v7, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 3885
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v7, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 3886
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v7, p1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3888
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3889
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 3890
    .local v7, "numProfiles":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile power states: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8fe
    if-ge v8, v7, :cond_93d

    .line 3892
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3893
    .local v9, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    const-string v10, "  mUserId="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3894
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3895
    const-string v10, " mScreenOffTimeout="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3896
    iget-wide v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 3897
    const-string v10, " mWakeLockSummary="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3898
    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3899
    const-string v10, " mLastUserActivityTime="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3900
    iget-wide v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 3901
    const-string v10, " mLockingNotified="

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3902
    iget-boolean v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 3891
    .end local v9  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v8, v8, 0x1

    goto :goto_8fe

    .line 3905
    .end local v8  # "i":I
    :cond_93d
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    move-object v1, v8

    .line 3906
    .end local v3  # "screenOffTimeout":J
    .end local v5  # "screenDimDuration":J
    .end local v7  # "numProfiles":I
    .local v1, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v0
    :try_end_941
    .catchall {:try_start_8 .. :try_end_941} :catchall_947

    .line 3908
    if-eqz v1, :cond_946

    .line 3909
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3911
    :cond_946
    return-void

    .line 3906
    .end local v1  # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_947
    move-exception v1

    :try_start_948
    monitor-exit v0
    :try_end_949
    .catchall {:try_start_948 .. :try_end_949} :catchall_947

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 33
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 3915
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 3917
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3918
    :try_start_d
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 3919
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-wide v5, 0x10500000002L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3920
    const-wide v7, 0x10e00000003L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3921
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v7, 0x10800000004L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3922
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v9, 0x10800000005L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3923
    const-wide v11, 0x10e00000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3924
    const-wide v11, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3925
    const-wide v11, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3928
    const-wide v11, 0x10e00000009L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3929
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3930
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v13, 0x1080000000bL

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3931
    const-wide v5, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3932
    const-wide v5, 0x1080000000dL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3933
    const-wide v5, 0x1080000000eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3936
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v5, 0x1080000000fL

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3940
    const-wide v5, 0x10b00000010L

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3941
    .local v5, "activeWakeLocksToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v19, 0x1

    and-int/lit8 v0, v0, 0x1

    const/16 v20, 0x0

    if-eqz v0, :cond_b4

    move/from16 v0, v19

    goto :goto_b6

    :cond_b4
    move/from16 v0, v20

    :goto_b6
    const-wide v13, 0x10800000001L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3944
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c7

    move/from16 v0, v19

    goto :goto_c9

    :cond_c7
    move/from16 v0, v20

    :goto_c9
    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3947
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_da

    move/from16 v0, v19

    goto :goto_dc

    :cond_da
    move/from16 v0, v20

    :goto_dc
    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3950
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_ed

    move/from16 v0, v19

    goto :goto_ef

    :cond_ed
    move/from16 v0, v20

    :goto_ef
    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3953
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_fb

    move/from16 v0, v19

    goto :goto_fd

    :cond_fb
    move/from16 v0, v20

    :goto_fd
    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3956
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_109

    move/from16 v0, v19

    goto :goto_10b

    :cond_109
    move/from16 v0, v20

    :goto_10b
    const-wide v9, 0x10800000006L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3959
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11c

    move/from16 v0, v19

    goto :goto_11e

    :cond_11c
    move/from16 v0, v20

    :goto_11e
    const-wide v9, 0x10800000007L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3962
    const-wide v9, 0x10800000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_134

    move/from16 v0, v19

    goto :goto_136

    :cond_134
    move/from16 v0, v20

    :goto_136
    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3965
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3967
    const-wide v9, 0x10300000011L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3968
    const-wide v7, 0x10300000012L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3969
    const-wide v7, 0x10300000013L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3971
    const-wide v7, 0x10b00000014L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3972
    .local v7, "userActivityToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16c

    move/from16 v0, v19

    goto :goto_16e

    :cond_16c
    move/from16 v0, v20

    :goto_16e
    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3975
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17a

    move/from16 v0, v19

    goto :goto_17c

    :cond_17a
    move/from16 v0, v20

    :goto_17c
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3978
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18d

    move/from16 v0, v19

    goto :goto_18f

    :cond_18d
    move/from16 v0, v20

    :goto_18f
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3981
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3983
    const-wide v9, 0x10800000015L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3986
    const-wide v9, 0x10800000016L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3987
    const-wide v9, 0x10800000017L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3988
    const-wide v9, 0x10800000018L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3989
    const-wide v9, 0x10800000019L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3990
    const-wide v9, 0x1080000001aL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3992
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v9, v0

    move/from16 v10, v20

    :goto_1d6
    if-ge v10, v9, :cond_1ee

    aget v29, v0, v10

    move/from16 v30, v29

    .line 3993
    .local v30, "id":I
    const-wide v11, 0x2050000001bL

    move/from16 v15, v30

    .end local v30  # "id":I
    .local v15, "id":I
    invoke-virtual {v3, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3992
    .end local v15  # "id":I
    add-int/lit8 v10, v10, 0x1

    const-wide v11, 0x10800000003L

    goto :goto_1d6

    .line 3995
    :cond_1ee
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v9, v0

    move/from16 v10, v20

    :goto_1f3
    if-ge v10, v9, :cond_207

    aget v11, v0, v10

    .line 3996
    .local v11, "id":I
    const-wide v13, 0x2050000001cL

    invoke-virtual {v3, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3995
    .end local v11  # "id":I
    add-int/lit8 v10, v10, 0x1

    const-wide v13, 0x10800000001L

    goto :goto_1f3

    .line 3999
    :cond_207
    const-wide v9, 0x1030000001dL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4000
    const-wide v9, 0x1030000001eL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4001
    const-wide v9, 0x1030000001fL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4002
    const-wide v9, 0x10300000020L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4005
    const-wide v9, 0x10300000021L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4008
    const-wide v9, 0x10300000022L

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4011
    const-wide v9, 0x10800000023L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4014
    const-wide v9, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4015
    const-wide v9, 0x10800000025L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4018
    const-wide v9, 0x10800000026L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4022
    const-wide v9, 0x10b00000027L

    .line 4023
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4024
    .local v9, "settingsAndConfigurationToken":J
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4028
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4032
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4036
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v11, 0x10800000004L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4040
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v11, 0x10800000005L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4043
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v11, 0x10800000006L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4047
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v11, 0x10800000007L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4050
    const-wide v11, 0x10800000008L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4054
    const-wide v11, 0x10800000009L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4058
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4062
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4066
    const-wide v11, 0x1110000000cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4070
    const-wide v11, 0x1110000000dL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4074
    const-wide v11, 0x1110000000eL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4078
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4081
    const-wide v11, 0x10800000010L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4085
    const-wide v11, 0x10800000011L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4089
    const-wide v11, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4092
    const-wide v11, 0x10500000013L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4096
    const-wide v11, 0x10500000014L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4100
    const-wide v11, 0x10200000015L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4103
    const-wide v11, 0x10500000016L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4106
    const-wide v11, 0x11100000017L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4109
    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v11, 0x7fffffff

    .line 4113
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 4109
    const-wide v13, 0x10500000018L

    invoke-virtual {v3, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4114
    const-wide v11, 0x10800000019L

    .line 4117
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    .line 4114
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4119
    const-wide v11, 0x10b0000001aL

    .line 4120
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4122
    .local v11, "stayOnWhilePluggedInToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_389

    move/from16 v0, v19

    goto :goto_38b

    :cond_389
    move/from16 v0, v20

    :goto_38b
    const-wide v13, 0x10800000001L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4126
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_39c

    move/from16 v0, v19

    goto :goto_39e

    :cond_39c
    move/from16 v0, v20

    :goto_39e
    const-wide v13, 0x10800000002L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4130
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3af

    move/from16 v0, v19

    goto :goto_3b1

    :cond_3af
    move/from16 v0, v20

    :goto_3b1
    const-wide v13, 0x10800000003L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4135
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4137
    const-wide v13, 0x10e0000001bL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4140
    const-wide v13, 0x1110000001cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4144
    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    move-wide/from16 v17, v5

    const-wide v5, 0x1120000001dL

    .end local v5  # "activeWakeLocksToken":J
    .local v17, "activeWakeLocksToken":J
    invoke-virtual {v3, v5, v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4148
    const-wide v5, 0x1080000001eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4152
    const-wide v5, 0x10e0000001fL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4156
    const-wide v5, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4160
    const-wide v5, 0x10200000020L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4165
    const-wide v5, 0x10b00000021L

    .line 4166
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4169
    .local v5, "screenBrightnessSettingLimitsToken":J
    const-wide v13, 0x10500000001L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4173
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4177
    const-wide v13, 0x10500000003L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4181
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4183
    const-wide v13, 0x10800000022L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4186
    const-wide v13, 0x10800000023L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4189
    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4191
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v13

    .line 4192
    .local v13, "sleepTimeout":J
    invoke-direct {v1, v13, v14}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v15

    move-wide/from16 v21, v15

    .line 4193
    .local v21, "screenOffTimeout":J
    move-wide v15, v5

    move-wide/from16 v5, v21

    .end local v21  # "screenOffTimeout":J
    .local v5, "screenOffTimeout":J
    .local v15, "screenBrightnessSettingLimitsToken":J
    invoke-direct {v1, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v21

    move-wide/from16 v23, v21

    .line 4194
    .local v23, "screenDimDuration":J
    move-wide/from16 v21, v7

    .end local v7  # "userActivityToken":J
    .local v21, "userActivityToken":J
    const-wide v7, 0x11100000028L

    invoke-virtual {v3, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4195
    const-wide v7, 0x10500000029L

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4196
    const-wide v7, 0x1050000002aL

    move-wide/from16 v25, v5

    move-wide/from16 v5, v23

    .end local v23  # "screenDimDuration":J
    .local v5, "screenDimDuration":J
    .local v25, "screenOffTimeout":J
    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4197
    const-wide v7, 0x1080000002bL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4198
    const-wide v7, 0x1080000002cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4200
    move/from16 v0, v20

    .local v0, "i":I
    :goto_48c
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_4f3

    .line 4201
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4202
    .local v7, "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-wide/from16 v19, v5

    .end local v5  # "screenDimDuration":J
    .local v19, "screenDimDuration":J
    const-wide v5, 0x20b0000002dL

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4203
    .local v5, "uIDToken":J
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 4204
    .local v8, "uid":I
    move-wide/from16 v23, v9

    .end local v9  # "settingsAndConfigurationToken":J
    .local v23, "settingsAndConfigurationToken":J
    const-wide v9, 0x10500000001L

    invoke-virtual {v3, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4205
    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v27, v11

    const-wide v10, 0x10900000002L

    .end local v11  # "stayOnWhilePluggedInToken":J
    .local v27, "stayOnWhilePluggedInToken":J
    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4206
    iget-boolean v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v10, 0x10800000003L

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4207
    const-wide v10, 0x10500000004L

    iget v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4208
    const-wide v9, 0x10e00000005L

    iget v11, v7, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4209
    invoke-static {v11}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v11

    .line 4208
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4210
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4200
    .end local v5  # "uIDToken":J
    .end local v7  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v8  # "uid":I
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v19

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    goto :goto_48c

    .end local v19  # "screenDimDuration":J
    .end local v23  # "settingsAndConfigurationToken":J
    .end local v27  # "stayOnWhilePluggedInToken":J
    .local v5, "screenDimDuration":J
    .restart local v9  # "settingsAndConfigurationToken":J
    .restart local v11  # "stayOnWhilePluggedInToken":J
    :cond_4f3
    move-wide/from16 v19, v5

    move-wide/from16 v23, v9

    move-wide/from16 v27, v11

    .line 4213
    .end local v0  # "i":I
    .end local v5  # "screenDimDuration":J
    .end local v9  # "settingsAndConfigurationToken":J
    .end local v11  # "stayOnWhilePluggedInToken":J
    .restart local v19  # "screenDimDuration":J
    .restart local v23  # "settingsAndConfigurationToken":J
    .restart local v27  # "stayOnWhilePluggedInToken":J
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v5, 0x10b00000032L

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4216
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b0000002eL

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Looper;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4218
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_517
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4219
    .local v5, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    const-wide v6, 0x20b0000002fL

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4220
    .end local v5  # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_517

    .line 4222
    :cond_52c
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_532
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_547

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    .line 4223
    .local v5, "sb":Lcom/android/server/power/SuspendBlocker;
    const-wide v6, 0x20b00000030L

    invoke-interface {v5, v3, v6, v7}, Lcom/android/server/power/SuspendBlocker;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4224
    .end local v5  # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_532

    .line 4225
    :cond_547
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4226
    .end local v13  # "sleepTimeout":J
    .end local v15  # "screenBrightnessSettingLimitsToken":J
    .end local v17  # "activeWakeLocksToken":J
    .end local v19  # "screenDimDuration":J
    .end local v21  # "userActivityToken":J
    .end local v23  # "settingsAndConfigurationToken":J
    .end local v25  # "screenOffTimeout":J
    .end local v27  # "stayOnWhilePluggedInToken":J
    .local v0, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v4
    :try_end_54a
    .catchall {:try_start_d .. :try_end_54a} :catchall_558

    .line 4228
    if-eqz v0, :cond_554

    .line 4229
    const-wide v4, 0x10b00000031L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4231
    :cond_554
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4232
    return-void

    .line 4226
    .end local v0  # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_558
    move-exception v0

    :try_start_559
    monitor-exit v4
    :try_end_55a
    .catchall {:try_start_559 .. :try_end_55a} :catchall_558

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .registers 5
    .param p1, "time"  # J

    .line 1414
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 1415
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1416
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1417
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1418
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"  # Landroid/os/IBinder;

    .line 1335
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1336
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1337
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1338
    return v1

    .line 1336
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1341
    .end local v1  # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .registers 6

    .line 1906
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_60

    .line 1907
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    .line 1909
    return-void

    .line 1911
    :cond_14
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v1, :cond_1a

    if-nez v0, :cond_1d

    .line 1912
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 1914
    :cond_1d
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_59

    .line 1915
    const-wide/32 v0, 0x20000

    const-string v3, "Screen turning on"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 1917
    .local v0, "latencyMs":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_59

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen on took "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PowerManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-static {}, Lcom/meizu/datamanager/PerfDataInject;->getInstance()Lcom/meizu/datamanager/PerfDataInject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/datamanager/PerfDataInject;->reportScreenOnTime(I)V

    .line 1926
    .end local v0  # "latencyMs":I
    :cond_59
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1927
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    .line 1929
    :cond_60
    return-void
.end method

.method private forceSuspendInternal(I)Z
    .registers 11
    .param p1, "uid"  # I

    .line 3611
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_52

    .line 3612
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    .line 3619
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3620
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_4f

    .line 3622
    :try_start_17
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result v1

    .line 3624
    .local v1, "success":Z
    if-nez v1, :cond_41

    .line 3625
    const-string v2, "PowerManagerService"

    const-string v3, "Force-Suspending failed in native."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_52

    .line 3627
    :cond_41
    nop

    .line 3629
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3630
    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3632
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3633
    monitor-exit v2

    .line 3627
    return v1

    .line 3633
    :catchall_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v0

    .line 3620
    .end local v1  # "success":Z
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .end local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1  # "uid":I
    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 3629
    .restart local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1  # "uid":I
    :catchall_52
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3630
    :try_start_56
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 3632
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3633
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    throw v1

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method private static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 5
    .param p0, "workSource"  # Landroid/os/WorkSource;

    .line 1187
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1188
    return-object v1

    .line 1191
    :cond_8
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 1192
    .local v2, "workChain":Landroid/os/WorkSource$WorkChain;
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v3

    if-lez v3, :cond_23

    .line 1193
    return-object v2

    .line 1195
    .end local v2  # "workChain":Landroid/os/WorkSource$WorkChain;
    :cond_23
    goto :goto_10

    .line 1197
    :cond_24
    return-object v1
.end method

.method private getLastSleepReasonInternal()I
    .registers 3

    .line 5305
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5306
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    monitor-exit v0

    return v1

    .line 5307
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .registers 6

    .line 5311
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5312
    :try_start_3
    new-instance v1, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    invoke-direct {v1, v2, v3, v4}, Landroid/os/PowerManager$WakeData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    .line 5313
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .registers 12
    .param p1, "now"  # J

    .line 2443
    const-wide/16 v0, -0x1

    .line 2444
    .local v0, "nextTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2445
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_2a

    .line 2446
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2447
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v7, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v5, v7

    .line 2448
    .local v5, "timeout":J
    cmp-long v7, v5, p1

    if-lez v7, :cond_27

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_26

    cmp-long v7, v5, v0

    if-gez v7, :cond_27

    .line 2449
    :cond_26
    move-wide v0, v5

    .line 2445
    .end local v4  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .end local v5  # "timeout":J
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2452
    .end local v3  # "i":I
    :cond_2a
    return-wide v0
.end method

.method private getScreenDimDurationLocked(J)J
    .registers 7
    .param p1, "screenOffTimeout"  # J

    .line 2497
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenOffTimeoutLocked(J)J
    .registers 10
    .param p1, "sleepTimeout"  # J

    .line 2483
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 2484
    .local v0, "timeout":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2485
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2487
    :cond_e
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1a

    .line 2488
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2490
    :cond_1a
    cmp-long v2, p1, v4

    if-ltz v2, :cond_22

    .line 2491
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2493
    :cond_22
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getSleepTimeoutLocked()J
    .registers 5

    .line 2475
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 2476
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 2477
    const-wide/16 v2, -0x1

    return-wide v2

    .line 2479
    :cond_b
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeLockDataInternal()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockData;",
            ">;"
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v1, "listWakeLockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WakeLockData;>;"
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1097
    .local v3, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v4, Landroid/os/WakeLockData;

    invoke-direct {v4}, Landroid/os/WakeLockData;-><init>()V

    .line 1098
    .local v4, "wakeLockData":Landroid/os/WakeLockData;
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/WakeLockData;->mFlags:I

    .line 1099
    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/WakeLockData;->mTag:Ljava/lang/String;

    .line 1100
    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/WakeLockData;->mPackageName:Ljava/lang/String;

    .line 1101
    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iput-object v5, v4, Landroid/os/WakeLockData;->mWorkSource:Landroid/os/WorkSource;

    .line 1102
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iput v5, v4, Landroid/os/WakeLockData;->mOwnerUid:I

    .line 1103
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iput v5, v4, Landroid/os/WakeLockData;->mOwnerPid:I

    .line 1105
    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/WakeLockData;->mHistoryTag:Ljava/lang/String;

    .line 1106
    iget-boolean v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iput-boolean v5, v4, Landroid/os/WakeLockData;->mNotifiedAcquired:Z

    .line 1108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    nop

    .end local v3  # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4  # "wakeLockData":Landroid/os/WakeLockData;
    goto :goto_e

    .line 1113
    :cond_5e
    monitor-exit v0

    return-object v1

    .line 1115
    .end local v1  # "listWakeLockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WakeLockData;>;"
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private getWakeLockDisabledUidsInternal()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5519
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5520
    .local v0, "numWakeLocks":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5521
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "PowerManagerService"

    const-string v3, "getWakeLockDisabledUidsInternal"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_36

    .line 5524
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5526
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    .line 5528
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_33

    .line 5529
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5523
    .end local v3  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 5534
    .end local v2  # "i":I
    :cond_36
    return-object v1
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .registers 5
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2227
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x6

    if-eq v0, v1, :cond_31

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2b

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_26

    const/16 v1, 0x20

    if-eq v0, v1, :cond_23

    const/16 v1, 0x40

    if-eq v0, v1, :cond_22

    const/16 v1, 0x80

    if-eq v0, v1, :cond_21

    goto :goto_3c

    .line 2260
    :cond_21
    return v1

    .line 2258
    :cond_22
    return v1

    .line 2256
    :cond_23
    const/16 v0, 0x10

    return v0

    .line 2236
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_3c

    .line 2237
    return v1

    .line 2243
    :cond_2b
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_3c

    .line 2244
    const/4 v0, 0x2

    return v0

    .line 2250
    :cond_31
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_3c

    .line 2251
    const/4 v0, 0x4

    return v0

    .line 2229
    :cond_37
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_3c

    .line 2231
    return v1

    .line 2262
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return v0
.end method

.method private goToSleepInternal(JIII)V
    .registers 9
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "flags"  # I
    .param p5, "uid"  # I

    .line 1752
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1753
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1755
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1757
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1759
    :cond_12
    monitor-exit v0

    .line 1760
    return-void

    .line 1759
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .registers 15
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "flags"  # I
    .param p5, "uid"  # I

    .line 1776
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_99

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_99

    const/4 v2, 0x3

    if-eq v0, v2, :cond_99

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_18

    goto/16 :goto_99

    .line 1783
    :cond_18
    const-wide/32 v3, 0x20000

    const-string v0, "goToSleep"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1785
    const/16 v0, 0x8

    .line 1786
    :try_start_22
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1785
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move p3, v0

    .line 1787
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Going to sleep due to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1791
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    .line 1792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1793
    invoke-virtual {p0, v2, p3, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 1796
    const/4 v1, 0x0

    .line 1797
    .local v1, "numWakeLocksCleared":I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1798
    .local v2, "numWakeLocks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_64
    if-ge v5, v2, :cond_85

    .line 1799
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1800
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    const/4 v8, 0x6

    if-eq v7, v8, :cond_80

    const/16 v8, 0xa

    if-eq v7, v8, :cond_80

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_80

    goto :goto_82

    .line 1804
    :cond_80
    add-int/lit8 v1, v1, 0x1

    .line 1798
    .end local v6  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 1808
    .end local v5  # "i":I
    :cond_85
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V

    .line 1811
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_8f

    .line 1812
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_8f
    .catchall {:try_start_22 .. :try_end_8f} :catchall_94

    .line 1815
    .end local v1  # "numWakeLocksCleared":I
    .end local v2  # "numWakeLocks":I
    :cond_8f
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1816
    nop

    .line 1817
    return v0

    .line 1815
    :catchall_94
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1780
    :cond_99
    :goto_99
    return v1
.end method

.method private handleBatteryStateChangedLocked()V
    .registers 2

    .line 3152
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3153
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3154
    return-void
.end method

.method private handlePreDimTimeout()V
    .registers 4

    .line 5646
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5647
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_16

    .line 5649
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier;->onPreDim(I)V

    .line 5651
    :cond_16
    monitor-exit v0

    .line 5652
    return-void

    .line 5651
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private handleSandman()V
    .registers 16

    .line 2606
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2607
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2608
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2609
    .local v2, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_24

    .line 2610
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

    .line 2611
    .local v3, "startDreaming":Z
    :goto_21
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    goto :goto_25

    .line 2613
    .end local v3  # "startDreaming":Z
    :cond_24
    move v3, v1

    .line 2615
    .restart local v3  # "startDreaming":Z
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_100

    .line 2621
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v5, 0x3

    if-eqz v0, :cond_41

    .line 2623
    if-eqz v3, :cond_39

    .line 2624
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2625
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v2, v5, :cond_35

    goto :goto_36

    :cond_35
    move v4, v1

    :goto_36
    invoke-virtual {v0, v4}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2627
    :cond_39
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    move v4, v0

    .local v0, "isDreaming":Z
    goto :goto_43

    .line 2629
    .end local v0  # "isDreaming":Z
    :cond_41
    const/4 v0, 0x0

    move v4, v0

    .line 2633
    .local v4, "isDreaming":Z
    :goto_43
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2635
    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    .line 2636
    :try_start_4a
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2637
    if-ne v2, v5, :cond_58

    .line 2638
    const-string v0, "PowerManagerService"

    const-string v7, "Dozing..."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 2640
    :cond_58
    const-string v0, "PowerManagerService"

    const-string v7, "Dreaming..."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_5f
    :goto_5f
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v0, :cond_fb

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v2, :cond_69

    goto/16 :goto_fb

    .line 2651
    :cond_69
    const/4 v0, 0x2

    if-ne v2, v0, :cond_e0

    .line 2652
    if-eqz v4, :cond_b1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2653
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v0, :cond_af

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v5, v7

    if-ge v0, v5, :cond_af

    .line 2656
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_af

    .line 2660
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%.  Battery level now: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 2666
    :cond_af
    monitor-exit v6

    return-void

    .line 2671
    :cond_b1
    :goto_b1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 2672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/16 v12, 0x3e8

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 2674
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_f2

    .line 2676
    :cond_c7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const-string v11, "android.server.power:DREAM_FINISHED"

    const/16 v12, 0x3e8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2679
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x3e8

    .line 2676
    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 2680
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_f2

    .line 2682
    :cond_e0
    if-ne v2, v5, :cond_f2

    .line 2683
    if-eqz v4, :cond_e6

    .line 2684
    monitor-exit v6

    return-void

    .line 2688
    :cond_e6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 v0, 0x3e8

    invoke-direct {p0, v7, v8, v0}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2689
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2691
    :cond_f2
    :goto_f2
    monitor-exit v6
    :try_end_f3
    .catchall {:try_start_4a .. :try_end_f3} :catchall_fd

    .line 2694
    if-eqz v4, :cond_fa

    .line 2695
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2697
    :cond_fa
    return-void

    .line 2647
    :cond_fb
    :goto_fb
    :try_start_fb
    monitor-exit v6

    return-void

    .line 2691
    :catchall_fd
    move-exception v0

    monitor-exit v6
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_fd

    throw v0

    .line 2615
    .end local v2  # "wakefulness":I
    .end local v3  # "startDreaming":Z
    .end local v4  # "isDreaming":Z
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

    .line 3515
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3520
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3521
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3522
    monitor-exit v0

    .line 3523
    return-void

    .line 3522
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    .line 1087
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1088
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1089
    return-void
.end method

.method private handleUidStateChangeLocked()V
    .registers 2

    .line 3327
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    .line 3328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_b

    .line 3330
    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3332
    :goto_b
    return-void
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    .line 2464
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2469
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2470
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2471
    monitor-exit v0

    .line 2472
    return-void

    .line 2471
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 4
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1253
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1260
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 1261
    monitor-exit v0

    return-void

    .line 1264
    :cond_d
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->removeScreenWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1268
    .end local v1  # "index":I
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private incrementBootCount()V
    .registers 6

    .line 4235
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4238
    nop

    .line 4239
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 4238
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    .line 4242
    .local v1, "count":I
    goto :goto_18

    .line 4245
    .end local v1  # "count":I
    :catchall_13
    move-exception v1

    goto :goto_2b

    .line 4240
    :catch_15
    move-exception v1

    .line 4241
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    move v1, v2

    .line 4243
    .local v1, "count":I
    :goto_18
    nop

    .line 4244
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v4, v1, 0x1

    .line 4243
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4245
    nop

    .end local v1  # "count":I
    monitor-exit v0

    .line 4246
    return-void

    .line 4245
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_13

    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    .line 2559
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

    .line 3119
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3121
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    .line 2547
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

    .line 3458
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

.method private isNightAutoUpdateMode()Z
    .registers 7

    .line 5453
    const-string v0, "PowerManagerService"

    const/4 v1, 0x0

    .line 5455
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    :try_start_4
    const-string v3, "/cache/.update_auto"

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3

    move-object v1, v3

    .line 5456
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    int-to-char v3, v3

    .line 5457
    .local v3, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto update value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4 .. :try_end_2a} :catch_58
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2a} :catch_46
    .catchall {:try_start_4 .. :try_end_2a} :catchall_44

    .line 5458
    const/16 v0, 0x31

    if-ne v0, v3, :cond_39

    .line 5459
    const/4 v0, 0x1

    .line 5469
    nop

    .line 5471
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 5474
    goto :goto_38

    .line 5472
    :catch_34
    move-exception v2

    .line 5473
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 5459
    .end local v2  # "e":Ljava/io/IOException;
    :goto_38
    return v0

    .line 5461
    :cond_39
    nop

    .line 5469
    nop

    .line 5471
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 5474
    goto :goto_43

    .line 5472
    :catch_3f
    move-exception v0

    .line 5473
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5461
    .end local v0  # "e":Ljava/io/IOException;
    :goto_43
    return v2

    .line 5469
    .end local v3  # "value":I
    :catchall_44
    move-exception v0

    goto :goto_66

    .line 5466
    :catch_46
    move-exception v3

    .line 5467
    .local v3, "e":Ljava/io/IOException;
    :try_start_47
    const-string v4, "/cache/.update_auto file "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    .line 5469
    nop

    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_65

    .line 5471
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 5474
    :goto_52
    goto :goto_65

    .line 5472
    :catch_53
    move-exception v0

    .line 5473
    .restart local v0  # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_52

    .line 5464
    :catch_58
    move-exception v3

    .line 5465
    .local v3, "e":Ljava/nio/file/NoSuchFileException;
    :try_start_59
    const-string v4, "/cache/.update_auto file not exit"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_44

    .line 5469
    nop

    .end local v3  # "e":Ljava/nio/file/NoSuchFileException;
    if-eqz v1, :cond_65

    .line 5471
    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_53

    goto :goto_52

    .line 5477
    :cond_65
    :goto_65
    return v2

    .line 5469
    :goto_66
    if-eqz v1, :cond_70

    .line 5471
    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 5474
    goto :goto_70

    .line 5472
    :catch_6c
    move-exception v2

    .line 5473
    .restart local v2  # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 5474
    .end local v2  # "e":Ljava/io/IOException;
    :cond_70
    :goto_70
    throw v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .registers 8
    .param p1, "profile"  # Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .param p2, "now"  # J

    .line 2009
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1c

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .registers 3

    .line 3503
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3504
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    .line 3505
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p0, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1177
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_13

    .line 1183
    const/4 v0, 0x0

    return v0

    .line 1181
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidBrightness(I)Z
    .registers 2
    .param p0, "value"  # I

    .line 2868
    if-ltz p0, :cond_8

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6
    .param p1, "level"  # I

    .line 1584
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
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

    .line 1598
    :try_start_1e
    monitor-exit v0

    return v3

    .line 1600
    :catchall_20
    move-exception v1

    goto :goto_34

    .line 1595
    :cond_22
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    monitor-exit v0

    return v1

    .line 1592
    :cond_32
    monitor-exit v0

    return v1

    .line 1600
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_20

    throw v1
.end method

.method public static synthetic lambda$FUW_os-Z9SregUE_DR9vDwaRuXo(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .registers 7

    .line 1897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1898
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    .line 1899
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_14

    .line 1900
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    .line 1901
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1903
    :cond_14
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 6
    .param p0, "reason"  # Ljava/lang/String;

    .line 3658
    if-nez p0, :cond_4

    .line 3659
    const-string p0, ""

    .line 3666
    :cond_4
    const-string/jumbo v0, "quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ",quiescent"

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    .line 3667
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 3668
    const-string p0, ""

    goto :goto_2c

    .line 3669
    :cond_15
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3670
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 3671
    const/4 v1, 0x0

    .line 3672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 3671
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3675
    :cond_2c
    :goto_2c
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3676
    const-string/jumbo v0, "recovery-update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3677
    :cond_3e
    const-string/jumbo p0, "recovery"

    .line 3680
    :cond_41
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_54

    .line 3683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3686
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    const-wide/16 v0, 0x4e20

    :try_start_6e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72

    .line 3691
    goto :goto_7a

    .line 3689
    :catch_72
    move-exception v0

    .line 3690
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3692
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_7a
    const-string v0, "PowerManagerService"

    const-string v1, "Unexpected return from lowLevelReboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 3
    .param p0, "reason"  # Ljava/lang/String;

    .line 3644
    if-nez p0, :cond_4

    .line 3645
    const-string p0, ""

    .line 3647
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    return-void
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .registers 6
    .param p1, "eventTime"  # J

    .line 1692
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1693
    .local v0, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v0, :cond_14

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_14

    .line 1694
    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 1696
    :cond_14
    return-void
.end method

.method private napInternal(JI)V
    .registers 6
    .param p1, "eventTime"  # J
    .param p3, "uid"  # I

    .line 1821
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1822
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1823
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1825
    :cond_c
    monitor-exit v0

    .line 1826
    return-void

    .line 1825
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private napNoUpdateLocked(JI)Z
    .registers 11
    .param p1, "eventTime"  # J
    .param p3, "uid"  # I

    .line 1833
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

    .line 1838
    :cond_15
    const-wide/32 v3, 0x20000

    const-string/jumbo v0, "nap"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1840
    :try_start_1e
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nap time (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1843
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_44

    .line 1845
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1846
    nop

    .line 1847
    return v2

    .line 1845
    :catchall_44
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1835
    :cond_49
    :goto_49
    return v1
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
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

    .line 3060
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3061
    return v1

    .line 3063
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3068
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-nez v0, :cond_1d

    .line 3070
    :cond_1c
    return v1

    .line 3074
    :cond_1d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    .line 3079
    return v1

    .line 3081
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_30

    .line 3082
    return v1

    .line 3085
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 19
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_fc

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v2, :cond_fc

    .line 1346
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1347
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1352
    iget v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1353
    .local v3, "sourceUid":I
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_29

    .line 1354
    return-void

    .line 1356
    :cond_29
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v6, "AudioMix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 1357
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v5, :cond_38

    .line 1358
    return-void

    .line 1360
    :cond_38
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 1361
    .local v5, "size":I
    if-lt v5, v2, :cond_d8

    .line 1362
    const/4 v6, 0x0

    new-array v7, v6, [I

    .line 1363
    .local v7, "audioMixPids":[I
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 1364
    .local v9, "pids":[I
    if-nez v9, :cond_5c

    goto :goto_4d

    .line 1365
    :cond_5c
    invoke-direct {v0, v7, v9}, Lcom/android/server/power/PowerManagerService;->concat2Array([I[I)[I

    move-result-object v7

    .line 1366
    .end local v9  # "pids":[I
    goto :goto_4d

    .line 1372
    :cond_61
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v8

    invoke-virtual {v0, v2, v8, v7}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    .line 1378
    const/4 v2, 0x0

    .line 1379
    .local v2, "isReport":Z
    const-string v8, ""

    .line 1380
    .local v8, "reportPkg":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v9

    array-length v10, v9

    move-object v11, v8

    move v8, v2

    move v2, v6

    .end local v2  # "isReport":Z
    .local v8, "isReport":Z
    .local v11, "reportPkg":Ljava/lang/String;
    :goto_77
    if-ge v2, v10, :cond_cb

    aget v12, v9, v2

    .line 1381
    .local v12, "audioMixUid":I
    if-lt v12, v4, :cond_c1

    .line 1382
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    move-object v15, v11

    move v11, v8

    move v8, v6

    .end local v8  # "isReport":Z
    .local v11, "isReport":Z
    .local v15, "reportPkg":Ljava/lang/String;
    :goto_8b
    if-ge v8, v14, :cond_bc

    aget-object v4, v13, v8

    .line 1383
    .local v4, "audioPkg":Ljava/lang/String;
    if-eqz v4, :cond_b2

    .line 1387
    if-eqz v11, :cond_ab

    .line 1388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .local v16, "sourceUid":I
    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .end local v15  # "reportPkg":Ljava/lang/String;
    .local v3, "reportPkg":Ljava/lang/String;
    goto :goto_b4

    .line 1390
    .end local v16  # "sourceUid":I
    .local v3, "sourceUid":I
    .restart local v15  # "reportPkg":Ljava/lang/String;
    :cond_ab
    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .restart local v16  # "sourceUid":I
    const/4 v3, 0x1

    .line 1391
    .end local v11  # "isReport":Z
    .local v3, "isReport":Z
    move-object v6, v4

    move v11, v3

    move-object v15, v6

    .end local v15  # "reportPkg":Ljava/lang/String;
    .local v6, "reportPkg":Ljava/lang/String;
    goto :goto_b4

    .line 1383
    .end local v6  # "reportPkg":Ljava/lang/String;
    .end local v16  # "sourceUid":I
    .local v3, "sourceUid":I
    .restart local v11  # "isReport":Z
    .restart local v15  # "reportPkg":Ljava/lang/String;
    :cond_b2
    move/from16 v16, v3

    .line 1382
    .end local v3  # "sourceUid":I
    .end local v4  # "audioPkg":Ljava/lang/String;
    .restart local v16  # "sourceUid":I
    :goto_b4
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    const/16 v4, 0x2710

    const/4 v6, 0x0

    goto :goto_8b

    .end local v16  # "sourceUid":I
    .restart local v3  # "sourceUid":I
    :cond_bc
    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .restart local v16  # "sourceUid":I
    move v8, v11

    move-object v11, v15

    goto :goto_c3

    .line 1381
    .end local v15  # "reportPkg":Ljava/lang/String;
    .end local v16  # "sourceUid":I
    .restart local v3  # "sourceUid":I
    .restart local v8  # "isReport":Z
    .local v11, "reportPkg":Ljava/lang/String;
    :cond_c1
    move/from16 v16, v3

    .line 1380
    .end local v3  # "sourceUid":I
    .end local v12  # "audioMixUid":I
    .restart local v16  # "sourceUid":I
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v16

    const/16 v4, 0x2710

    const/4 v6, 0x0

    goto :goto_77

    .line 1397
    .end local v16  # "sourceUid":I
    .restart local v3  # "sourceUid":I
    :cond_cb
    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .restart local v16  # "sourceUid":I
    if-eqz v8, :cond_f8

    .line 1398
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    goto :goto_f8

    .line 1361
    .end local v7  # "audioMixPids":[I
    .end local v8  # "isReport":Z
    .end local v11  # "reportPkg":Ljava/lang/String;
    .end local v16  # "sourceUid":I
    .restart local v3  # "sourceUid":I
    :cond_d8
    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .restart local v16  # "sourceUid":I
    goto :goto_f8

    .line 1402
    .end local v5  # "size":I
    .end local v16  # "sourceUid":I
    .restart local v3  # "sourceUid":I
    :cond_db
    move/from16 v16, v3

    .end local v3  # "sourceUid":I
    .restart local v16  # "sourceUid":I
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v3, "AudioIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 1403
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_ec

    .line 1404
    return-void

    .line 1406
    :cond_ec
    const/4 v2, 0x2

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    goto :goto_f9

    .line 1402
    :cond_f8
    :goto_f8
    nop

    .line 1409
    :goto_f9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1411
    .end local v16  # "sourceUid":I
    :cond_fc
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 27
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"  # I
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .param p6, "pid"  # I
    .param p7, "ws"  # Landroid/os/WorkSource;
    .param p8, "historyTag"  # Ljava/lang/String;

    .line 1446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_33

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_33

    .line 1447
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1450
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1455
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1459
    :cond_33
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1460
    .local v2, "sourceUid":I
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_3a

    .line 1461
    return-void

    .line 1463
    :cond_3a
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "AudioMix"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1464
    if-nez p7, :cond_47

    .line 1465
    return-void

    .line 1467
    :cond_47
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1468
    .local v4, "size":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_e4

    .line 1469
    const/4 v6, 0x0

    new-array v7, v6, [I

    .line 1470
    .local v7, "audioMixPids":[I
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 1471
    .local v9, "pids":[I
    if-nez v9, :cond_6c

    goto :goto_5d

    .line 1472
    :cond_6c
    invoke-direct {v0, v7, v9}, Lcom/android/server/power/PowerManagerService;->concat2Array([I[I)[I

    move-result-object v7

    .line 1473
    .end local v9  # "pids":[I
    goto :goto_5d

    .line 1479
    :cond_71
    invoke-virtual/range {p7 .. p7}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v8

    invoke-virtual {v0, v5, v8, v7}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    .line 1485
    const/4 v5, 0x0

    .line 1486
    .local v5, "isReport":Z
    const-string v8, ""

    .line 1487
    .local v8, "reportPkg":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v9

    array-length v10, v9

    move-object v11, v8

    move v8, v5

    move v5, v6

    .end local v5  # "isReport":Z
    .local v8, "isReport":Z
    .local v11, "reportPkg":Ljava/lang/String;
    :goto_83
    if-ge v5, v10, :cond_d7

    aget v12, v9, v5

    .line 1488
    .local v12, "audioMixUid":I
    if-lt v12, v3, :cond_cd

    .line 1489
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    move-object v15, v11

    move v11, v8

    move v8, v6

    .end local v8  # "isReport":Z
    .local v11, "isReport":Z
    .local v15, "reportPkg":Ljava/lang/String;
    :goto_97
    if-ge v8, v14, :cond_c8

    aget-object v3, v13, v8

    .line 1490
    .local v3, "audioPkg":Ljava/lang/String;
    if-eqz v3, :cond_be

    .line 1494
    if-eqz v11, :cond_b7

    .line 1495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .local v17, "sourceUid":I
    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .end local v15  # "reportPkg":Ljava/lang/String;
    .local v2, "reportPkg":Ljava/lang/String;
    goto :goto_c0

    .line 1497
    .end local v17  # "sourceUid":I
    .local v2, "sourceUid":I
    .restart local v15  # "reportPkg":Ljava/lang/String;
    :cond_b7
    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .restart local v17  # "sourceUid":I
    const/4 v2, 0x1

    .line 1498
    .end local v11  # "isReport":Z
    .local v2, "isReport":Z
    move-object v6, v3

    move v11, v2

    move-object v15, v6

    .end local v15  # "reportPkg":Ljava/lang/String;
    .local v6, "reportPkg":Ljava/lang/String;
    goto :goto_c0

    .line 1490
    .end local v6  # "reportPkg":Ljava/lang/String;
    .end local v17  # "sourceUid":I
    .local v2, "sourceUid":I
    .restart local v11  # "isReport":Z
    .restart local v15  # "reportPkg":Ljava/lang/String;
    :cond_be
    move/from16 v17, v2

    .line 1489
    .end local v2  # "sourceUid":I
    .end local v3  # "audioPkg":Ljava/lang/String;
    .restart local v17  # "sourceUid":I
    :goto_c0
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    const/16 v3, 0x2710

    const/4 v6, 0x0

    goto :goto_97

    .end local v17  # "sourceUid":I
    .restart local v2  # "sourceUid":I
    :cond_c8
    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .restart local v17  # "sourceUid":I
    move v8, v11

    move-object v11, v15

    goto :goto_cf

    .line 1488
    .end local v15  # "reportPkg":Ljava/lang/String;
    .end local v17  # "sourceUid":I
    .restart local v2  # "sourceUid":I
    .restart local v8  # "isReport":Z
    .local v11, "reportPkg":Ljava/lang/String;
    :cond_cd
    move/from16 v17, v2

    .line 1487
    .end local v2  # "sourceUid":I
    .end local v12  # "audioMixUid":I
    .restart local v17  # "sourceUid":I
    :goto_cf
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    const/16 v3, 0x2710

    const/4 v6, 0x0

    goto :goto_83

    .line 1504
    .end local v17  # "sourceUid":I
    .restart local v2  # "sourceUid":I
    :cond_d7
    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .restart local v17  # "sourceUid":I
    if-eqz v8, :cond_100

    .line 1505
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/16 v3, 0x67

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v5, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    goto :goto_100

    .line 1468
    .end local v7  # "audioMixPids":[I
    .end local v8  # "isReport":Z
    .end local v11  # "reportPkg":Ljava/lang/String;
    .end local v17  # "sourceUid":I
    .restart local v2  # "sourceUid":I
    :cond_e4
    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .restart local v17  # "sourceUid":I
    goto :goto_100

    .line 1509
    .end local v4  # "size":I
    .end local v17  # "sourceUid":I
    .restart local v2  # "sourceUid":I
    :cond_e7
    move/from16 v17, v2

    .end local v2  # "sourceUid":I
    .restart local v17  # "sourceUid":I
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v3, "AudioIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 1510
    if-nez p7, :cond_f6

    .line 1511
    return-void

    .line 1513
    :cond_f6
    const/4 v2, 0x2

    invoke-virtual/range {p7 .. p7}, Landroid/os/WorkSource;->getUids()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    goto :goto_101

    .line 1509
    :cond_100
    :goto_100
    nop

    .line 1516
    :goto_101
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1437
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    .line 1438
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1439
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1442
    :cond_14
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_18

    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1431
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1434
    :cond_18
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 14
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1519
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_25

    .line 1520
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1521
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1522
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v11, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1528
    :cond_25
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1529
    .local v0, "sourceUid":I
    const/16 v2, 0x2710

    if-lt v0, v2, :cond_2c

    .line 1530
    return-void

    .line 1532
    :cond_2c
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v3, "AudioMix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8e

    .line 1533
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1535
    .local v2, "size":I
    const/4 v4, 0x3

    if-nez v2, :cond_50

    .line 1536
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    .line 1537
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_9d

    .line 1541
    :cond_50
    const/4 v5, 0x1

    if-lt v2, v5, :cond_9d

    .line 1542
    new-array v6, v1, [I

    .line 1543
    .local v6, "audioMixPids":[I
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1544
    .local v8, "pids":[I
    if-nez v8, :cond_6e

    goto :goto_5f

    .line 1545
    :cond_6e
    invoke-direct {p0, v6, v8}, Lcom/android/server/power/PowerManagerService;->concat2Array([I[I)[I

    move-result-object v6

    .line 1546
    .end local v8  # "pids":[I
    goto :goto_5f

    .line 1547
    :cond_73
    array-length v7, v6

    if-gtz v7, :cond_88

    .line 1548
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    .line 1549
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAudioMixMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1554
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/16 v4, 0x68

    const-string v5, "Audio"

    invoke-virtual {v3, v5, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    goto :goto_9d

    .line 1557
    :cond_88
    new-array v1, v1, [I

    invoke-virtual {p0, v5, v1, v6}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    goto :goto_9d

    .line 1564
    .end local v2  # "size":I
    .end local v6  # "audioMixPids":[I
    :cond_8e
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v2, "AudioIn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1565
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/power/PowerManagerService;->informAudioStatusListeners(I[I[I)V

    goto :goto_9e

    .line 1564
    :cond_9d
    :goto_9d
    nop

    .line 1568
    :goto_9e
    return-void
.end method

.method private onUserAttention()V
    .registers 8

    .line 1617
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1618
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

    .line 1621
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1623
    :cond_15
    monitor-exit v0

    .line 1624
    return-void

    .line 1623
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private powerHintInternal(II)V
    .registers 4
    .param p1, "hintId"  # I
    .param p2, "data"  # I

    .line 3584
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    goto :goto_11

    .line 3586
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3587
    return-void

    .line 3592
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSendPowerHint(II)V

    .line 3593
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .registers 10
    .param p1, "eventTime"  # J
    .param p3, "uid"  # I

    .line 1857
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

    .line 1862
    :cond_14
    const-wide/32 v2, 0x20000

    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1864
    :try_start_1d
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_42

    .line 1869
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1870
    nop

    .line 1871
    const/4 v0, 0x1

    return v0

    .line 1869
    :catchall_42
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1859
    :cond_47
    :goto_47
    return v1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "flags"  # I

    .line 1227
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1229
    .local v1, "index":I
    if-gez v1, :cond_b

    .line 1234
    monitor-exit v0

    return-void

    .line 1237
    :cond_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1243
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1a

    .line 1244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1247
    :cond_1a
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1248
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1249
    .end local v1  # "index":I
    .end local v2  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    monitor-exit v0

    .line 1250
    return-void

    .line 1249
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private removeScreenWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 4
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeScreenWakeLockLocked wakeLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1292
    :cond_28
    return-void
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 6
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"  # I

    .line 1272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1273
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1274
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1275
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_1e

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1e

    .line 1277
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1279
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1282
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1283
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1284
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1422
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 1424
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    .line 1426
    :cond_20
    return-void
.end method

.method private restoreWakeLockDisabledInternal()V
    .registers 8

    .line 5538
    const/4 v0, 0x0

    .line 5539
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5541
    .local v1, "numWakeLocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4a

    .line 5542
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5544
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_47

    .line 5546
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_47

    .line 5547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreWakeLockDisabledInternal: uid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PowerManagerService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 5549
    const/4 v0, 0x1

    .line 5550
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_44

    .line 5552
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_47

    .line 5554
    :cond_44
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 5541
    .end local v4  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5559
    .end local v2  # "i":I
    :cond_4a
    if-eqz v0, :cond_54

    .line 5560
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5561
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5563
    :cond_54
    return-void
.end method

.method private schedulePreDimAtTime(J)V
    .registers 7
    .param p1, "timeMs"  # J

    .line 5637
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPreDimTimeout:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1f

    .line 5638
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 5639
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mPreDimTimeout:J

    .line 5640
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5641
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5642
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mPreDimTimeout:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5644
    .end local v0  # "msg":Landroid/os/Message;
    :cond_1f
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 4

    .line 2587
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_16

    .line 2588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2589
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2590
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2591
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2593
    .end local v1  # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .registers 5
    .param p1, "timeMs"  # J

    .line 2434
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2435
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2436
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2437
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 7
    .param p1, "on"  # Z
    .param p2, "color"  # I

    .line 3464
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3465
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_9

    .line 3466
    monitor-exit v0

    return-void

    .line 3468
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 3469
    .local v1, "light":Lcom/android/server/lights/Light;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 3472
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x3

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3473
    return-void

    .line 3469
    .end local v1  # "light":Lcom/android/server/lights/Light;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .registers 4
    .param p1, "on"  # Z

    .line 3476
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3477
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 3478
    monitor-exit v0

    .line 3479
    return-void

    .line 3478
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5
    .param p1, "screenState"  # I
    .param p2, "screenBrightness"  # I

    .line 3556
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3557
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_b

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_18

    .line 3559
    :cond_b
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 3560
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 3561
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3562
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3564
    :cond_18
    monitor-exit v0

    .line 3565
    return-void

    .line 3564
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .registers 4
    .param p1, "keepState"  # Z

    .line 3568
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3569
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_12

    .line 3570
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 3571
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3572
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3574
    :cond_12
    monitor-exit v0

    .line 3575
    return-void

    .line 3574
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 3089
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_31

    .line 3093
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3094
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

    .line 3096
    :try_start_23
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 3098
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3099
    goto :goto_31

    .line 3098
    :catchall_2c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 3101
    :cond_31
    :goto_31
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 3104
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_31

    .line 3108
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3109
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

    .line 3111
    :try_start_23
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 3113
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3114
    goto :goto_31

    .line 3113
    :catchall_2c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 3116
    :cond_31
    :goto_31
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 4
    .param p1, "enabled"  # Z

    .line 3125
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3129
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_a

    .line 3130
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3133
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    .line 3135
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3136
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 4
    .param p1, "brightness"  # I

    .line 3526
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3527
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v1, p1, :cond_12

    .line 3528
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3529
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3530
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3532
    :cond_12
    monitor-exit v0

    .line 3533
    return-void

    .line 3532
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private setScreenWakeLockDisabledForPackageNameInternal(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "disable"  # Z

    .line 5580
    const/4 v0, 0x0

    .line 5581
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5583
    .local v1, "numWakeLocks":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenWakeLockDisabledForPackageNameInternal: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " disable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v1, :cond_8a

    .line 5586
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5588
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne p2, v5, :cond_87

    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 5589
    const-string v5, "find wakelock for this packageName"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 5591
    .local v5, "wakeLockFlag":I
    const/4 v6, 0x6

    if-eq v5, v6, :cond_5b

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5b

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_87

    .line 5592
    :cond_5b
    iget-boolean v6, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v6, p3, :cond_87

    .line 5593
    iput-boolean p3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 5594
    const/4 v0, 0x1

    .line 5595
    iget-boolean v6, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v6, :cond_77

    .line 5597
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 5598
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5599
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_87

    .line 5602
    :cond_77
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 5603
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisabledWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5604
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 5585
    .end local v4  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v5  # "wakeLockFlag":I
    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 5612
    .end local v2  # "i":I
    :cond_8a
    if-eqz v0, :cond_95

    .line 5613
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5614
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5616
    :cond_95
    return-void
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 6
    .param p1, "timeoutMillis"  # J

    .line 3544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3545
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_17

    .line 3546
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3547
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 3548
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3549
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3551
    :cond_17
    monitor-exit v0

    .line 3552
    return-void

    .line 3551
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    .line 3536
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3537
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 3538
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3539
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3540
    monitor-exit v0

    .line 3541
    return-void

    .line 3540
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private setWakeLockDisabledForUidInternal(IZ)V
    .registers 11
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 5485
    const/4 v0, 0x0

    .line 5486
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5488
    .local v1, "numWakeLocks":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWakeLockDisabledForUidInternal: uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " disable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    const/4 v4, 0x1

    if-ge v2, v1, :cond_58

    .line 5491
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5493
    .local v5, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne p1, v6, :cond_55

    .line 5494
    const-string v6, "find wakelock for this uid"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    iget v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v4, :cond_55

    .line 5498
    iget-boolean v4, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v4, p2, :cond_55

    .line 5499
    iput-boolean p2, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 5500
    const/4 v0, 0x1

    .line 5501
    iget-boolean v4, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_52

    .line 5503
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_55

    .line 5505
    :cond_52
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 5490
    .end local v5  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 5512
    .end local v2  # "i":I
    :cond_58
    if-eqz v0, :cond_62

    .line 5513
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5514
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5516
    :cond_62
    return-void
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 9
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3424
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_61

    .line 3426
    const/4 v0, 0x0

    .line 3427
    .local v0, "disabled":Z
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 3428
    .local v3, "appid":I
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_5a

    .line 3430
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v5, 0x15

    if-eqz v4, :cond_3a

    .line 3431
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v4, :cond_38

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v4, :cond_36

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_36

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v6, 0xc

    if-le v4, v6, :cond_36

    goto :goto_38

    :cond_36
    move v4, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v4, v2

    :goto_39
    move v0, v4

    .line 3436
    :cond_3a
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_5a

    .line 3439
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 3440
    .local v4, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v6, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-gez v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3441
    invoke-static {v6, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-gez v6, :cond_5a

    iget v6, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v6, v5, :cond_5a

    iget v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v6, 0x6

    if-le v5, v6, :cond_5a

    .line 3445
    const/4 v0, 0x1

    .line 3449
    .end local v4  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_5a
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v4, v0, :cond_61

    .line 3450
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 3451
    return v2

    .line 3454
    .end local v0  # "disabled":Z
    .end local v3  # "appid":I
    :cond_61
    return v1
.end method

.method private shouldBoostScreenBrightness()Z
    .registers 2

    .line 2862
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

    .line 2536
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

    .line 2992
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
    .param p1, "wasPowered"  # Z
    .param p2, "oldPlugType"  # I
    .param p3, "dockedOnWirelessCharger"  # Z

    .line 2078
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2079
    return v1

    .line 2084
    :cond_6
    const/4 v0, 0x4

    if-eqz p1, :cond_10

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_10

    if-ne p2, v0, :cond_10

    .line 2086
    return v1

    .line 2091
    :cond_10
    if-nez p1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v2, v0, :cond_1d

    if-nez p3, :cond_1d

    .line 2094
    return v1

    .line 2098
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 2099
    return v1

    .line 2103
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v0, :cond_30

    .line 2104
    return v1

    .line 2108
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3a

    .line 2109
    return v1

    .line 2113
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .registers 8
    .param p1, "haltMode"  # I
    .param p2, "confirm"  # Z
    .param p3, "reason"  # Ljava/lang/String;
    .param p4, "wait"  # Z

    .line 3158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_11

    .line 3159
    :cond_8
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 3163
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 3170
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdownOrRebootInternal， reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", haltmode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.monkey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    .line 3172
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3173
    if-eq p1, v1, :cond_56

    if-nez p1, :cond_5e

    const-string/jumbo v0, "nopower"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 3174
    :cond_56
    const-string v0, "PowerManagerService"

    const-string v1, "Cannot request to reboot as ro.monkey is true,"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    return-void

    .line 3179
    :cond_5e
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    .line 3195
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 3196
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3197
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3200
    if-eqz p4, :cond_81

    .line 3201
    monitor-enter v0

    .line 3204
    :goto_78
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_7f
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    .line 3206
    :goto_7b
    goto :goto_78

    .line 3208
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v1

    .line 3205
    :catch_7f
    move-exception v1

    goto :goto_7b

    .line 3210
    :cond_81
    return-void

    .line 3165
    .end local v0  # "runnable":Ljava/lang/Runnable;
    .end local v2  # "msg":Landroid/os/Message;
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too early to call shutdown() or reboot()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .registers 12
    .param p1, "dirty"  # I

    .line 2749
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2750
    .local v0, "oldDisplayReady":Z
    and-int/lit16 v1, p1, 0x383f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b8

    .line 2755
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2757
    .local v1, "previousPolicy":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v5

    iput v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2759
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v1, v4, :cond_24

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v5, :cond_24

    .line 2761
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v6, v2}, Lcom/android/server/power/Notifier;->onDimStateChanged(I)V

    goto :goto_31

    .line 2762
    :cond_24
    if-ne v1, v5, :cond_31

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v4, :cond_31

    .line 2764
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v6, v5}, Lcom/android/server/power/Notifier;->onDimStateChanged(I)V

    .line 2772
    :cond_31
    :goto_31
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v6, :cond_3f

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isNightAutoUpdateMode()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 2775
    const/4 v6, 0x0

    .line 2777
    .local v6, "autoBrightness":Z
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .local v7, "screenBrightnessOverride":I
    goto :goto_53

    .line 2779
    .end local v6  # "autoBrightness":Z
    .end local v7  # "screenBrightnessOverride":I
    :cond_3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2780
    const/4 v6, 0x0

    .line 2781
    .restart local v6  # "autoBrightness":Z
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .restart local v7  # "screenBrightnessOverride":I
    goto :goto_53

    .line 2783
    .end local v6  # "autoBrightness":Z
    .end local v7  # "screenBrightnessOverride":I
    :cond_4b
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v6, v2, :cond_51

    move v6, v2

    goto :goto_52

    :cond_51
    move v6, v3

    .line 2785
    .restart local v6  # "autoBrightness":Z
    :goto_52
    const/4 v7, -0x1

    .line 2789
    .restart local v7  # "screenBrightnessOverride":I
    :goto_53
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 2790
    iput-boolean v6, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2791
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v9

    iput-boolean v9, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2792
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v9

    iput-boolean v9, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 2794
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v8}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 2796
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v8, v2, :cond_9d

    .line 2797
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v9, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2798
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_96

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-nez v9, :cond_96

    .line 2800
    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8b

    .line 2801
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v4, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2803
    :cond_8b
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v8, 0x6

    if-ne v4, v8, :cond_96

    .line 2804
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2807
    :cond_96
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_a4

    .line 2810
    :cond_9d
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2811
    const/4 v5, -0x1

    iput v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2814
    :goto_a4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v5, v8}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2816
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2818
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_b8

    .line 2819
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 2835
    .end local v1  # "previousPolicy":I
    .end local v6  # "autoBrightness":Z
    .end local v7  # "screenBrightnessOverride":I
    :cond_b8
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_bf

    if-nez v0, :cond_bf

    goto :goto_c0

    :cond_bf
    move v2, v3

    :goto_c0
    return v2
.end method

.method private updateDreamLocked(IZ)V
    .registers 4
    .param p1, "dirty"  # I
    .param p2, "displayBecameReady"  # Z

    .line 2571
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_6

    if-eqz p2, :cond_d

    .line 2580
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_d

    .line 2581
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2584
    :cond_d
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .registers 16
    .param p1, "dirty"  # I

    .line 2020
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_ad

    .line 2021
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2022
    .local v0, "wasPowered":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2023
    .local v1, "oldPlugType":I
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2024
    .local v2, "oldLevelLow":Z
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2025
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2026
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2027
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2037
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v0, v3, :cond_33

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v1, v3, :cond_a2

    .line 2038
    :cond_33
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2041
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v3

    .line 2049
    .local v3, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2050
    .local v12, "now":J
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2052
    const/4 v7, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.server.power:PLUGGED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e8

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2054
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e8

    .line 2052
    move-object v4, p0

    move-wide v5, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 2056
    :cond_70
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move-object v4, p0

    move-wide v5, v12

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2061
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_a2

    .line 2062
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_97

    invoke-static {v1}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v4

    if-nez v4, :cond_97

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2063
    invoke-static {v4}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2064
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    goto :goto_a2

    .line 2065
    :cond_97
    if-eqz v3, :cond_a2

    .line 2066
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(II)V

    .line 2071
    .end local v3  # "dockedOnWirelessCharger":Z
    .end local v12  # "now":J
    :cond_a2
    :goto_a2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    .line 2073
    .end local v0  # "wasPowered":Z
    .end local v1  # "oldPlugType":I
    .end local v2  # "oldLevelLow":Z
    :cond_ad
    return-void
.end method

.method private updatePowerStateLocked()V
    .registers 9

    .line 1940
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v0, :cond_9

    goto :goto_63

    .line 1943
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1944
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_18
    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1950
    :try_start_21
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 1951
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 1952
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 1957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1958
    .local v2, "now":J
    const/4 v4, 0x0

    move v5, v4

    .line 1960
    .local v5, "dirtyPhase2":I
    :goto_36
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1961
    .local v6, "dirtyPhase1":I
    or-int/2addr v5, v6

    .line 1962
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1964
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 1965
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 1966
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 1967
    nop

    .line 1972
    .end local v6  # "dirtyPhase1":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 1975
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v4

    .line 1978
    .local v4, "displayBecameReady":Z
    invoke-direct {p0, v5, v4}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 1981
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 1986
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5e

    .line 1988
    .end local v2  # "now":J
    .end local v4  # "displayBecameReady":Z
    .end local v5  # "dirtyPhase2":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1989
    nop

    .line 1990
    return-void

    .line 1969
    .restart local v2  # "now":J
    .restart local v5  # "dirtyPhase2":I
    :cond_5d
    goto :goto_36

    .line 1988
    .end local v2  # "now":J
    .end local v5  # "dirtyPhase2":I
    :catchall_5e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 1941
    :cond_63
    :goto_63
    return-void
.end method

.method private updateProfilesLocked(J)V
    .registers 8
    .param p1, "now"  # J

    .line 1996
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1997
    .local v0, "numProfiles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2c

    .line 1998
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1999
    .local v2, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2000
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_29

    .line 2001
    :cond_1b
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v3, :cond_29

    .line 2002
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 2003
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    .line 1997
    .end local v2  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2006
    .end local v1  # "i":I
    :cond_2c
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .registers 11
    .param p1, "dirty"  # I

    .line 2839
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_42

    .line 2840
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_42

    .line 2841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2842
    .local v7, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2843
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_31

    .line 2844
    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 2846
    .local v2, "boostTimeout":J
    cmp-long v0, v2, v7

    if-lez v0, :cond_31

    .line 2847
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2848
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2849
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2850
    return-void

    .line 2853
    .end local v0  # "msg":Landroid/os/Message;
    .end local v2  # "boostTimeout":J
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 2854
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 2855
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2859
    .end local v7  # "now":J
    :cond_42
    return-void
.end method

.method private updateSettingsLocked()V
    .registers 8

    .line 1037
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1039
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 1041
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1039
    const/4 v2, -0x2

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v4

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1043
    nop

    .line 1045
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1043
    const-string/jumbo v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_28

    move v1, v3

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1047
    nop

    .line 1049
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1047
    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_39

    move v1, v3

    goto :goto_3a

    :cond_39
    move v1, v4

    :goto_3a
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1051
    const/16 v1, 0x3a98

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 1054
    const/4 v1, -0x1

    const-string/jumbo v5, "sleep_timeout"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 1057
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1059
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_6d

    move v1, v3

    goto :goto_6e

    :cond_6d
    move v1, v4

    :goto_6e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1061
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1063
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_94

    .line 1064
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_86

    move v1, v3

    goto :goto_87

    :cond_86
    move v1, v4

    .line 1067
    .local v1, "doubleTapWakeEnabled":Z
    :goto_87
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_94

    .line 1068
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1069
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1070
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1069
    invoke-virtual {v5, v3, v6}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 1074
    .end local v1  # "doubleTapWakeEnabled":Z
    :cond_94
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "1"

    goto :goto_a1

    :cond_9f
    const-string v1, "0"

    .line 1075
    .local v1, "retailDemoValue":Ljava/lang/String;
    :goto_a1
    const-string/jumbo v3, "sys.retaildemo.enabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 1076
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_b1
    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1083
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1084
    return-void
.end method

.method private updateStayOnLocked(I)V
    .registers 5
    .param p1, "dirty"  # I

    .line 2121
    and-int/lit16 v0, p1, 0x120

    if-eqz v0, :cond_28

    .line 2122
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2123
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1b

    .line 2124
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2125
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1e

    .line 2127
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2130
    :goto_1e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_28

    .line 2131
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2134
    .end local v0  # "wasStayOn":Z
    :cond_28
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .registers 8

    .line 3001
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 3002
    .local v0, "needWakeLockSuspendBlocker":Z
    :goto_a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v3

    .line 3003
    .local v3, "needDisplaySuspendBlocker":Z
    xor-int/lit8 v4, v3, 0x1

    .line 3004
    .local v4, "autoSuspend":Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v5

    .line 3009
    .local v5, "interactive":Z
    if-nez v4, :cond_1f

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_1f

    .line 3010
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3014
    :cond_1f
    if-eqz v0, :cond_2c

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_2c

    .line 3015
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3016
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3018
    :cond_2c
    if-eqz v3, :cond_39

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_39

    .line 3019
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3020
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3029
    :cond_39
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_46

    .line 3034
    if-nez v5, :cond_43

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_46

    .line 3035
    :cond_43
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3040
    :cond_46
    if-nez v0, :cond_53

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_53

    .line 3041
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3042
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3044
    :cond_53
    if-nez v3, :cond_60

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_60

    .line 3045
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3046
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3050
    :cond_60
    if-eqz v4, :cond_69

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v2, :cond_69

    .line 3051
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3053
    :cond_69
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 23
    .param p1, "now"  # J
    .param p3, "dirty"  # I

    .line 2332
    move-object/from16 v0, p0

    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_115

    .line 2334
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2336
    const-wide/16 v3, 0x0

    .line 2337
    .local v3, "nextTimeout":J
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v2, :cond_1e

    if-eq v1, v7, :cond_1e

    if-ne v1, v6, :cond_1a

    goto :goto_1e

    .line 2421
    :cond_1a
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_115

    .line 2340
    :cond_1e
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()J

    move-result-wide v8

    .line 2341
    .local v8, "sleepTimeout":J
    invoke-direct {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(J)J

    move-result-wide v10

    .line 2342
    .local v10, "screenOffTimeout":J
    invoke-direct {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v12

    .line 2343
    .local v12, "screenDimDuration":J
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2344
    .local v1, "userInactiveOverride":Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v14

    .line 2346
    .local v14, "nextProfileTimeout":J
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2347
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-wide/from16 v17, v3

    .end local v3  # "nextTimeout":J
    .local v17, "nextTimeout":J
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, v6, v2

    if-ltz v2, :cond_52

    .line 2348
    add-long v2, v6, v10

    sub-long v3, v2, v12

    .line 2350
    .end local v17  # "nextTimeout":J
    .restart local v3  # "nextTimeout":J
    cmp-long v2, p1, v3

    if-gez v2, :cond_48

    .line 2351
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_54

    .line 2353
    :cond_48
    add-long v3, v6, v10

    .line 2354
    cmp-long v2, p1, v3

    if-gez v2, :cond_54

    .line 2355
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_54

    .line 2347
    .end local v3  # "nextTimeout":J
    .restart local v17  # "nextTimeout":J
    :cond_52
    move-wide/from16 v3, v17

    .line 2359
    .end local v17  # "nextTimeout":J
    .restart local v3  # "nextTimeout":J
    :cond_54
    :goto_54
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v2, :cond_87

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v17, v3

    .end local v3  # "nextTimeout":J
    .restart local v17  # "nextTimeout":J
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, v5, v2

    if-ltz v2, :cond_89

    .line 2361
    add-long v2, v5, v10

    .line 2362
    .end local v17  # "nextTimeout":J
    .local v2, "nextTimeout":J
    cmp-long v5, p1, v2

    if-gez v5, :cond_84

    .line 2363
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x3

    if-eq v5, v4, :cond_81

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_77

    goto :goto_81

    .line 2366
    :cond_77
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_84

    .line 2367
    iput v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_84

    .line 2365
    :cond_81
    :goto_81
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2372
    :cond_84
    :goto_84
    move-wide/from16 v17, v2

    goto :goto_89

    .line 2359
    .end local v2  # "nextTimeout":J
    .restart local v3  # "nextTimeout":J
    :cond_87
    move-wide/from16 v17, v3

    .line 2372
    .end local v3  # "nextTimeout":J
    .restart local v17  # "nextTimeout":J
    :cond_89
    :goto_89
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v3, 0x0

    if-nez v2, :cond_bb

    .line 2373
    cmp-long v2, v8, v3

    if-ltz v2, :cond_b3

    .line 2374
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2376
    .local v2, "anyUserActivity":J
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v5, v2, v5

    if-ltz v5, :cond_af

    .line 2377
    add-long v5, v2, v8

    .line 2378
    .end local v17  # "nextTimeout":J
    .local v5, "nextTimeout":J
    cmp-long v16, p1, v5

    if-gez v16, :cond_ab

    .line 2379
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_ac

    .line 2378
    :cond_ab
    const/4 v7, 0x4

    .line 2382
    .end local v2  # "anyUserActivity":J
    :goto_ac
    move-wide/from16 v17, v5

    goto :goto_b0

    .line 2376
    .end local v5  # "nextTimeout":J
    .restart local v2  # "anyUserActivity":J
    .restart local v17  # "nextTimeout":J
    :cond_af
    const/4 v7, 0x4

    .line 2382
    .end local v2  # "anyUserActivity":J
    :goto_b0
    move-wide/from16 v2, v17

    goto :goto_be

    .line 2383
    :cond_b3
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2384
    const-wide/16 v17, -0x1

    move-wide/from16 v2, v17

    goto :goto_be

    .line 2372
    :cond_bb
    const/4 v7, 0x4

    move-wide/from16 v2, v17

    .line 2388
    .end local v17  # "nextTimeout":J
    .local v2, "nextTimeout":J
    :goto_be
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v5, v7, :cond_db

    if-eqz v1, :cond_db

    .line 2389
    const/4 v4, 0x3

    and-int/2addr v4, v5

    if-eqz v4, :cond_d6

    .line 2392
    cmp-long v4, v2, p1

    if-ltz v4, :cond_d6

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    const-wide/16 v17, -0x1

    cmp-long v4, v4, v17

    if-nez v4, :cond_d6

    .line 2394
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2397
    :cond_d6
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2398
    const-wide/16 v2, -0x1

    .line 2401
    :cond_db
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_ed

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_ed

    .line 2403
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(J)J

    move-result-wide v2

    .line 2406
    :cond_ed
    const-wide/16 v4, 0x0

    cmp-long v6, v14, v4

    if-lez v6, :cond_f7

    .line 2407
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2410
    :cond_f7
    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v6, :cond_115

    cmp-long v4, v2, v4

    if-ltz v4, :cond_115

    .line 2411
    invoke-direct {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    .line 2413
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_115

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_115

    .line 2416
    const-wide/16 v4, 0x898

    sub-long v4, v2, v4

    invoke-direct {v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->schedulePreDimAtTime(J)V

    .line 2431
    .end local v1  # "userInactiveOverride":Z
    .end local v2  # "nextTimeout":J
    .end local v8  # "sleepTimeout":J
    .end local v10  # "screenOffTimeout":J
    .end local v12  # "screenDimDuration":J
    .end local v14  # "nextProfileTimeout":J
    :cond_115
    :goto_115
    return-void
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .registers 8

    .line 3400
    const/4 v0, 0x0

    .line 3401
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3402
    .local v1, "numWakeLocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x1

    if-ge v2, v1, :cond_30

    .line 3403
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3404
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_2d

    .line 3406
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3407
    const/4 v0, 0x1

    .line 3408
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_2a

    .line 3410
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2d

    .line 3412
    :cond_2a
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3402
    .end local v4  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3417
    .end local v2  # "i":I
    :cond_30
    if-eqz v0, :cond_3a

    .line 3418
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3419
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3421
    :cond_3a
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 10
    .param p1, "dirty"  # I

    .line 2144
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_8e

    .line 2145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2147
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProxyWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2149
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2150
    .local v1, "numProfiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_22

    .line 2151
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2150
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2154
    .end local v2  # "i":I
    :cond_22
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2155
    .local v0, "numWakeLocks":I
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_29
    if-ge v2, v0, :cond_70

    .line 2156
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2163
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/power/PowerInjector;->isNeedDisable(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2164
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v4

    if-nez v4, :cond_49

    .line 2165
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProxyWakeLockList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    goto :goto_6d

    .line 2169
    :cond_49
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v4

    .line 2170
    .local v4, "wakeLockFlags":I
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2171
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_53
    if-ge v5, v1, :cond_6d

    .line 2172
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2173
    .local v6, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v3, v7}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 2174
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v7, v4

    iput v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2171
    .end local v6  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 2155
    .end local v3  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4  # "wakeLockFlags":I
    .end local v5  # "j":I
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2179
    .end local v2  # "i":I
    :cond_70
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2180
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_79
    if-ge v2, v1, :cond_8e

    .line 2181
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2182
    .local v3, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2180
    .end local v3  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 2191
    .end local v0  # "numWakeLocks":I
    .end local v1  # "numProfiles":I
    .end local v2  # "i":I
    :cond_8e
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 19
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "ws"  # Landroid/os/WorkSource;
    .param p3, "historyTag"  # Ljava/lang/String;
    .param p4, "callingUid"  # I

    .line 1307
    move-object v10, p0

    move-object/from16 v11, p2

    iget-object v12, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1308
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_67

    .line 1309
    .local v0, "index":I
    if-ltz v0, :cond_3f

    .line 1318
    :try_start_c
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v13, v1

    .line 1324
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v13, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1325
    iget v3, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_3a

    .line 1328
    move-object/from16 v1, p3

    :try_start_30
    iput-object v1, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1329
    invoke-virtual {v13, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    goto :goto_38

    .line 1324
    :cond_36
    move-object/from16 v1, p3

    .line 1331
    .end local v0  # "index":I
    .end local v13  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_38
    monitor-exit v12

    .line 1332
    return-void

    .line 1331
    :catchall_3a
    move-exception v0

    move-object/from16 v1, p3

    :goto_3d
    move-object v4, p1

    goto :goto_6b

    .line 1314
    .restart local v0  # "index":I
    :cond_3f
    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wake lock not active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_65

    move-object v4, p1

    :try_start_4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_63

    move/from16 v5, p4

    :try_start_58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1  # "lock":Landroid/os/IBinder;
    .end local p2  # "ws":Landroid/os/WorkSource;
    .end local p3  # "historyTag":Ljava/lang/String;
    .end local p4  # "callingUid":I
    throw v2

    .line 1331
    .end local v0  # "index":I
    .restart local p0  # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1  # "lock":Landroid/os/IBinder;
    .restart local p2  # "ws":Landroid/os/WorkSource;
    .restart local p3  # "historyTag":Ljava/lang/String;
    .restart local p4  # "callingUid":I
    :catchall_63
    move-exception v0

    goto :goto_6b

    :catchall_65
    move-exception v0

    goto :goto_3d

    :catchall_67
    move-exception v0

    move-object v4, p1

    move-object/from16 v1, p3

    :goto_6b
    move/from16 v5, p4

    :goto_6d
    monitor-exit v12
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_6f

    throw v0

    :catchall_6f
    move-exception v0

    goto :goto_6d
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 12
    .param p1, "dirty"  # I

    .line 2511
    const/4 v0, 0x0

    .line 2512
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_2b

    .line 2515
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2520
    .local v8, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2521
    const/16 v1, 0x3e8

    invoke-direct {p0, v8, v9, v1}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    goto :goto_2b

    .line 2523
    :cond_21
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    .line 2528
    .end local v8  # "time":J
    :cond_2b
    :goto_2b
    return v0
.end method

.method private userActivityFromNative(JII)V
    .registers 11
    .param p1, "eventTime"  # J
    .param p3, "event"  # I
    .param p4, "flags"  # I

    .line 1605
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1606
    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 8
    .param p1, "eventTime"  # J
    .param p3, "event"  # I
    .param p4, "flags"  # I
    .param p5, "uid"  # I

    .line 1609
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1611
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1613
    :cond_c
    monitor-exit v0

    .line 1614
    return-void

    .line 1613
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 13
    .param p1, "eventTime"  # J
    .param p3, "event"  # I
    .param p4, "flags"  # I
    .param p5, "uid"  # I

    .line 1633
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_a7

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_a7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_17

    goto/16 :goto_a7

    .line 1638
    :cond_17
    const-wide/32 v2, 0x20000

    const-string/jumbo v0, "userActivity"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1640
    :try_start_20
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_2c

    .line 1641
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1642
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1645
    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    .line 1648
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v0, :cond_40

    .line 1649
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 1650
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1653
    :cond_40
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_9d

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9d

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_4e

    goto :goto_9d

    .line 1659
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    .line 1661
    and-int/lit8 v0, p4, 0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_77

    .line 1662
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_98

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_98

    .line 1664
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1665
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1666
    if-ne p3, v4, :cond_72

    .line 1667
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_72
    .catchall {:try_start_20 .. :try_end_72} :catchall_a2

    .line 1670
    :cond_72
    nop

    .line 1686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1670
    return v4

    .line 1673
    :cond_77
    :try_start_77
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_98

    .line 1675
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1677
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1678
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1679
    if-ne p3, v4, :cond_93

    .line 1680
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_a2

    .line 1682
    :cond_93
    nop

    .line 1686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1682
    return v4

    .line 1686
    :cond_98
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1687
    nop

    .line 1688
    return v1

    .line 1656
    :cond_9d
    :goto_9d
    nop

    .line 1686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1656
    return v1

    .line 1686
    :catchall_a2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1635
    :cond_a7
    :goto_a7
    return v1
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .registers 8
    .param p1, "wakeLock"  # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "userId"  # I

    .line 2266
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 2267
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_6
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 2268
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    .line 2269
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_1b

    .line 2270
    return v1

    .line 2267
    .end local v2  # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2274
    .end local v0  # "k":I
    :cond_1e
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 2275
    .local v0, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_41

    .line 2276
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 2277
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .line 2278
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_3e

    .line 2279
    return v1

    .line 2276
    .end local v3  # "uid":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 2284
    .end local v0  # "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    .end local v2  # "k":I
    :cond_41
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    return v1
.end method

.method private wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V
    .registers 11
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "details"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "opUid"  # I

    .line 1700
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1702
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_2c

    const-string v1, "android.policy:POWER"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "android.policy:KEY"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1703
    :cond_17
    const-string v1, "PowerManagerService"

    const-string v2, "Proximity positive sleep and force wakeup by power or other keys"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1705
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1706
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1707
    monitor-exit v0

    return-void

    .line 1710
    :cond_2c
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1711
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1713
    :cond_35
    monitor-exit v0

    .line 1714
    return-void

    .line 1713
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z
    .registers 24
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "details"  # Ljava/lang/String;
    .param p5, "reasonUid"  # I
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "opUid"  # I

    .line 1722
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    iget-wide v0, v7, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v8, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_a8

    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_a8

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_a8

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_a8

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-eqz v0, :cond_24

    move-object/from16 v15, p4

    move/from16 v14, p5

    goto/16 :goto_ac

    .line 1727
    :cond_24
    const-wide/32 v12, 0x20000

    const-string v0, "Screen turning on"

    invoke-static {v12, v13, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1729
    const-string/jumbo v0, "wakeUp"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1731
    :try_start_32
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1732
    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_9f

    move/from16 v14, p5

    :try_start_4e
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_9b

    move-object/from16 v15, p4

    :try_start_64
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1731
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iput-wide v8, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1739
    iput v10, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    .line 1740
    invoke-virtual {v7, v11, v10, v8, v9}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 1742
    iget-object v1, v7, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 1743
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_94
    .catchall {:try_start_64 .. :try_end_94} :catchall_99

    .line 1746
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1747
    nop

    .line 1748
    return v11

    .line 1746
    :catchall_99
    move-exception v0

    goto :goto_a4

    :catchall_9b
    move-exception v0

    move-object/from16 v15, p4

    goto :goto_a4

    :catchall_9f
    move-exception v0

    move-object/from16 v15, p4

    move/from16 v14, p5

    :goto_a4
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1722
    :cond_a8
    move-object/from16 v15, p4

    move/from16 v14, p5

    .line 1724
    :goto_ac
    return v1
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .registers 16

    .line 2288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2289
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2290
    .local v1, "now":J
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 2291
    const-wide/32 v3, 0xea60

    sub-long v5, v1, v3

    .line 2292
    .local v5, "when":J
    const-wide v7, 0x7fffffffffffffffL

    .line 2293
    .local v7, "nextCheckTime":J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2294
    .local v9, "numWakeLocks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a
    if-ge v10, v9, :cond_4a

    .line 2295
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2296
    .local v11, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_47

    .line 2298
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_47

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_47

    .line 2299
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_3f

    .line 2301
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_47

    .line 2304
    :cond_3f
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v12, v3

    .line 2305
    .local v12, "checkTime":J
    cmp-long v14, v12, v7

    if-gez v14, :cond_47

    .line 2306
    move-wide v7, v12

    .line 2294
    .end local v11  # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12  # "checkTime":J
    :cond_47
    :goto_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 2312
    .end local v10  # "i":I
    :cond_4a
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2313
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2314
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v7, v10

    if-eqz v10, :cond_63

    .line 2315
    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2316
    invoke-direct {p0, v7, v8}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_65

    .line 2318
    :cond_63
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2320
    .end local v1  # "now":J
    .end local v5  # "when":J
    .end local v7  # "nextCheckTime":J
    .end local v9  # "numWakeLocks":I
    :goto_65
    monitor-exit v0

    .line 2321
    return-void

    .line 2320
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v1
.end method

.method finishUidChangesInternal()V
    .registers 4

    .line 3317
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3318
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3319
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_f

    .line 3320
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3321
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 3323
    :cond_f
    monitor-exit v0

    .line 3324
    return-void

    .line 3323
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

    .line 5271
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object v0
.end method

.method getDesiredScreenPolicyLocked()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2874
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v2, :cond_a

    goto :goto_36

    .line 2878
    :cond_a
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a

    .line 2879
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    .line 2880
    return v2

    .line 2882
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    if-eqz v0, :cond_1a

    .line 2883
    return v1

    .line 2892
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_20

    .line 2893
    const/4 v0, 0x4

    return v0

    .line 2896
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

    .line 2903
    :cond_34
    return v1

    .line 2900
    :cond_35
    :goto_35
    return v3

    .line 2875
    :cond_36
    :goto_36
    return v1
.end method

.method getLastShutdownReasonInternal(Ljava/lang/String;)I
    .registers 11
    .param p1, "lastRebootReasonProperty"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5282
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5283
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5284
    return v1

    .line 5286
    :cond_8
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_6c

    :cond_15
    goto :goto_57

    :sswitch_16
    const-string/jumbo v3, "shutdown,thermal,battery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v4

    goto :goto_57

    :sswitch_21
    const-string/jumbo v3, "shutdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v1

    goto :goto_57

    :sswitch_2c
    const-string/jumbo v3, "shutdown,userrequested"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v7

    goto :goto_57

    :sswitch_37
    const-string/jumbo v3, "reboot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v8

    goto :goto_57

    :sswitch_42
    const-string/jumbo v3, "shutdown,battery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v5

    goto :goto_57

    :sswitch_4d
    const-string/jumbo v3, "shutdown,thermal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v6

    :goto_57
    if-eqz v2, :cond_6a

    if-eq v2, v8, :cond_69

    if-eq v2, v7, :cond_68

    if-eq v2, v6, :cond_67

    if-eq v2, v5, :cond_66

    if-eq v2, v4, :cond_64

    .line 5300
    return v1

    .line 5298
    :cond_64
    const/4 v1, 0x6

    return v1

    .line 5296
    :cond_66
    return v4

    .line 5294
    :cond_67
    return v5

    .line 5292
    :cond_68
    return v6

    .line 5290
    :cond_69
    return v7

    .line 5288
    :cond_6a
    return v8

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

    .line 5276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object v0
.end method

.method getWakefulness()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1889
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method informAudioStatusListeners(I[I[I)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "uids"  # [I
    .param p3, "pids"  # [I

    .line 5265
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAudioState(I[I[I)V

    .line 5266
    return-void
.end method

.method isDeviceIdleModeInternal()Z
    .registers 3

    .line 3140
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3141
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3142
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .registers 3

    .line 3146
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3147
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3148
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 3698
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3699
    :try_start_3
    monitor-exit v0

    .line 3700
    return-void

    .line 3699
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"  # I

    .line 850
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    const/16 v1, 0x258

    if-ne p1, v1, :cond_d

    .line 852
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_2e

    .line 864
    :catchall_b
    move-exception v1

    goto :goto_30

    .line 854
    :cond_d
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2e

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 856
    .local v3, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 857
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 859
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    .line 860
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 862
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 864
    .end local v3  # "now":J
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 865
    return-void

    .line 864
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_b

    throw v1
.end method

.method public onStart()V
    .registers 3

    .line 841
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 842
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 844
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 845
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 846
    return-void
.end method

.method onUserActivity()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3605
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 3606
    monitor-exit v0

    .line 3607
    return-void

    .line 3606
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

    .line 996
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 998
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x11100a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1000
    const v1, 0x11100a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1002
    const v1, 0x11100e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1004
    const v1, 0x111001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1006
    const v1, 0x11100db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1008
    const v1, 0x1110062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1010
    const v1, 0x1110060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1012
    const v1, 0x111005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1014
    const v1, 0x111005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1016
    const v1, 0x1110061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1018
    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1020
    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1022
    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1024
    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 1026
    const v1, 0x10e007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    .line 1028
    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    .line 1030
    const/4 v1, 0x1

    const v2, 0x1130002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1032
    const v1, 0x11100cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1034
    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .registers 4
    .param p1, "enabled"  # Z

    .line 3267
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3268
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-ne v1, p1, :cond_a

    .line 3269
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3271
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 3272
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3273
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3274
    if-eqz p1, :cond_19

    .line 3275
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_1f

    .line 3277
    :cond_19
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    .line 3279
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 3273
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"  # [I

    .line 3302
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3303
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3304
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_c

    .line 3305
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3307
    :cond_c
    monitor-exit v0

    .line 3308
    return-void

    .line 3307
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"  # [I

    .line 3293
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3294
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 3295
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_c

    .line 3296
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3298
    :cond_c
    monitor-exit v0

    .line 3299
    return-void

    .line 3298
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .registers 4
    .param p1, "enabled"  # Z

    .line 3283
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3284
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eq v1, p1, :cond_c

    .line 3285
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 3286
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3288
    :cond_c
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3289
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "timeMs"  # J

    .line 3241
    if-gez p1, :cond_19

    .line 3242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    return-void

    .line 3245
    :cond_19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3247
    if-nez p1, :cond_23

    .line 3248
    :try_start_1e
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_56

    .line 3263
    :catchall_21
    move-exception v1

    goto :goto_61

    .line 3249
    :cond_23
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_51

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_33

    goto :goto_51

    .line 3252
    :cond_33
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3253
    .local v1, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v1, :cond_40

    .line 3254
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_56

    .line 3256
    :cond_40
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3258
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_56

    .line 3250
    .end local v1  # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3261
    :goto_56
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3262
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3263
    monitor-exit v0

    .line 3264
    return-void

    .line 3263
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_21

    throw v1
.end method

.method setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "disable"  # Z

    .line 5567
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5569
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setScreenWakeLockDisabledForPackageNameInternal(Ljava/lang/String;IZ)V

    .line 5570
    monitor-exit v0

    .line 5571
    return-void

    .line 5570
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method setStayOnSettingInternal(I)V
    .registers 4
    .param p1, "val"  # I

    .line 3236
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3238
    return-void
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 2
    .param p1, "usageStatsManager"  # Landroid/app/usage/UsageStatsManagerInternal;

    .line 5625
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 5626
    return-void
.end method

.method setVrModeEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3579
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    .line 3580
    return-void
.end method

.method setWakeLockDisabledForUidInternalForFreeze(IZ)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 5573
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5574
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledForUidInternal(IZ)V

    .line 5575
    monitor-exit v0

    .line 5576
    return-void

    .line 5575
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method setWakefulnessLocked(IIJ)V
    .registers 6
    .param p1, "wakefulness"  # I
    .param p2, "reason"  # I
    .param p3, "eventTime"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1876
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_1b

    .line 1877
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1879
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1880
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_16

    .line 1881
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    .line 1883
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    .line 1885
    :cond_1b
    return-void
.end method

.method startUidChangesInternal()V
    .registers 3

    .line 3311
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3312
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3313
    monitor-exit v0

    .line 3314
    return-void

    .line 3313
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .registers 12
    .param p1, "appOps"  # Lcom/android/internal/app/IAppOpsService;

    .line 868
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 870
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 871
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 872
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 873
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 874
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 875
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 877
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 878
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 879
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 880
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 882
    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 886
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 887
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v8, "PowerManagerService.Broadcasts"

    .line 888
    invoke-virtual {v3, p0, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 887
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/power/Notifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 891
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v5, "PowerManagerService.WirelessChargerDetector"

    .line 892
    invoke-virtual {v4, p0, v5}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 891
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 895
    new-instance v3, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 897
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 898
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 901
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_b8
    .catchall {:try_start_4 .. :try_end_b8} :catchall_212

    .line 905
    const/4 v3, 0x0

    :try_start_b9
    new-instance v4, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    .line 906
    .local v4, "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const-string v6, "PowerManagerService"

    invoke-interface {v5, v4, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c7} :catch_c8
    .catchall {:try_start_b9 .. :try_end_c7} :catchall_212

    .line 909
    .end local v4  # "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    goto :goto_c9

    .line 907
    :catch_c8
    move-exception v4

    .line 912
    :goto_c9
    :try_start_c9
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 913
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 914
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 915
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 916
    .end local v1  # "pm":Landroid/os/PowerManager;
    .end local v2  # "sensorManager":Landroid/hardware/SensorManager;
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_c9 .. :try_end_d9} :catchall_212

    .line 918
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 919
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 921
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 922
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    .line 926
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v1}, Lcom/android/server/power/AttentionDetector;->registerAdaptiveSleepObserver()V

    .line 929
    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 932
    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 935
    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 938
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 941
    const-string/jumbo v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 944
    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 947
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 950
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 953
    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 956
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 959
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 962
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 965
    const-string/jumbo v1, "vrmanager"

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 966
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_1ac

    .line 968
    :try_start_18f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_18f .. :try_end_194} :catch_195

    .line 971
    goto :goto_1ac

    .line 969
    :catch_195
    move-exception v2

    .line 970
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PowerManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_1ac
    :goto_1ac
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 976
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 978
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 980
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 981
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 985
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 986
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 989
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v4

    .line 990
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 992
    return-void

    .line 916
    .end local v0  # "resolver":Landroid/content/ContentResolver;
    .end local v1  # "vrManager":Landroid/service/vr/IVrManager;
    .end local v2  # "filter":Landroid/content/IntentFilter;
    :catchall_212
    move-exception v1

    :try_start_213
    monitor-exit v0
    :try_end_214
    .catchall {:try_start_213 .. :try_end_214} :catchall_212

    throw v1
.end method

.method uidActiveInternal(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 3373
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3374
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3375
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_1c

    .line 3376
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3377
    const/16 v2, 0x14

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3378
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3380
    :cond_1c
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3381
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_26

    .line 3382
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3384
    .end local v1  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_26
    monitor-exit v0

    .line 3385
    return-void

    .line 3384
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method uidGoneInternal(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 3358
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3359
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3360
    .local v1, "index":I
    if-ltz v1, :cond_2a

    .line 3361
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3362
    .local v2, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const/16 v3, 0x15

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3363
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3364
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3365
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_2a

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v3, :cond_2a

    .line 3366
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3369
    .end local v1  # "index":I
    .end local v2  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_2a
    monitor-exit v0

    .line 3370
    return-void

    .line 3369
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method uidIdleInternal(I)V
    .registers 5
    .param p1, "uid"  # I

    .line 3388
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3389
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3390
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-eqz v1, :cond_17

    .line 3391
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3392
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_17

    .line 3393
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3396
    .end local v1  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_17
    monitor-exit v0

    .line 3397
    return-void

    .line 3396
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .registers 4
    .param p1, "displayPowerRequest"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3229
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 3230
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 3231
    .local v0, "state":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3232
    iget v1, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 3233
    return-void
.end method

.method updateUidProcStateInternal(II)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "procState"  # I

    .line 3335
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3336
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3337
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_18

    .line 3338
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3339
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3341
    :cond_18
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc

    if-gt v2, v5, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    .line 3343
    .local v2, "oldShouldAllow":Z
    :goto_23
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3344
    iget v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v6, :cond_3e

    .line 3345
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_31

    .line 3346
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_3e

    .line 3347
    :cond_31
    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_3e

    if-gt p2, v5, :cond_38

    goto :goto_39

    :cond_38
    move v3, v4

    :goto_39
    if-eq v2, v3, :cond_3e

    .line 3351
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3354
    .end local v1  # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v2  # "oldShouldAllow":Z
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 3355
    return-void

    .line 3354
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method wasDeviceIdleForInternal(J)Z
    .registers 8
    .param p1, "ms"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3597
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3598
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return v1

    .line 3599
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
