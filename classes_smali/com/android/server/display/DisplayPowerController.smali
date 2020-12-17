.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$GestureCallback;,
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field public static HBM_LUX_THRESHOLD:I = 0x0

.field public static LIGHT_SENSOR_VALUE_DEBOUNCE_DELAY:I = 0x0

.field private static final MSG_AOD_DISMISS_COLOR_FADE_DELAY:I = 0x65

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_LIGHT_AND_PROXIMITY_FOD_UP:I = 0x66

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final POLICY_DIM_COLOR_FADE_DOWN_ANIMATION_DURATION_MILLIS:I = 0x12c

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x96

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z

.field public static mDeviceColorType:Ljava/lang/String;


# instance fields
.field private AUTO_BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

.field private AUTO_BRIGHTNESS_RATE_FLICKER:I

.field private final AUTO_BRIGHTNESS_RATE_WARM_UP:I

.field private BRIGHTEN_AVERAGE_DURATION_MILLIS:I

.field private DARKEN_AVERAGE_DURATION_MILLIS:I

.field private PANEL_BRIGHTNESS_FLICKER_THRESHOLD:I

.field private final PANEL_DIM_TURNING_ON_TIME:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedDimmingColorFade:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessEnabled:Z

.field private mAutomaticBrightnessModeChangeTime:J

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDeepDarkBrightnessThreshold:F

.field private mDimColorFadeCoolDownThreshold:F

.field private mDimColorFadeOn:Landroid/animation/ObjectAnimator;

.field private mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

.field private mDimTurningOnTime:J

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozing:Z

.field private mEnableFODLightAndLsProximity:Z

.field private mFingerprintUnlockEnabled:Z

.field private mGestureCallback:Lcom/android/server/display/DisplayPowerController$GestureCallback;

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mLastUserSetScreenBrightness:I

.field private final mLock:Ljava/lang/Object;

.field private mOemDetectSensor:Landroid/hardware/Sensor;

.field private final mOemDetectSensorListener:Landroid/hardware/SensorEventListener;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateProximityToPolicy:I

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessDimRate:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    nop

    .line 2572
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/DisplayPowerController;->LIGHT_SENSOR_VALUE_DEBOUNCE_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .registers 52
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "callbacks"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"  # Landroid/os/Handler;
    .param p4, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p5, "blanker"  # Lcom/android/server/display/DisplayBlanker;

    .line 399
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 276
    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 279
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 280
    const-wide/16 v1, -0x1

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 323
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 324
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 340
    const/4 v3, 0x0

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 749
    new-instance v5, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 765
    new-instance v5, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 1652
    new-instance v5, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1872
    new-instance v5, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1885
    new-instance v5, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1898
    new-instance v5, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2135
    new-instance v5, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2421
    new-instance v5, Lcom/android/server/display/DisplayPowerController$11;

    invoke-direct {v5, v15}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mOemDetectSensorListener:Landroid/hardware/SensorEventListener;

    .line 2554
    const/4 v5, 0x2

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    .line 2558
    iput-boolean v3, v15, Lcom/android/server/display/DisplayPowerController;->mAppliedDimmingColorFade:Z

    .line 2563
    const v5, 0x3f19999a  # 0.6f

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeCoolDownThreshold:F

    .line 2568
    const/16 v5, 0x14

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimRate:I

    .line 2574
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mDimTurningOnTime:J

    .line 2575
    const/16 v5, 0xff

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_WARM_UP:I

    .line 2576
    const/16 v5, 0x28

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 2577
    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_FLICKER:I

    .line 2578
    const/16 v5, 0x1f4

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->PANEL_DIM_TURNING_ON_TIME:I

    .line 2579
    iput-boolean v3, v15, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessEnabled:Z

    .line 2580
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessModeChangeTime:J

    .line 2581
    const/16 v1, 0x3c

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->PANEL_BRIGHTNESS_FLICKER_THRESHOLD:I

    .line 2582
    const/16 v1, 0x5dc

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTEN_AVERAGE_DURATION_MILLIS:I

    .line 2583
    const/16 v1, 0x1770

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->DARKEN_AVERAGE_DURATION_MILLIS:I

    .line 2584
    const v1, 0x400001a3  # 2.0001f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    .line 2588
    new-instance v1, Lcom/android/server/display/DisplayPowerController$GestureCallback;

    invoke-direct {v1, v15, v4}, Lcom/android/server/display/DisplayPowerController$GestureCallback;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mGestureCallback:Lcom/android/server/display/DisplayPowerController$GestureCallback;

    .line 2589
    iput-boolean v3, v15, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    .line 400
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 401
    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v1, v13, v4}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 402
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 403
    move-object/from16 v14, p2

    iput-object v14, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 405
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 406
    move-object/from16 v12, p4

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 407
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 408
    move-object/from16 v11, p5

    iput-object v11, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 409
    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 412
    .local v10, "resources":Landroid/content/res/Resources;
    const v1, 0x10e00a8

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v7

    .line 415
    .local v7, "screenBrightnessSettingMinimum":I
    const v1, 0x10e00a2

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 418
    const v1, 0x10e00a1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 421
    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 422
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 424
    const v1, 0x10e00a7

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 426
    const v1, 0x10e00a6

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    .line 429
    const v1, 0x10e00a5

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    .line 431
    const v1, 0x10e00a4

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    .line 433
    const v1, 0x10e00a3

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    .line 436
    const v1, 0x1110027

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 439
    const v1, 0x111000e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 442
    const v1, 0x10e0020

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 444
    const v1, 0x10e0021

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 446
    const v1, 0x11100c1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->readFlymeConfigurations()V

    .line 453
    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const-string v5, "DisplayPowerController"

    const/4 v4, 0x1

    if-eqz v1, :cond_2bc

    .line 454
    const v1, 0x1130006

    invoke-virtual {v10, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v24

    .line 458
    .local v24, "dozeScaleFactor":F
    const v1, 0x107000c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 460
    .local v2, "ambientBrighteningThresholds":[I
    const v1, 0x107000d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 462
    .local v9, "ambientDarkeningThresholds":[I
    const v1, 0x107000e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 464
    .local v8, "ambientThresholdLevels":[I
    new-instance v1, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v1, v2, v9, v8}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v18, v1

    .line 468
    .local v18, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v1, 0x1070058

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 470
    .local v6, "screenBrighteningThresholds":[I
    const v1, 0x107005b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 472
    .local v1, "screenDarkeningThresholds":[I
    const v4, 0x107005c

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 474
    .local v4, "screenThresholdLevels":[I
    new-instance v3, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v3, v6, v1, v4}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v19, v3

    .line 477
    .local v19, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v3, 0x10e0011

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v20, v1

    .end local v1  # "screenDarkeningThresholds":[I
    .local v20, "screenDarkeningThresholds":[I
    int-to-long v0, v3

    .line 479
    .local v0, "brighteningLightDebounce":J
    const v3, 0x10e0012

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v13, v3

    .line 481
    .local v13, "darkeningLightDebounce":J
    const v3, 0x1110022

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 484
    .local v25, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v3, 0x10e0065

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    .line 486
    .local v26, "lightSensorWarmUpTimeConfig":I
    const v3, 0x10e0014

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 488
    .local v3, "lightSensorRate":I
    move-wide/from16 v21, v0

    .end local v0  # "brighteningLightDebounce":J
    .local v21, "brighteningLightDebounce":J
    const v0, 0x10e0013

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 490
    .local v0, "initialLightSensorRate":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f5

    .line 491
    move v0, v3

    move-object/from16 v27, v2

    goto :goto_21d

    .line 492
    :cond_1f5
    if-le v0, v3, :cond_21b

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v2

    .end local v2  # "ambientBrighteningThresholds":[I
    .local v27, "ambientBrighteningThresholds":[I
    const-string v2, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21d

    .line 492
    .end local v27  # "ambientBrighteningThresholds":[I
    .restart local v2  # "ambientBrighteningThresholds":[I
    :cond_21b
    move-object/from16 v27, v2

    .line 497
    .end local v2  # "ambientBrighteningThresholds":[I
    .restart local v27  # "ambientBrighteningThresholds":[I
    :goto_21d
    const v1, 0x10e0015

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 500
    .local v2, "shortTermModelTimeout":I
    const v1, 0x1040169

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "lightSensorType":Ljava/lang/String;
    invoke-direct {v15, v1}, Lcom/android/server/display/DisplayPowerController;->findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v28

    .line 504
    .local v28, "lightSensor":Landroid/hardware/Sensor;
    move-object/from16 v23, v1

    .end local v1  # "lightSensorType":Ljava/lang/String;
    .local v23, "lightSensorType":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 505
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_29b

    .line 507
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v33, v1

    move-object/from16 v29, v20

    move-wide/from16 v30, v21

    move-object/from16 v32, v23

    .line 508
    .end local v20  # "screenDarkeningThresholds":[I
    .end local v21  # "brighteningLightDebounce":J
    .end local v23  # "lightSensorType":Ljava/lang/String;
    .local v29, "screenDarkeningThresholds":[I
    .local v30, "brighteningLightDebounce":J
    .local v32, "lightSensorType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move/from16 v34, v3

    .end local v3  # "lightSensorRate":I
    .local v34, "lightSensorRate":I
    move-object/from16 v3, v17

    move-object/from16 v35, v4

    .end local v4  # "screenThresholdLevels":[I
    .local v35, "screenThresholdLevels":[I
    iget-object v4, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v36, v6

    .end local v6  # "screenBrighteningThresholds":[I
    .local v36, "screenBrighteningThresholds":[I
    move-object v6, v4

    iget v4, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move-object/from16 v37, v8

    .end local v8  # "ambientThresholdLevels":[I
    .local v37, "ambientThresholdLevels":[I
    move v8, v4

    iget v4, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v38, v9

    .end local v9  # "ambientDarkeningThresholds":[I
    .local v38, "ambientDarkeningThresholds":[I
    move v9, v4

    move-object/from16 v39, v5

    int-to-long v4, v2

    move-wide/from16 v20, v4

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    iget v4, v15, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    move/from16 v23, v4

    move/from16 v40, v2

    .end local v2  # "shortTermModelTimeout":I
    .local v40, "shortTermModelTimeout":I
    move-object/from16 v2, p0

    const/16 v41, 0x1

    move-object/from16 v4, p4

    move-object/from16 v42, v39

    move-object/from16 v5, v28

    move/from16 v39, v7

    .end local v7  # "screenBrightnessSettingMinimum":I
    .local v39, "screenBrightnessSettingMinimum":I
    move/from16 v7, v26

    move-object/from16 v43, v10

    .end local v10  # "resources":Landroid/content/res/Resources;
    .local v43, "resources":Landroid/content/res/Resources;
    move/from16 v10, v24

    move/from16 v11, v34

    move v12, v0

    move-wide/from16 v44, v13

    .end local v13  # "darkeningLightDebounce":J
    .local v44, "darkeningLightDebounce":J
    move-wide/from16 v13, v30

    move-wide/from16 v15, v44

    move/from16 v17, v25

    invoke-direct/range {v1 .. v23}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;JLandroid/content/pm/PackageManager;F)V

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 515
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->SetAutomaticBrightnessChangesContext(Landroid/content/Context;)V

    goto :goto_2c5

    .line 518
    .end local v29  # "screenDarkeningThresholds":[I
    .end local v30  # "brighteningLightDebounce":J
    .end local v32  # "lightSensorType":Ljava/lang/String;
    .end local v34  # "lightSensorRate":I
    .end local v35  # "screenThresholdLevels":[I
    .end local v36  # "screenBrighteningThresholds":[I
    .end local v37  # "ambientThresholdLevels":[I
    .end local v38  # "ambientDarkeningThresholds":[I
    .end local v39  # "screenBrightnessSettingMinimum":I
    .end local v40  # "shortTermModelTimeout":I
    .end local v43  # "resources":Landroid/content/res/Resources;
    .end local v44  # "darkeningLightDebounce":J
    .restart local v2  # "shortTermModelTimeout":I
    .restart local v3  # "lightSensorRate":I
    .restart local v4  # "screenThresholdLevels":[I
    .restart local v6  # "screenBrighteningThresholds":[I
    .restart local v7  # "screenBrightnessSettingMinimum":I
    .restart local v8  # "ambientThresholdLevels":[I
    .restart local v9  # "ambientDarkeningThresholds":[I
    .restart local v10  # "resources":Landroid/content/res/Resources;
    .restart local v13  # "darkeningLightDebounce":J
    .restart local v20  # "screenDarkeningThresholds":[I
    .restart local v21  # "brighteningLightDebounce":J
    .restart local v23  # "lightSensorType":Ljava/lang/String;
    :cond_29b
    move/from16 v40, v2

    move/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v42, v5

    move-object/from16 v36, v6

    move/from16 v39, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v43, v10

    move-wide/from16 v44, v13

    move-object v1, v15

    move-object/from16 v29, v20

    move-wide/from16 v30, v21

    move-object/from16 v32, v23

    const/16 v41, 0x1

    .end local v2  # "shortTermModelTimeout":I
    .end local v3  # "lightSensorRate":I
    .end local v4  # "screenThresholdLevels":[I
    .end local v6  # "screenBrighteningThresholds":[I
    .end local v7  # "screenBrightnessSettingMinimum":I
    .end local v8  # "ambientThresholdLevels":[I
    .end local v9  # "ambientDarkeningThresholds":[I
    .end local v10  # "resources":Landroid/content/res/Resources;
    .end local v13  # "darkeningLightDebounce":J
    .end local v20  # "screenDarkeningThresholds":[I
    .end local v21  # "brighteningLightDebounce":J
    .end local v23  # "lightSensorType":Ljava/lang/String;
    .restart local v29  # "screenDarkeningThresholds":[I
    .restart local v30  # "brighteningLightDebounce":J
    .restart local v32  # "lightSensorType":Ljava/lang/String;
    .restart local v34  # "lightSensorRate":I
    .restart local v35  # "screenThresholdLevels":[I
    .restart local v36  # "screenBrighteningThresholds":[I
    .restart local v37  # "ambientThresholdLevels":[I
    .restart local v38  # "ambientDarkeningThresholds":[I
    .restart local v39  # "screenBrightnessSettingMinimum":I
    .restart local v40  # "shortTermModelTimeout":I
    .restart local v43  # "resources":Landroid/content/res/Resources;
    .restart local v44  # "darkeningLightDebounce":J
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_2c5

    .line 453
    .end local v0  # "initialLightSensorRate":I
    .end local v18  # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v19  # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v24  # "dozeScaleFactor":F
    .end local v25  # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v26  # "lightSensorWarmUpTimeConfig":I
    .end local v27  # "ambientBrighteningThresholds":[I
    .end local v28  # "lightSensor":Landroid/hardware/Sensor;
    .end local v29  # "screenDarkeningThresholds":[I
    .end local v30  # "brighteningLightDebounce":J
    .end local v32  # "lightSensorType":Ljava/lang/String;
    .end local v34  # "lightSensorRate":I
    .end local v35  # "screenThresholdLevels":[I
    .end local v36  # "screenBrighteningThresholds":[I
    .end local v37  # "ambientThresholdLevels":[I
    .end local v38  # "ambientDarkeningThresholds":[I
    .end local v39  # "screenBrightnessSettingMinimum":I
    .end local v40  # "shortTermModelTimeout":I
    .end local v43  # "resources":Landroid/content/res/Resources;
    .end local v44  # "darkeningLightDebounce":J
    .restart local v7  # "screenBrightnessSettingMinimum":I
    .restart local v10  # "resources":Landroid/content/res/Resources;
    :cond_2bc
    move/from16 v41, v4

    move-object/from16 v42, v5

    move/from16 v39, v7

    move-object/from16 v43, v10

    move-object v1, v15

    .line 522
    .end local v7  # "screenBrightnessSettingMinimum":I
    .end local v10  # "resources":Landroid/content/res/Resources;
    .restart local v39  # "screenBrightnessSettingMinimum":I
    .restart local v43  # "resources":Landroid/content/res/Resources;
    :goto_2c5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 523
    const v0, 0x111001f

    move-object/from16 v2, v43

    .end local v43  # "resources":Landroid/content/res/Resources;
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 526
    const v0, 0x1110052

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 529
    const v0, 0x1110053

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 533
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 534
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_304

    .line 535
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v3, 0x40a00000  # 5.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 540
    :cond_304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 543
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 544
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 545
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 546
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 548
    const/4 v3, 0x0

    .line 549
    .local v3, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v4, 0x0

    .line 551
    .local v4, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :try_start_323
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v5, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v3, v0

    .line 552
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, v5, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v4, v0

    .line 554
    invoke-virtual {v3, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 555
    invoke-virtual {v4, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_33c} :catch_33d

    .line 558
    goto :goto_354

    .line 556
    :catch_33d
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set up display white-balance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v42

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_354
    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 560
    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutomaticBrightnessEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessEnabled:Z

    .line 565
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 97
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/display/DisplayPowerController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # I

    .line 97
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/display/DisplayPowerController;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # F

    .line 97
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # Z

    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # I

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->isUnderFlickerThreshold(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # J
    .param p3, "x2"  # Z

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # Z

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_FLICKER:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerController;

    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method private adjustBrightnessRate(Lcom/android/server/display/DisplayPowerState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IIZZ)I
    .registers 13
    .param p1, "state"  # Lcom/android/server/display/DisplayPowerState;
    .param p2, "request"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p3, "brightness"  # I
    .param p4, "rate"  # I
    .param p5, "autoBrightnessEnabled"  # Z
    .param p6, "turningOnFromOff"  # Z

    .line 2331
    move v0, p4

    .line 2332
    .local v0, "temp":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->PANEL_BRIGHTNESS_FLICKER_THRESHOLD:I

    const/4 v3, 0x2

    if-gt v1, v2, :cond_1e

    .line 2333
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    if-gt v1, p3, :cond_1a

    .line 2334
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_FLICKER:I

    mul-int/lit8 v0, v1, 0x3

    goto/16 :goto_a9

    .line 2336
    :cond_1a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_FLICKER:I

    goto/16 :goto_a9

    .line 2338
    :cond_1e
    if-nez p5, :cond_30

    .line 2339
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto/16 :goto_a9

    .line 2340
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->isModeChangeFastAdaptationTime()Z

    move-result v1

    const/high16 v2, 0x447a0000  # 1000.0f

    if-eqz v1, :cond_4c

    .line 2341
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTEN_AVERAGE_DURATION_MILLIS:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a9

    .line 2342
    :cond_4c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    if-ge v1, p3, :cond_85

    .line 2343
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxFastAdaptationTime()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2344
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x43480000  # 200.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a9

    .line 2346
    :cond_71
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTEN_AVERAGE_DURATION_MILLIS:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a9

    .line 2348
    :cond_85
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    if-eq p3, v1, :cond_a9

    .line 2349
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->DARKEN_AVERAGE_DURATION_MILLIS:I

    int-to-double v4, v4

    div-double/2addr v1, v4

    const-wide v4, 0x408f400000000000L  # 1000.0

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 2353
    :cond_a9
    :goto_a9
    iget v1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v1, v3, :cond_b0

    .line 2354
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    goto :goto_c4

    .line 2355
    :cond_b0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mDimTurningOnTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gtz v1, :cond_c4

    .line 2356
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 2359
    :cond_c4
    :goto_c4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_ee

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2360
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_ee

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2361
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_ec

    .line 2362
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxFastAdaptationTimeBeforeScreenON()Z

    move-result v1

    if-nez v1, :cond_ee

    :cond_ec
    if-eqz p6, :cond_ef

    .line 2365
    :cond_ee
    const/4 v0, 0x0

    .line 2371
    :cond_ef
    return v0
.end method

.method private animateScreenBrightness(II)V
    .registers 6
    .param p1, "target"  # I
    .param p2, "rate"  # I

    .line 1450
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1451
    const-wide/32 v0, 0x20000

    const-string v2, "TargetScreenBrightness"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1453
    :try_start_10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 1456
    goto :goto_17

    .line 1454
    :catch_16
    move-exception v0

    .line 1458
    :cond_17
    :goto_17
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .registers 10
    .param p1, "target"  # I
    .param p2, "performScreenOffTransition"  # Z

    .line 1462
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1463
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1464
    :cond_16
    if-eq p1, v2, :cond_19

    .line 1465
    return-void

    .line 1468
    :cond_19
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1471
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1472
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1473
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1476
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1477
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3c

    move v5, v2

    goto :goto_3d

    :cond_3c
    move v5, v1

    .line 1476
    :goto_3d
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 1478
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_47

    .line 1479
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1486
    :cond_47
    if-eq p1, v3, :cond_4b

    move v0, v3

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 1492
    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_5f

    if-eq p1, v3, :cond_5f

    .line 1493
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1494
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1495
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 1498
    :cond_5f
    const/16 v0, 0x65

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne p1, v2, :cond_a8

    .line 1503
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1504
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1505
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    .line 1507
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1512
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v0, v3, :cond_8f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isAutomaticBrightnessBlockScreenOn()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1513
    return-void

    .line 1531
    :cond_8f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1536
    :cond_9c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1b1

    .line 1539
    :cond_a8
    const/4 v5, 0x5

    if-ne p1, v5, :cond_cf

    .line 1543
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1544
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v2, :cond_bc

    .line 1545
    return-void

    .line 1549
    :cond_bc
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 1550
    return-void

    .line 1554
    :cond_c3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1555
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1b1

    .line 1556
    :cond_cf
    const/4 v5, 0x3

    if-ne p1, v5, :cond_f6

    .line 1561
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1562
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v2, :cond_e3

    .line 1563
    return-void

    .line 1567
    :cond_e3
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 1568
    return-void

    .line 1572
    :cond_ea
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1573
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1b1

    .line 1574
    :cond_f6
    const/4 v6, 0x4

    if-ne p1, v6, :cond_128

    .line 1578
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1579
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v6, :cond_10a

    .line 1580
    return-void

    .line 1585
    :cond_10a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v6, :cond_11c

    .line 1586
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_119

    .line 1587
    return-void

    .line 1589
    :cond_119
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1593
    :cond_11c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1594
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1b1

    .line 1595
    :cond_128
    const/4 v5, 0x6

    if-ne p1, v5, :cond_159

    .line 1599
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1600
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v5, :cond_13c

    .line 1601
    return-void

    .line 1606
    :cond_13c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v5, :cond_14e

    .line 1607
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 1608
    return-void

    .line 1610
    :cond_14b
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1614
    :cond_14e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1615
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_1b1

    .line 1618
    :cond_159
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1619
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v5, 0x0

    if-nez v4, :cond_165

    .line 1620
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1623
    :cond_165
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_18c

    .line 1626
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1627
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1628
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 1630
    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isAODOn()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 1631
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1635
    :cond_186
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDimColorFade;->dismissColorFade()V

    goto :goto_1b1

    .line 1637
    :cond_18c
    if-eqz p2, :cond_1ac

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1639
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_197

    .line 1640
    goto :goto_198

    :cond_197
    move v2, v3

    .line 1638
    :goto_198
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1ac

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1641
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1ac

    .line 1643
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1b1

    .line 1647
    :cond_1ac
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1650
    :goto_1b1
    return-void
.end method

.method private applyMinimumBrightnessDimmingOrUltraLowBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V
    .registers 8
    .param p1, "request"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "brightness"  # I

    .line 2433
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x0

    const-string v2, "DisplayPowerController"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6b

    .line 2434
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimmingColorFade:Z

    if-nez v0, :cond_87

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-ne p2, v0, :cond_87

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    .line 2436
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDimColorFade;->getColorFadeLevel()F

    move-result v0

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeCoolDownThreshold:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3727c5ac  # 1.0E-5f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2437
    invoke-virtual {v0, v4, v3}, Lcom/android/server/display/DisplayDimColorFade;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apply dimming for minimum screen brighness, current color fade level "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDimColorFade;->getColorFadeLevel()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2440
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDimColorFade;->getColorFadeLevel()F

    move-result v3

    aput v3, v2, v1

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeCoolDownThreshold:F

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2441
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2442
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimmingColorFade:Z

    goto :goto_87

    .line 2444
    :cond_6b
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimmingColorFade:Z

    if-eqz v0, :cond_87

    .line 2445
    const-string v0, "Exit dimming for minimum screen brighness"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimmingColorFade:Z

    .line 2447
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDimColorFade;->setColorFadeLevel(F)V

    .line 2448
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2449
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDimColorFade;->dismissColorFade()V

    .line 2451
    :cond_87
    :goto_87
    return-void
.end method

.method private blockScreenOff()V
    .registers 5

    .line 1310
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    .line 1311
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1312
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 1314
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_22
    return-void
.end method

.method private blockScreenOn()V
    .registers 5

    .line 1292
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_22

    .line 1293
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1294
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1296
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_22
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3
    .param p0, "value"  # I

    .line 2064
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .registers 3
    .param p0, "value"  # F

    .line 2068
    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .registers 4
    .param p1, "value"  # I

    .line 1442
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .registers 4
    .param p1, "value"  # I

    .line 1437
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .registers 5

    .line 1730
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 1731
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1732
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1734
    :cond_11
    return-void
.end method

.method private convertToNits(I)F
    .registers 3
    .param p1, "backlight"  # I

    .line 1865
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_9

    .line 1866
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 1868
    :cond_9
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .registers 7

    .line 1711
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    .line 1714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1715
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_26

    .line 1717
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1718
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1719
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_34

    .line 1723
    :cond_26
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1724
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1727
    .end local v0  # "now":J
    .end local v2  # "msg":Landroid/os/Message;
    :cond_34
    :goto_34
    return-void
.end method

.method private dumpFlymeLocal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDeviceColorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/DisplayPowerController;->mDeviceColorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableFODLightAndLsProximity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    if-eqz v0, :cond_49

    .line 2499
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDimColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 2501
    :cond_49
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1948
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1949
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1959
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1984
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_310

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1988
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1987
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    :cond_310
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_32e

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1993
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1992
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    :cond_32e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_34c

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1997
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1996
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    :cond_34c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_353

    .line 2001
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2004
    :cond_353
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_35a

    .line 2005
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2008
    :cond_35a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_366

    .line 2009
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2010
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2013
    :cond_366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2014
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_375

    .line 2015
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2016
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2020
    :cond_375
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpFlymeLocal(Ljava/io/PrintWriter;)V

    .line 2022
    return-void
.end method

.method private enableGestureListener(Z)V
    .registers 6
    .param p1, "enabled"  # Z

    .line 2529
    nop

    .line 2530
    const-string v0, "gesture_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2529
    invoke-static {v0}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v0

    .line 2531
    .local v0, "gestureManager":Landroid/view/IGestureManager;
    const-string v1, "IGestureManager threw RemoteException"

    const-string v2, "can not get gesture service"

    const-string v3, "DisplayPowerController"

    if-eqz p1, :cond_25

    .line 2533
    if-eqz v0, :cond_1d

    .line 2534
    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mGestureCallback:Lcom/android/server/display/DisplayPowerController$GestureCallback;

    invoke-interface {v0, v2, v3}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V

    goto :goto_24

    .line 2538
    :catch_1b
    move-exception v2

    goto :goto_21

    .line 2536
    :cond_1d
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_1b

    goto :goto_24

    .line 2539
    .local v2, "ex":Landroid/os/RemoteException;
    :goto_21
    invoke-static {v3, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2540
    .end local v2  # "ex":Landroid/os/RemoteException;
    :goto_24
    goto :goto_36

    .line 2543
    :cond_25
    if-eqz v0, :cond_2f

    .line 2544
    :try_start_27
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mGestureCallback:Lcom/android/server/display/DisplayPowerController$GestureCallback;

    invoke-interface {v0, v2}, Landroid/view/IGestureManager;->removeCallback(Landroid/view/IGestureCallback;)V

    goto :goto_32

    .line 2548
    :catch_2d
    move-exception v2

    goto :goto_33

    .line 2546
    :cond_2f
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_2d

    .line 2550
    :goto_32
    goto :goto_36

    .line 2549
    .restart local v2  # "ex":Landroid/os/RemoteException;
    :goto_33
    invoke-static {v3, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2552
    .end local v2  # "ex":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 6
    .param p1, "sensorType"  # Ljava/lang/String;

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 569
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 571
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 572
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 573
    return-object v2

    .line 570
    .end local v2  # "sensor":Landroid/hardware/Sensor;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 577
    .end local v0  # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1  # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .registers 5

    .line 1787
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1789
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v1

    :goto_1a
    return v1
.end method

.method private getAutomaticBrightnessEnabled()Z
    .registers 5

    .line 2397
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method private getFingerprintUnlockSetting()Z
    .registers 5

    .line 2504
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2505
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2504
    const/4 v2, 0x0

    const-string/jumbo v3, "mz_fingerprint_use_unlock"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method private getScreenBrightnessForVrSetting()I
    .registers 5

    .line 1800
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const-string/jumbo v2, "screen_brightness_for_vr"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1803
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSetting()I
    .registers 5

    .line 1793
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1796
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleFingerprintUnlockChanged()V
    .registers 2

    .line 2509
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mFingerprintUnlockEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->enableGestureListener(Z)V

    .line 2510
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "positive"  # Z

    .line 1683
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_30

    .line 1684
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_b

    if-nez p3, :cond_b

    .line 1685
    return-void

    .line 1687
    :cond_b
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    if-eqz p3, :cond_13

    .line 1688
    return-void

    .line 1694
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1695
    if-eqz p3, :cond_24

    .line 1696
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1697
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_2d

    .line 1700
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1701
    const-wide/16 v0, 0x96

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1706
    :goto_2d
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 1708
    :cond_30
    return-void
.end method

.method private handleSettingsChange(Z)V
    .registers 5
    .param p1, "userSwitch"  # Z

    .line 1756
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 1757
    if-eqz p1, :cond_13

    .line 1759
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 1760
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_13

    .line 1761
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 1764
    :cond_13
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 1767
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 1768
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1770
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutomaticBrightnessEnabled()Z

    move-result v0

    .line 1771
    .local v0, "automaticBrightnessEnabled":Z
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessEnabled:Z

    if-eq v1, v0, :cond_3d

    .line 1772
    if-eqz v1, :cond_35

    if-nez v0, :cond_35

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_35

    .line 1773
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 1775
    :cond_35
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessEnabled:Z

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessModeChangeTime:J

    .line 1778
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getFingerprintUnlockSetting()Z

    move-result v1

    .line 1779
    .local v1, "fingerprintUnlockEnabled":Z
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFingerprintUnlockEnabled:Z

    if-eq v2, v1, :cond_4a

    .line 1780
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFingerprintUnlockEnabled:Z

    .line 1781
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleFingerprintUnlockChanged()V

    .line 1784
    :cond_4a
    return-void
.end method

.method private initialize()V
    .registers 9

    .line 689
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 690
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 692
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_54

    .line 693
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v4, v1, [F

    fill-array-data v4, :array_11e

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 695
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 696
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v4, v1, [F

    fill-array-data v4, :array_126

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 700
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 701
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 704
    :cond_54
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v4, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v2, v4}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 706
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 710
    :try_start_66
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 711
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_7c} :catch_7d

    .line 714
    goto :goto_7e

    .line 712
    :catch_7d
    move-exception v0

    .line 717
    :goto_7e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 718
    .local v0, "brightness":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_92

    .line 719
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 722
    :cond_92
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 723
    const-string/jumbo v4, "screen_brightness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 722
    const/4 v6, -0x1

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 725
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 726
    const-string/jumbo v4, "screen_brightness_for_vr"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 725
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 728
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 729
    const-string/jumbo v4, "screen_auto_brightness_adj"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 728
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 732
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 733
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 732
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 736
    new-instance v2, Lcom/android/server/display/DisplayDimColorFade;

    new-instance v4, Lcom/android/server/display/ColorFade;

    invoke-direct {v4, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/android/server/display/DisplayDimColorFade;-><init>(Lcom/android/server/display/ColorFade;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    .line 737
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDimPowerState:Lcom/android/server/display/DisplayDimColorFade;

    sget-object v4, Lcom/android/server/display/DisplayDimColorFade;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    const/high16 v5, 0x3f800000  # 1.0f

    aput v5, v1, v3

    const/4 v5, 0x1

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeCoolDownThreshold:F

    aput v7, v1, v5

    invoke-static {v2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    .line 739
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDimColorFadeOn:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 740
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 741
    const-string/jumbo v2, "mz_fingerprint_use_unlock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 740
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 743
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_11c

    .line 744
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->initialize()V

    .line 747
    :cond_11c
    return-void

    nop

    :array_11e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_126
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private isUnderFlickerThreshold(I)Z
    .registers 3
    .param p1, "brightness"  # I

    .line 2454
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->PANEL_BRIGHTNESS_FLICKER_THRESHOLD:I

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private logDisplayPolicyChanged(I)V
    .registers 4
    .param p1, "newPolicy"  # I

    .line 1749
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1750
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1751
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 1752
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1753
    return-void
.end method

.method private notifyBrightnessChanged(IZZ)V
    .registers 11
    .param p1, "brightness"  # I
    .param p2, "userInitiated"  # Z
    .param p3, "hadUserDataPoint"  # Z

    .line 1849
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    .line 1850
    .local v6, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_31

    .line 1855
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_1f

    .line 1856
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_22

    .line 1857
    :cond_1f
    const/high16 v0, 0x3f800000  # 1.0f

    move v3, v0

    :goto_22
    nop

    .line 1858
    .local v3, "powerFactor":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1860
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    .line 1858
    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 1862
    .end local v3  # "powerFactor":F
    :cond_31
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I

    .line 2025
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 2033
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2031
    :cond_d
    const-string v0, "Positive"

    return-object v0

    .line 2029
    :cond_10
    const-string v0, "Negative"

    return-object v0

    .line 2027
    :cond_13
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .registers 5
    .param p1, "adjustment"  # F

    .line 1813
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1814
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1816
    return-void
.end method

.method private putScreenBrightnessSetting(I)V
    .registers 5
    .param p1, "brightness"  # I

    .line 1807
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 1808
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1810
    return-void
.end method

.method private readFlymeConfigurations()V
    .registers 10

    .line 2458
    const-string v0, "Black"

    const-string/jumbo v1, "ro.vendor.meizu.tptype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->mDeviceColorType:Ljava/lang/String;

    .line 2459
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2460
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0xa0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/display/DisplayPowerController;->LIGHT_SENSOR_VALUE_DEBOUNCE_DELAY:I

    .line 2464
    const v2, 0xa0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimRate:I

    .line 2467
    const v2, 0xa0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    .line 2468
    const v2, 0xa0b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L  # 1000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    .line 2470
    sget-object v2, Lcom/android/server/display/DisplayPowerController;->mDeviceColorType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_e2

    :cond_49
    goto :goto_70

    :sswitch_4a
    const-string v0, "White"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    goto :goto_71

    :sswitch_54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v8

    goto :goto_71

    :sswitch_5c
    const-string v0, "Gold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v6

    goto :goto_71

    :sswitch_66
    const-string v0, "Blue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v7

    goto :goto_71

    :goto_70
    const/4 v0, -0x1

    :goto_71
    if-eqz v0, :cond_bc

    if-eq v0, v8, :cond_a6

    if-eq v0, v7, :cond_90

    if-eq v0, v6, :cond_7a

    goto :goto_bd

    .line 2482
    :cond_7a
    const v0, 0xa0b0005

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    .line 2483
    const v0, 0xa0b0031

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    goto :goto_bd

    .line 2478
    :cond_90
    const v0, 0xa0b0004

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    .line 2479
    const v0, 0xa0b0030

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    .line 2480
    goto :goto_bd

    .line 2474
    :cond_a6
    const v0, 0xa0b0003

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    .line 2475
    const v0, 0xa0b002f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mDeepDarkBrightnessThreshold:F

    .line 2476
    goto :goto_bd

    .line 2472
    :cond_bc
    nop

    .line 2487
    :goto_bd
    const v0, 0xa0b0002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTEN_AVERAGE_DURATION_MILLIS:I

    .line 2488
    const v0, 0xa0b002e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->DARKEN_AVERAGE_DURATION_MILLIS:I

    .line 2489
    const v0, 0xa0b003b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->PANEL_BRIGHTNESS_FLICKER_THRESHOLD:I

    .line 2490
    const/high16 v0, 0xa0b0000

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->AUTO_BRIGHTNESS_RATE_FLICKER:I

    .line 2491
    return-void

    nop

    :sswitch_data_e2
    .sparse-switch
        0x1fa47a -> :sswitch_66
        0x21f480 -> :sswitch_5c
        0x3d49fdf -> :sswitch_54
        0x4fadc09 -> :sswitch_4a
    .end sparse-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I

    .line 2038
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 2046
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2044
    :cond_d
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2042
    :cond_10
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2040
    :cond_13
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .registers 3

    .line 1894
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1895
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1896
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .registers 3

    .line 1881
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1882
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1883
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .registers 3

    .line 1744
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1745
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1746
    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 675
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 3

    .line 679
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_12

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 681
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    .end local v0  # "msg":Landroid/os/Message;
    :cond_12
    return-void
.end method

.method private setOemSensorEnabled(Z)V
    .registers 7
    .param p1, "enabled"  # Z

    .line 2411
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->mDeviceColorType:Ljava/lang/String;

    const-string v1, "Black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2412
    if-eqz p1, :cond_19

    .line 2413
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOemDetectSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOemDetectSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_20

    .line 2416
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOemDetectSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2419
    :cond_20
    :goto_20
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .registers 7
    .param p1, "debounceTime"  # J

    .line 1737
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1738
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1740
    :cond_d
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1741
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 1660
    if-eqz p1, :cond_16

    .line 1661
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_32

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1665
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_32

    .line 1669
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_32

    .line 1672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1673
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1674
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1675
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1676
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1677
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1680
    :cond_32
    :goto_32
    return-void
.end method

.method private setReportedScreenState(I)V
    .registers 5
    .param p1, "state"  # I

    .line 1432
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1433
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1434
    return-void
.end method

.method private setReportedScreenStateProximityState(I)V
    .registers 2
    .param p1, "state"  # I

    .line 1427
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    .line 1428
    return-void
.end method

.method private setScreenState(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .registers 11
    .param p1, "state"  # I
    .param p2, "reportOnly"  # Z

    .line 1332
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 1333
    .local v2, "isOff":Z
    :goto_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v3, p1, :cond_47

    .line 1337
    if-eqz v2, :cond_31

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_31

    .line 1338
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_2c

    .line 1339
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1340
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 1341
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_31

    .line 1343
    :cond_2c
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_31

    .line 1345
    return v0

    .line 1349
    :cond_31
    :goto_31
    if-nez p2, :cond_47

    .line 1350
    const-wide/32 v6, 0x20000

    const-string v3, "ScreenState"

    invoke-static {v6, v7, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1351
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1354
    :try_start_40
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    .line 1357
    goto :goto_47

    .line 1355
    :catch_46
    move-exception v3

    .line 1367
    :cond_47
    :goto_47
    if-eqz v2, :cond_5d

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_5d

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_5d

    .line 1369
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1370
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1371
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_6e

    .line 1372
    :cond_5d
    if-nez v2, :cond_6e

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v5, :cond_6e

    .line 1377
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 1378
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1381
    :cond_6e
    :goto_6e
    const/4 v3, 0x0

    if-nez v2, :cond_a7

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v5, :cond_a7

    .line 1382
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1383
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_9d

    .line 1384
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 1386
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v5, v1, :cond_a0

    .line 1387
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_a0

    .line 1391
    :cond_9d
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1393
    :cond_a0
    :goto_a0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 1397
    :cond_a7
    if-eqz v2, :cond_b6

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v5, :cond_b6

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    if-ne v5, v4, :cond_b6

    .line 1399
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1400
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    .line 1403
    :cond_b6
    if-nez v2, :cond_f7

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    if-nez v4, :cond_f7

    .line 1405
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenStateProximityState(I)V

    .line 1406
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_f4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v3, v1, :cond_f4

    .line 1410
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v3

    if-nez v3, :cond_f7

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1411
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->isAutomaticBrightnessBlockScreenOn()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 1412
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 1413
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_f7

    .line 1416
    :cond_f4
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1422
    :cond_f7
    :goto_f7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_fc

    move v0, v1

    :cond_fc
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I

    .line 2051
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 2059
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2057
    :cond_d
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2055
    :cond_10
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2053
    :cond_13
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private unblockScreenOff()V
    .registers 7

    .line 1319
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_32

    .line 1320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1322
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1325
    .end local v0  # "delay":J
    :cond_32
    return-void
.end method

.method private unblockScreenOn()V
    .registers 7

    .line 1301
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_32

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1304
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1307
    .end local v0  # "delay":J
    :cond_32
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .registers 5

    .line 1819
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1820
    return v1

    .line 1822
    :cond_a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000  # Float.NaN

    if-nez v0, :cond_17

    .line 1823
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 1824
    return v1

    .line 1826
    :cond_17
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1827
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 1828
    const/4 v0, 0x1

    return v0
.end method

.method private updatePowerState()V
    .registers 35

    .line 785
    move-object/from16 v8, p0

    const/4 v1, 0x0

    .line 786
    .local v1, "mustInitialize":Z
    const/4 v2, 0x0

    .line 787
    .local v2, "brightnessAdjustmentFlags":I
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 789
    const/4 v3, 0x0

    .line 790
    .local v3, "turningOnFromDim":Z
    const/4 v4, 0x0

    .line 793
    .local v4, "turningOnFromOff":Z
    iget-object v5, v8, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 794
    const/4 v0, 0x0

    :try_start_10
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 795
    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v6, :cond_18

    .line 796
    monitor-exit v5

    return-void

    .line 799
    :cond_18
    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v6, :cond_37

    .line 800
    new-instance v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v11, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v6, v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 801
    iget-boolean v6, v8, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v6, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 802
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 803
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 804
    const/4 v1, 0x1

    .line 807
    const/4 v6, 0x3

    move v11, v1

    move/from16 v25, v3

    move v12, v6

    .local v6, "previousPolicy":I
    goto :goto_7a

    .line 808
    .end local v6  # "previousPolicy":I
    :cond_37
    iget-boolean v6, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_72

    .line 809
    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 810
    .restart local v6  # "previousPolicy":I
    iget-object v11, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v12, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 811
    iget-boolean v11, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v12, v8, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v11, v12

    iput-boolean v11, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 812
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 813
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 814
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 816
    if-ne v6, v9, :cond_5d

    iget-object v11, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v11, v7, :cond_5d

    move v11, v10

    goto :goto_5e

    :cond_5d
    move v11, v0

    :goto_5e
    move v3, v11

    .line 818
    if-eqz v6, :cond_63

    if-ne v6, v10, :cond_6b

    :cond_63
    iget-object v11, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v11, v7, :cond_6b

    move v11, v10

    goto :goto_6c

    :cond_6b
    move v11, v0

    :goto_6c
    move v4, v11

    move v11, v1

    move/from16 v25, v3

    move v12, v6

    goto :goto_7a

    .line 823
    .end local v6  # "previousPolicy":I
    :cond_72
    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_76
    .catchall {:try_start_10 .. :try_end_76} :catchall_4b1

    move v11, v1

    move/from16 v25, v3

    move v12, v6

    .line 826
    .end local v1  # "mustInitialize":Z
    .end local v3  # "turningOnFromDim":Z
    .local v11, "mustInitialize":Z
    .local v12, "previousPolicy":I
    .local v25, "turningOnFromDim":Z
    :goto_7a
    :try_start_7a
    iget-boolean v1, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v1, :cond_80

    move v1, v10

    goto :goto_81

    :cond_80
    move v1, v0

    :goto_81
    move/from16 v26, v1

    .line 827
    .local v26, "mustNotify":Z
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_4a9

    .line 830
    if-eqz v11, :cond_89

    .line 831
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 837
    :cond_89
    const/4 v1, -0x1

    .line 838
    .local v1, "brightness":I
    const/4 v3, 0x0

    .line 839
    .local v3, "performScreenOffTransition":Z
    iget-object v5, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x4

    if-eqz v5, :cond_b4

    if-eq v5, v10, :cond_9a

    if-eq v5, v6, :cond_98

    .line 861
    const/4 v5, 0x2

    .local v5, "state":I
    goto :goto_b7

    .line 856
    .end local v5  # "state":I
    :cond_98
    const/4 v5, 0x5

    .line 857
    .restart local v5  # "state":I
    goto :goto_b7

    .line 845
    .end local v5  # "state":I
    :cond_9a
    iget-object v5, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v5, :cond_a5

    .line 846
    iget-object v5, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v5  # "state":I
    goto :goto_a6

    .line 848
    .end local v5  # "state":I
    :cond_a5
    const/4 v5, 0x3

    .line 850
    .restart local v5  # "state":I
    :goto_a6
    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v13, :cond_b7

    .line 851
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 852
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v13, v9}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_b7

    .line 841
    .end local v5  # "state":I
    :cond_b4
    const/4 v5, 0x1

    .line 842
    .restart local v5  # "state":I
    const/4 v3, 0x1

    .line 843
    nop

    .line 864
    :cond_b7
    :goto_b7
    nop

    .line 867
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v14, -0x1

    if-eqz v13, :cond_10e

    .line 868
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v13, :cond_d6

    if-eq v5, v10, :cond_d6

    .line 869
    invoke-direct {v8, v10}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 870
    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v13, :cond_fd

    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v13, v10, :cond_fd

    .line 872
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_fd

    .line 875
    :cond_d6
    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v13, :cond_e8

    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v13, :cond_e8

    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v13, v10, :cond_e8

    if-eq v5, v10, :cond_e8

    .line 879
    invoke-direct {v8, v10}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_fd

    .line 882
    :cond_e8
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v13, :cond_f8

    .line 883
    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v13, :cond_f4

    .line 884
    iput v14, v8, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 886
    :cond_f4
    invoke-direct {v8, v10}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_fb

    .line 888
    :cond_f8
    invoke-direct {v8, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 892
    :goto_fb
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 894
    :cond_fd
    :goto_fd
    iget-boolean v13, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v13, :cond_110

    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v13, v10, :cond_110

    .line 896
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 899
    const/4 v4, 0x1

    move/from16 v27, v4

    goto :goto_112

    .line 903
    :cond_10e
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 905
    :cond_110
    move/from16 v27, v4

    .end local v4  # "turningOnFromOff":Z
    .local v27, "turningOnFromOff":Z
    :goto_112
    iget-boolean v4, v8, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v4, :cond_117

    .line 906
    const/4 v5, 0x1

    .line 912
    :cond_117
    iget-object v4, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    .line 913
    .local v4, "oldState":I
    invoke-direct {v8, v5, v3}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 914
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    .line 917
    const/high16 v13, 0x7fc00000  # Float.NaN

    const/4 v15, 0x5

    if-ne v5, v10, :cond_135

    .line 918
    const/4 v1, 0x0

    .line 919
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v7, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 922
    iput v14, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 923
    iput v13, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 928
    :cond_135
    if-ne v5, v15, :cond_13f

    .line 929
    iget v1, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 930
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x6

    invoke-virtual {v7, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 933
    :cond_13f
    if-gez v1, :cond_154

    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-lez v7, :cond_154

    .line 934
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 935
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x7

    invoke-virtual {v7, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 936
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_156

    .line 938
    :cond_154
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 941
    :goto_156
    iget-boolean v7, v8, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v7, :cond_162

    .line 942
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    move-result v7

    if-eqz v7, :cond_162

    move v7, v10

    goto :goto_163

    :cond_162
    move v7, v0

    :goto_163
    move/from16 v28, v7

    .line 944
    .local v28, "autoBrightnessEnabledInDoze":Z
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v7, :cond_17f

    if-eq v5, v9, :cond_173

    if-nez v28, :cond_173

    iget-boolean v7, v8, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    if-eqz v7, :cond_17f

    :cond_173
    if-ltz v1, :cond_179

    iget-boolean v7, v8, Lcom/android/server/display/DisplayPowerController;->mEnableFODLightAndLsProximity:Z

    if-eqz v7, :cond_17f

    :cond_179
    iget-object v7, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v7, :cond_17f

    move v7, v10

    goto :goto_180

    :cond_17f
    move v7, v0

    .line 950
    .local v7, "autoBrightnessEnabled":Z
    :goto_180
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v29

    .line 954
    .local v29, "userSetBrightnessChanged":Z
    iget v14, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    if-lez v14, :cond_196

    .line 955
    iget v1, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 956
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 957
    iget-object v14, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 959
    iput v13, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    goto :goto_198

    .line 962
    :cond_196
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 965
    :goto_198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v30

    .line 966
    .local v30, "autoBrightnessAdjustmentChanged":Z
    if-eqz v30, :cond_1a0

    .line 967
    iput v13, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 972
    :cond_1a0
    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_1b0

    .line 973
    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 974
    .local v13, "autoBrightnessAdjustment":F
    const/4 v2, 0x1

    .line 975
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v31, v13

    goto :goto_1b7

    .line 977
    .end local v13  # "autoBrightnessAdjustment":F
    :cond_1b0
    iget v13, v8, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 978
    .restart local v13  # "autoBrightnessAdjustment":F
    const/4 v2, 0x2

    .line 979
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v31, v13

    .line 986
    .end local v13  # "autoBrightnessAdjustment":F
    .local v31, "autoBrightnessAdjustment":F
    :goto_1b7
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v13, :cond_1cb

    if-eqz v1, :cond_1cb

    .line 988
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 989
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 990
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_1cd

    .line 992
    :cond_1cb
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 997
    :goto_1cd
    if-gez v1, :cond_1d5

    if-nez v30, :cond_1d3

    if-eqz v29, :cond_1d5

    :cond_1d3
    move v13, v10

    goto :goto_1d6

    :cond_1d5
    move v13, v0

    :goto_1d6
    move/from16 v32, v13

    .line 1000
    .local v32, "userInitiatedChange":Z
    const/4 v13, 0x0

    .line 1002
    .local v13, "hadUserBrightnessPoint":Z
    iget-object v14, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_20d

    .line 1003
    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v33

    .line 1005
    .end local v13  # "hadUserBrightnessPoint":Z
    .local v33, "hadUserBrightnessPoint":Z
    iget-object v13, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v15, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget v14, v8, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    int-to-float v14, v14

    sget v9, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v9, v9

    div-float v9, v14, v9

    iget-object v14, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    iget v6, v8, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    move/from16 v20, v14

    move v14, v7

    move/from16 v16, v9

    move/from16 v17, v29

    move/from16 v18, v31

    move/from16 v19, v30

    move/from16 v21, v25

    move/from16 v22, v27

    move/from16 v23, v0

    move/from16 v24, v6

    invoke-virtual/range {v13 .. v24}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZIZZFI)V

    move/from16 v13, v33

    .line 1015
    .end local v33  # "hadUserBrightnessPoint":Z
    .restart local v13  # "hadUserBrightnessPoint":Z
    :cond_20d
    const/4 v0, 0x0

    .line 1016
    .local v0, "slowChange":Z
    if-gez v1, :cond_247

    .line 1017
    move/from16 v6, v31

    .line 1018
    .local v6, "newAutoBrightnessAdjustment":F
    if-eqz v7, :cond_220

    .line 1019
    iget-object v9, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v9}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v1

    .line 1020
    iget-object v9, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1021
    invoke-virtual {v9}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v6

    .line 1024
    :cond_220
    if-ltz v1, :cond_239

    .line 1026
    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v1

    .line 1027
    iget-boolean v9, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v9, :cond_22d

    if-nez v30, :cond_22d

    .line 1028
    const/4 v0, 0x1

    .line 1034
    :cond_22d
    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(I)V

    .line 1035
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1036
    iget-object v9, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_23c

    .line 1038
    :cond_239
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1040
    :goto_23c
    cmpl-float v9, v31, v6

    if-eqz v9, :cond_244

    .line 1043
    invoke-direct {v8, v6}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    goto :goto_245

    .line 1046
    :cond_244
    const/4 v2, 0x0

    .line 1048
    .end local v6  # "newAutoBrightnessAdjustment":F
    :goto_245
    move v9, v2

    goto :goto_24c

    .line 1049
    :cond_247
    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1050
    const/4 v2, 0x0

    move v9, v2

    .line 1054
    .end local v2  # "brightnessAdjustmentFlags":I
    .local v9, "brightnessAdjustmentFlags":I
    :goto_24c
    if-gez v1, :cond_25c

    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 1055
    iget v1, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 1056
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1060
    :cond_25c
    if-gez v1, :cond_269

    .line 1061
    iget v2, v8, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v8, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v1

    .line 1062
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1067
    :cond_269
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_291

    .line 1068
    iget v2, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v1, v2, :cond_289

    .line 1074
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1076
    iget v2, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimRate:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v6, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1079
    :cond_289
    iget-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v2, :cond_28e

    .line 1080
    const/4 v0, 0x0

    .line 1082
    :cond_28e
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_29f

    .line 1083
    :cond_291
    iget-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v2, :cond_29f

    .line 1084
    const/4 v0, 0x0

    .line 1085
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1087
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/server/display/DisplayPowerController;->mDimTurningOnTime:J

    .line 1093
    :cond_29f
    :goto_29f
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v14, 0x3f800000  # 1.0f

    if-eqz v2, :cond_2cc

    .line 1094
    iget v2, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v1, v2, :cond_2c2

    .line 1095
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1096
    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1097
    .local v2, "brightnessFactor":F
    int-to-float v6, v1

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 1098
    .local v6, "lowPowerBrightness":I
    iget v15, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1099
    iget-object v15, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x2

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1101
    .end local v2  # "brightnessFactor":F
    .end local v6  # "lowPowerBrightness":I
    :cond_2c2
    iget-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v2, :cond_2c7

    .line 1102
    const/4 v0, 0x0

    .line 1104
    :cond_2c7
    iput-boolean v10, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move v15, v0

    move v14, v1

    goto :goto_2d9

    .line 1105
    :cond_2cc
    iget-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v2, :cond_2d7

    .line 1106
    const/4 v0, 0x0

    .line 1107
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move v15, v0

    move v14, v1

    goto :goto_2d9

    .line 1105
    :cond_2d7
    move v15, v0

    move v14, v1

    .line 1111
    .end local v0  # "slowChange":Z
    .end local v1  # "brightness":I
    .local v14, "brightness":I
    .local v15, "slowChange":Z
    :goto_2d9
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v8, v0, v14}, Lcom/android/server/display/DisplayPowerController;->applyMinimumBrightnessDimmingOrUltraLowBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V

    .line 1112
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerState;->setUseAutoBrightness(Z)V

    .line 1117
    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v0, :cond_399

    .line 1118
    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v0, :cond_319

    .line 1119
    const/4 v0, 0x2

    if-ne v5, v0, :cond_316

    .line 1120
    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v0, :cond_2fb

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v0, :cond_2fb

    .line 1121
    iput v14, v8, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    .line 1122
    iput v10, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_319

    .line 1123
    :cond_2fb
    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v0, v10, :cond_30b

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_30b

    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    if-eq v14, v0, :cond_30b

    .line 1126
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_319

    .line 1123
    :cond_30b
    const/4 v0, 0x2

    .line 1127
    iget v1, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v1, v0, :cond_314

    .line 1128
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_319

    .line 1127
    :cond_314
    const/4 v0, 0x0

    goto :goto_319

    .line 1131
    :cond_316
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1136
    :cond_319
    :goto_319
    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 1137
    .local v0, "rate":I
    if-nez v15, :cond_31f

    .line 1138
    iget v0, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 1141
    :cond_31f
    iget-object v2, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v1, p0

    move/from16 v17, v3

    .end local v3  # "performScreenOffTransition":Z
    .local v17, "performScreenOffTransition":Z
    move-object v3, v6

    move v6, v4

    .end local v4  # "oldState":I
    .local v6, "oldState":I
    move v4, v14

    move v10, v5

    .end local v5  # "state":I
    .local v10, "state":I
    move v5, v0

    move/from16 v19, v11

    move v11, v6

    .end local v6  # "oldState":I
    .local v11, "oldState":I
    .local v19, "mustInitialize":Z
    move v6, v7

    move/from16 v20, v7

    .end local v7  # "autoBrightnessEnabled":Z
    .local v20, "autoBrightnessEnabled":Z
    move/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerController;->adjustBrightnessRate(Lcom/android/server/display/DisplayPowerState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IIZZ)I

    move-result v0

    .line 1144
    const/4 v1, 0x5

    if-eq v10, v1, :cond_340

    if-ne v11, v1, :cond_33e

    goto :goto_340

    :cond_33e
    const/4 v1, 0x0

    goto :goto_341

    :cond_340
    :goto_340
    const/4 v1, 0x1

    .line 1146
    .local v1, "wasOrWillBeInVr":Z
    :goto_341
    const/4 v2, 0x2

    if-ne v10, v2, :cond_34a

    iget v2, v8, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v2, :cond_34a

    const/4 v2, 0x1

    goto :goto_34b

    :cond_34a
    const/4 v2, 0x0

    .line 1151
    .local v2, "initialRampSkip":Z
    :goto_34b
    nop

    .line 1152
    invoke-static {v10}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_358

    iget-boolean v3, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v3, :cond_358

    const/4 v3, 0x1

    goto :goto_359

    :cond_358
    const/4 v3, 0x0

    .line 1155
    .local v3, "hasBrightnessBuckets":Z
    :goto_359
    iget-boolean v4, v8, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v4, :cond_36b

    iget-object v4, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1156
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_36b

    const/4 v4, 0x1

    goto :goto_36c

    :cond_36b
    const/4 v4, 0x0

    .line 1158
    .local v4, "isDisplayContentVisible":Z
    :goto_36c
    iget-boolean v5, v8, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1160
    .local v5, "brightnessIsTemporary":Z
    if-nez v2, :cond_37d

    if-nez v3, :cond_37d

    if-nez v1, :cond_37d

    if-eqz v4, :cond_37d

    if-eqz v5, :cond_379

    goto :goto_37d

    .line 1166
    :cond_379
    invoke-direct {v8, v14, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto :goto_381

    .line 1162
    :cond_37d
    :goto_37d
    const/4 v6, 0x0

    invoke-direct {v8, v14, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1170
    :goto_381
    if-nez v5, :cond_3a1

    .line 1171
    if-eqz v32, :cond_391

    iget-object v6, v8, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v6, :cond_38f

    .line 1172
    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v6

    if-nez v6, :cond_391

    .line 1175
    :cond_38f
    const/4 v6, 0x0

    .end local v32  # "userInitiatedChange":Z
    .local v6, "userInitiatedChange":Z
    goto :goto_393

    .line 1177
    .end local v6  # "userInitiatedChange":Z
    .restart local v32  # "userInitiatedChange":Z
    :cond_391
    move/from16 v6, v32

    .end local v32  # "userInitiatedChange":Z
    .restart local v6  # "userInitiatedChange":Z
    :goto_393
    invoke-direct {v8, v14, v6, v13}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    move/from16 v32, v6

    goto :goto_3a1

    .line 1117
    .end local v0  # "rate":I
    .end local v1  # "wasOrWillBeInVr":Z
    .end local v2  # "initialRampSkip":Z
    .end local v6  # "userInitiatedChange":Z
    .end local v10  # "state":I
    .end local v17  # "performScreenOffTransition":Z
    .end local v19  # "mustInitialize":Z
    .end local v20  # "autoBrightnessEnabled":Z
    .local v3, "performScreenOffTransition":Z
    .local v4, "oldState":I
    .local v5, "state":I
    .restart local v7  # "autoBrightnessEnabled":Z
    .local v11, "mustInitialize":Z
    .restart local v32  # "userInitiatedChange":Z
    :cond_399
    move/from16 v17, v3

    move v10, v5

    move/from16 v20, v7

    move/from16 v19, v11

    move v11, v4

    .line 1183
    .end local v3  # "performScreenOffTransition":Z
    .end local v4  # "oldState":I
    .end local v5  # "state":I
    .end local v7  # "autoBrightnessEnabled":Z
    .restart local v10  # "state":I
    .local v11, "oldState":I
    .restart local v17  # "performScreenOffTransition":Z
    .restart local v19  # "mustInitialize":Z
    .restart local v20  # "autoBrightnessEnabled":Z
    :cond_3a1
    :goto_3a1
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    if-eqz v9, :cond_3e7

    .line 1184
    :cond_3ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] reason changing to: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1185
    invoke-virtual {v1, v9}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', previous reason: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1191
    :cond_3e7
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_408

    .line 1192
    const/4 v0, 0x2

    if-ne v10, v0, :cond_402

    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_402

    .line 1193
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1194
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_408

    .line 1196
    :cond_402
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1204
    :cond_408
    :goto_408
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_42c

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_420

    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1206
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_42c

    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_42c

    :cond_420
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1207
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_42c

    const/4 v0, 0x1

    goto :goto_42d

    :cond_42c
    const/4 v0, 0x0

    :goto_42d
    move v1, v0

    .line 1208
    .local v1, "ready":Z
    if-eqz v1, :cond_43a

    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1209
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_43a

    const/4 v0, 0x1

    goto :goto_43b

    :cond_43a
    const/4 v0, 0x0

    :goto_43b
    move v2, v0

    .line 1212
    .local v2, "finished":Z
    if-eqz v1, :cond_451

    const/4 v0, 0x1

    if-eq v10, v0, :cond_451

    iget v3, v8, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v0, :cond_451

    .line 1214
    const/4 v0, 0x2

    invoke-direct {v8, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1215
    iget-object v3, v8, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 1217
    invoke-direct {v8, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenStateProximityState(I)V

    .line 1222
    :cond_451
    if-eqz v1, :cond_45e

    const/4 v0, 0x1

    if-eq v10, v0, :cond_45e

    iget v3, v8, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateProximityToPolicy:I

    if-ne v3, v0, :cond_45e

    .line 1224
    const/4 v0, 0x2

    invoke-direct {v8, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenStateProximityState(I)V

    .line 1229
    :cond_45e
    if-nez v2, :cond_46c

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_46c

    .line 1233
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1238
    :cond_46c
    if-eqz v1, :cond_484

    if-eqz v26, :cond_484

    .line 1240
    iget-object v3, v8, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1241
    :try_start_473
    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_47b

    .line 1242
    const/4 v6, 0x1

    iput-boolean v6, v8, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_47c

    .line 1241
    :cond_47b
    const/4 v6, 0x1

    .line 1248
    :goto_47c
    monitor-exit v3
    :try_end_47d
    .catchall {:try_start_473 .. :try_end_47d} :catchall_481

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_485

    .line 1248
    :catchall_481
    move-exception v0

    :try_start_482
    monitor-exit v3
    :try_end_483
    .catchall {:try_start_482 .. :try_end_483} :catchall_481

    throw v0

    .line 1238
    :cond_484
    const/4 v6, 0x1

    .line 1253
    :goto_485
    if-eqz v2, :cond_494

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v0, :cond_494

    .line 1257
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1258
    iget-object v3, v8, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_495

    .line 1253
    :cond_494
    const/4 v0, 0x0

    .line 1262
    :goto_495
    const/4 v3, 0x2

    if-eq v10, v3, :cond_499

    move v0, v6

    :cond_499
    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1264
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v12, v0, :cond_4a8

    .line 1265
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v8, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 1267
    :cond_4a8
    return-void

    .line 827
    .end local v1  # "ready":Z
    .end local v9  # "brightnessAdjustmentFlags":I
    .end local v10  # "state":I
    .end local v12  # "previousPolicy":I
    .end local v13  # "hadUserBrightnessPoint":Z
    .end local v14  # "brightness":I
    .end local v15  # "slowChange":Z
    .end local v17  # "performScreenOffTransition":Z
    .end local v19  # "mustInitialize":Z
    .end local v20  # "autoBrightnessEnabled":Z
    .end local v26  # "mustNotify":Z
    .end local v27  # "turningOnFromOff":Z
    .end local v28  # "autoBrightnessEnabledInDoze":Z
    .end local v29  # "userSetBrightnessChanged":Z
    .end local v30  # "autoBrightnessAdjustmentChanged":Z
    .end local v31  # "autoBrightnessAdjustment":F
    .end local v32  # "userInitiatedChange":Z
    .local v2, "brightnessAdjustmentFlags":I
    .local v4, "turningOnFromOff":Z
    .local v11, "mustInitialize":Z
    :catchall_4a9
    move-exception v0

    move/from16 v19, v11

    move/from16 v1, v19

    move/from16 v3, v25

    .end local v11  # "mustInitialize":Z
    .restart local v19  # "mustInitialize":Z
    goto :goto_4b2

    .end local v19  # "mustInitialize":Z
    .end local v25  # "turningOnFromDim":Z
    .local v1, "mustInitialize":Z
    .local v3, "turningOnFromDim":Z
    :catchall_4b1
    move-exception v0

    :goto_4b2
    :try_start_4b2
    monitor-exit v5
    :try_end_4b3
    .catchall {:try_start_4b2 .. :try_end_4b3} :catchall_4b1

    throw v0
.end method

.method private updateUserSetScreenBrightness()Z
    .registers 5

    .line 1832
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 1833
    return v1

    .line 1835
    :cond_6
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v2, v0, :cond_10

    .line 1836
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 1837
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 1838
    return v1

    .line 1840
    :cond_10
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 1841
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    .line 1842
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 1843
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 1844
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1907
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1908
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1909
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_205

    .line 1918
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1919
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1945
    return-void

    .line 1916
    :catchall_205
    move-exception v1

    :try_start_206
    monitor-exit v0
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "userId"  # I
    .param p2, "includePackage"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_6

    .line 667
    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isModeChangeFastAdaptationTime()Z
    .registers 7

    .line 2404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessModeChangeTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "newUserId"  # I

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 600
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 612
    return-void
.end method

.method public registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2385
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 7
    .param p1, "request"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"  # Z

    .line 635
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    const/4 v1, 0x0

    .line 638
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_e

    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_e

    .line 640
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 641
    const/4 v1, 0x1

    .line 644
    :cond_e
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_1b

    .line 645
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 646
    const/4 v1, 0x1

    goto :goto_29

    .line 647
    :cond_1b
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 648
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 649
    const/4 v1, 0x1

    .line 652
    :cond_29
    :goto_29
    if-eqz v1, :cond_2e

    .line 653
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 656
    :cond_2e
    if-eqz v1, :cond_39

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_39

    .line 657
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 658
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 661
    :cond_39
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 662
    .end local v1  # "changed":Z
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 3
    .param p1, "cct"  # F

    .line 2203
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_a

    .line 2204
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 2208
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2210
    :cond_a
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 2185
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 2186
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 2188
    :cond_7
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "c"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 1275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1276
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1277
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 2196
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_c

    .line 2197
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 2198
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 2200
    :cond_c
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6
    .param p1, "adjustment"  # F

    .line 1286
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1287
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1286
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1288
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1289
    return-void
.end method

.method public setTemporaryBrightness(I)V
    .registers 5
    .param p1, "brightness"  # I

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1283
    return-void
.end method

.method public unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;

    .line 2388
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2394
    return-void
.end method

.method public updateBrightness()V
    .registers 1

    .line 1271
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1272
    return-void
.end method

.method public updateWhiteBalance()V
    .registers 1

    .line 2192
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2193
    return-void
.end method
