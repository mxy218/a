.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HBM_STATE_CHANGED:Ljava/lang/String; = "flyme.intent.action.HBM_STATE_CHANGED"

.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field public static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.5f

.field public static final BRIGHTENING_LIGHT_THRESHOLD_LOWLUX:F = 10.0f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field public static final DARKENING_LIGHT_HYSTERESIS:F = 0.6f

.field public static DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F = 0.0f

.field private static final DARKENING_LIGHT_HYSTERESIS_VERYLOWLUX:F = 0.2f

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final HBMMODE_DEBOUNCE:I = 0x1388

.field private static final LIGHT_SENSOR_HIGHT:F = 2000.0f

.field private static final LIGHT_SENSOR_LOWLUX:F = 1.0f

.field public static final LIGHT_SENSOR_MIDLUX:F = 100.0f

.field private static final LIGHT_SENSOR_RISE_DURATION_AFTER_WARM_UP:I = 0x1f4

.field private static MAX_AMBIENT_CLEAR_IN_DARKNESS:F = 0.0f

.field private static final MSG_BLOCK_SCREEN_ON_TIMEOUT:I = 0x65

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field private static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x5

.field public static final PROP_KEY_DARK_LUX_THRESHOLD:Ljava/lang/String; = "persist.sys.drak.lux.threshold"

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xc8

.field private static final PROXIMITY_SENSOR_PROTECTION_LUX_THRESHOLD:F = 800.0f

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z = false

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field private SHORT_TERM_MODEL_THRESHOLD_RATIO:F

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAdjustmentInGameMode:F

.field private mAmbientBrighteningThreshold:F

.field private final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientDarkeningThreshold:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxFastAdaptationTime:J

.field private mAmbientLuxValid:Z

.field private mAutomaticBrightnessScreenOnBlockStartRealTime:J

.field private final mBrighteningLightDebounceConfig:J

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDeepDarkAmbientLuxThreshold:F

.field private final mDisableHBMModeRunnable:Ljava/lang/Runnable;

.field private mDisplayPolicy:I

.field private final mDozeScaleFactor:F

.field private final mEnableHBMModeRunnable:Ljava/lang/Runnable;

.field private mFastAmbientLux:F

.field private mForegroundAppCategory:I

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

.field private mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

.field private mHBMController:Lcom/android/server/display/hbm/HBMController;

.field private mHBMModeEnabled:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHbmStateChangedIntent:Landroid/content/Intent;

.field private mInitialAdjustmentInGameMode:F

.field private final mInitialLightSensorRate:I

.field private mIsMzGameMode:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorValueDebounceDelayTime:J

.field private mLightSensorWarmUpTimeConfig:I

.field private mLoggingEnabled:Z

.field private mLsProximity:I

.field private mLsProximitySensor:Landroid/hardware/Sensor;

.field private mLsProximitySensorEnabled:Z

.field private final mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mLsProximityThreshold:F

.field private mMaxCalculateAmbientLux:F

.field private final mNormalLightSensorRate:I

.field private final mOnLsProximityNegativeRunnable:Ljava/lang/Runnable;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingForegroundAppCategory:I

.field private mPendingForegroundAppPackageName:Ljava/lang/String;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private mScreenBrighteningThreshold:F

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mScreenDarkeningThreshold:F

.field mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShortTermModelAnchor:F

.field private mShortTermModelTimeout:J

.field private mShortTermModelValid:Z

.field private mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

.field private mTemporaryScreenBrightness:I

.field private final mWeightingIntercept:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1594
    const/high16 v0, 0x40400000  # 3.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    .line 1643
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    .line 1644
    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->MAX_AMBIENT_CLEAR_IN_DARKNESS:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;JLandroid/content/pm/PackageManager;F)V
    .registers 39
    .param p1, "callbacks"  # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p4, "lightSensor"  # Landroid/hardware/Sensor;
    .param p5, "mapper"  # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p6, "lightSensorWarmUpTime"  # I
    .param p7, "brightnessMin"  # I
    .param p8, "brightnessMax"  # I
    .param p9, "dozeScaleFactor"  # F
    .param p10, "lightSensorRate"  # I
    .param p11, "initialLightSensorRate"  # I
    .param p12, "brighteningLightDebounceConfig"  # J
    .param p14, "darkeningLightDebounceConfig"  # J
    .param p16, "resetAmbientLuxAfterWarmUpConfig"  # Z
    .param p17, "ambientBrightnessThresholds"  # Lcom/android/server/display/HysteresisLevels;
    .param p18, "screenBrightnessThresholds"  # Lcom/android/server/display/HysteresisLevels;
    .param p19, "shortTermModelTimeout"  # J
    .param p21, "packageManager"  # Landroid/content/pm/PackageManager;
    .param p22, "deepDarkBrightnessThreshold"  # F

    .line 237
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 201
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 215
    const v3, 0x3f19999a  # 0.6f

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    .line 1160
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1582
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    .line 1583
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    .line 1597
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    .line 1598
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

    .line 1611
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOnLsProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1619
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1637
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    .line 1638
    const/high16 v3, 0x7fc00000  # Float.NaN

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialAdjustmentInGameMode:F

    .line 1639
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    .line 1640
    const/high16 v3, -0x40800000  # -1.0f

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 1654
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    .line 1656
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$7;

    invoke-direct {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController$7;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    .line 1672
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$8;

    invoke-direct {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController$8;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    .line 239
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 240
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 241
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 242
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 243
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 244
    move/from16 v9, p6

    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 245
    move/from16 v10, p9

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 246
    move/from16 v11, p10

    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 247
    move/from16 v12, p11

    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 248
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 249
    move-wide/from16 v13, p12

    iput-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 250
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 251
    move/from16 v15, p16

    iput-boolean v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 252
    const/16 v3, 0x2710

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 253
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 254
    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 255
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 256
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelTimeout:J

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 258
    const/high16 v2, -0x40800000  # -1.0f

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 260
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 261
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v3, v1

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 265
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 268
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 269
    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 270
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    .line 271
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 272
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 273
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 274
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 277
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    .line 278
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_e6

    .line 280
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    .line 282
    :cond_e6
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_f6

    .line 283
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximityThreshold:F

    .line 285
    :cond_f6
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_104

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const v4, 0x10006

    if-ne v3, v4, :cond_104

    const/4 v1, 0x1

    :cond_104
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    .line 286
    sput p22, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    .line 287
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v3, v3

    const/16 v2, 0x7d0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 288
    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.drak.lux.threshold"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 289
    .local v1, "darkLuxThresholdProp":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_131

    sget v2, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    goto :goto_132

    :cond_131
    move v2, v1

    :goto_132
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    .line 290
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmStateChangedIntent:Landroid/content/Intent;

    if-nez v2, :cond_148

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-string v3, "flyme.intent.action.HBM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmStateChangedIntent:Landroid/content/Intent;

    .line 292
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmStateChangedIntent:Landroid/content/Intent;

    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    :cond_148
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppSync()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;JFF)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # J
    .param p3, "x2"  # F
    .param p4, "x3"  # F

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JFF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # F

    .line 60
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialAdjustmentInGameMode:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # I

    .line 60
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximityThreshold:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/AutomaticBrightnessController;JZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # J
    .param p3, "x2"  # Z

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLsProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/hbm/HBMController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmStateChangedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"  # I

    .line 60
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 60
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V

    return-void
.end method

.method private adjustLightSensorRate(I)V
    .registers 7
    .param p1, "lightSensorRate"  # I

    .line 618
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_3e

    .line 619
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_28

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLightSensorRate: previousRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_28
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 625
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 629
    :cond_3e
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 607
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 608
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 609
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 612
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 613
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 614
    return-void
.end method

.method private calculateAmbientClear(JJ)F
    .registers 25
    .param p1, "now"  # J
    .param p3, "horizon"  # J

    .line 1445
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_2d

    .line 1446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientClear("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_2d
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 1449
    .local v5, "N":I
    if-nez v5, :cond_3d

    .line 1450
    const-string v6, "calculateAmbientClear: No ambient light readings available"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/high16 v6, -0x40800000  # -1.0f

    return v6

    .line 1455
    :cond_3d
    const/4 v9, 0x0

    .line 1456
    .local v9, "endIndex":I
    sub-long v10, v1, v3

    .line 1457
    .local v10, "horizonStartTime":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_41
    add-int/lit8 v13, v5, -0x1

    if-ge v12, v13, :cond_56

    .line 1458
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-gtz v13, :cond_56

    .line 1459
    add-int/lit8 v9, v9, 0x1

    .line 1457
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 1464
    .end local v12  # "i":I
    :cond_56
    iget-boolean v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v12, :cond_8b

    .line 1465
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calculateAmbientClear: selected endIndex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", point=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1466
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1467
    invoke-virtual {v13, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1465
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_8b
    const/4 v6, 0x0

    .line 1470
    .local v6, "sum":F
    const/4 v12, 0x0

    .line 1471
    .local v12, "totalWeight":F
    const-wide/16 v13, 0x64

    .line 1472
    .local v13, "endTime":J
    add-int/lit8 v15, v5, -0x1

    .local v15, "i":I
    :goto_91
    if-lt v15, v9, :cond_ee

    .line 1473
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v3

    .line 1474
    .local v3, "eventTime":J
    if-ne v15, v9, :cond_a0

    cmp-long v16, v3, v10

    if-gez v16, :cond_a0

    .line 1477
    move-wide v3, v10

    .line 1479
    :cond_a0
    move-wide/from16 v16, v10

    move v11, v9

    .end local v9  # "endIndex":I
    .end local v10  # "horizonStartTime":J
    .local v11, "endIndex":I
    .local v16, "horizonStartTime":J
    sub-long v9, v3, v1

    .line 1480
    .local v9, "startTime":J
    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    .line 1481
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 1482
    .local v2, "lux":F
    move-wide/from16 v18, v3

    .end local v3  # "eventTime":J
    .local v18, "eventTime":J
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_df

    .line 1483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAmbientClear: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]: lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_df
    add-float/2addr v12, v1

    .line 1488
    mul-float v3, v2, v1

    add-float/2addr v6, v3

    .line 1489
    move-wide v13, v9

    .line 1472
    .end local v1  # "weight":F
    .end local v2  # "lux":F
    .end local v9  # "startTime":J
    .end local v18  # "eventTime":J
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move v9, v11

    move-wide/from16 v10, v16

    goto :goto_91

    .end local v11  # "endIndex":I
    .end local v16  # "horizonStartTime":J
    .local v9, "endIndex":I
    .restart local v10  # "horizonStartTime":J
    :cond_ee
    move-wide/from16 v16, v10

    move v11, v9

    .line 1491
    .end local v9  # "endIndex":I
    .end local v10  # "horizonStartTime":J
    .end local v15  # "i":I
    .restart local v11  # "endIndex":I
    .restart local v16  # "horizonStartTime":J
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_113

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientClear: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v6, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_113
    div-float v1, v6, v12

    return v1
.end method

.method private calculateAmbientLux(JJ)F
    .registers 25
    .param p1, "now"  # J
    .param p3, "horizon"  # J

    .line 718
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_2d

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientLux("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_2d
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 722
    .local v5, "N":I
    const/high16 v9, -0x40800000  # -1.0f

    if-nez v5, :cond_3d

    .line 723
    const-string v6, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v9

    .line 728
    :cond_3d
    const/4 v10, 0x0

    .line 729
    .local v10, "endIndex":I
    sub-long v11, v1, v3

    .line 730
    .local v11, "horizonStartTime":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_41
    add-int/lit8 v14, v5, -0x1

    if-ge v13, v14, :cond_56

    .line 731
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    cmp-long v14, v14, v11

    if-gtz v14, :cond_56

    .line 732
    add-int/lit8 v10, v10, 0x1

    .line 730
    add-int/lit8 v13, v13, 0x1

    goto :goto_41

    .line 737
    .end local v13  # "i":I
    :cond_56
    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v13, :cond_8b

    .line 738
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", point=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 739
    invoke-virtual {v14, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 740
    invoke-virtual {v14, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 738
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_8b
    const/4 v6, 0x0

    .line 743
    .local v6, "sum":F
    const/4 v13, 0x0

    .line 744
    .local v13, "totalWeight":F
    const-wide/16 v14, 0x64

    .line 746
    .local v14, "endTime":J
    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMaxCalculateAmbientLux:F

    .line 748
    add-int/lit8 v9, v5, -0x1

    .local v9, "i":I
    :goto_93
    if-lt v9, v10, :cond_f8

    .line 749
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v3

    .line 750
    .local v3, "eventTime":J
    if-ne v9, v10, :cond_a2

    cmp-long v16, v3, v11

    if-gez v16, :cond_a2

    .line 753
    move-wide v3, v11

    .line 755
    :cond_a2
    move-wide/from16 v16, v11

    move v12, v10

    .end local v10  # "endIndex":I
    .end local v11  # "horizonStartTime":J
    .local v12, "endIndex":I
    .local v16, "horizonStartTime":J
    sub-long v10, v3, v1

    .line 756
    .local v10, "startTime":J
    invoke-direct {v0, v10, v11, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    .line 757
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 758
    .local v2, "lux":F
    move-wide/from16 v18, v3

    .end local v3  # "eventTime":J
    .local v18, "eventTime":J
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_e1

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAmbientLux: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]: lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_e1
    add-float/2addr v13, v1

    .line 764
    mul-float v3, v2, v1

    add-float/2addr v6, v3

    .line 765
    move-wide v14, v10

    .line 767
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMaxCalculateAmbientLux:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_ee

    .line 768
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMaxCalculateAmbientLux:F

    .line 748
    .end local v1  # "weight":F
    .end local v2  # "lux":F
    .end local v10  # "startTime":J
    .end local v18  # "eventTime":J
    :cond_ee
    add-int/lit8 v9, v9, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move v10, v12

    move-wide/from16 v11, v16

    goto :goto_93

    .end local v12  # "endIndex":I
    .end local v16  # "horizonStartTime":J
    .local v10, "endIndex":I
    .restart local v11  # "horizonStartTime":J
    :cond_f8
    move-wide/from16 v16, v11

    move v12, v10

    .line 772
    .end local v9  # "i":I
    .end local v10  # "endIndex":I
    .end local v11  # "horizonStartTime":J
    .restart local v12  # "endIndex":I
    .restart local v16  # "horizonStartTime":J
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_11d

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientLux: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v6, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_11d
    div-float v1, v6, v13

    return v1
.end method

.method private calculateWeight(JJ)F
    .registers 7
    .param p1, "startDelta"  # J
    .param p3, "endDelta"  # J

    .line 781
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .registers 3

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_d

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1026
    :cond_d
    return-void
.end method

.method private clampScreenBrightness(I)I
    .registers 4
    .param p1, "value"  # I

    .line 1004
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .registers 5

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_6b

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1031
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_6b

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v1, :cond_6b

    .line 1032
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_3f

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_3f
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1040
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1041
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1042
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1043
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1039
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1046
    :cond_6b
    return-void
.end method

.method private dumpFlymePolicy(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLsProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLsProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLsProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLsProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LIGHT_SENSOR_VALUE_DEBOUNCE_DELAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayPowerController;->LIGHT_SENSOR_VALUE_DEBOUNCE_DELAY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    const-string v0, "  PROXIMITY_SENSOR_PROTECTION_LUX_THRESHOLD=800.0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAdjustmentInGameMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialAdjustmentInGameMode:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjustmentInGameMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DARKENING_LIGHT_HYSTERESIS_THRESHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDeepDarkAmbientLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFastAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v0, :cond_145

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isGameScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    invoke-interface {v1}, Lcom/android/server/policy/gamemode/GameModeController;->isGameMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isScreenBrightnessLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    invoke-interface {v1}, Lcom/android/server/policy/gamemode/GameModeController;->isScreenBrightnessLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    :cond_145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientClearRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HBM_LUX_THRESHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    if-eqz v0, :cond_18e

    .line 1405
    invoke-virtual {v0, p1}, Lcom/android/server/display/hbm/HBMController;->dump(Ljava/io/PrintWriter;)V

    .line 1407
    :cond_18e
    return-void
.end method

.method private getDeepDarkeAmbientLuxThreshold()F
    .registers 3

    .line 1500
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private handleLightSensorEvent(JFF)V
    .registers 10
    .param p1, "time"  # J
    .param p3, "lux"  # F
    .param p4, "clear"  # F

    .line 578
    float-to-int v0, p3

    const-wide/32 v1, 0x20000

    const-string v3, "ALS"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 579
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 582
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    const/high16 v2, 0x44480000  # 800.0f

    if-ne v0, v1, :cond_19

    cmpg-float v0, p3, v2

    if-lez v0, :cond_1d

    :cond_19
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightness:I

    if-lez v0, :cond_9b

    .line 583
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v3, "AutomaticBrightnessController"

    if-eqz v0, :cond_57

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLightSensorEvent :cancel update because of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    if-ne v4, v1, :cond_39

    cmpg-float v1, p3, v2

    if-gtz v1, :cond_39

    const-string/jumbo v1, "proximity sensor positive "

    goto :goto_4d

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "temporary screen brightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_9a

    .line 587
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    if-eqz v0, :cond_72

    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_72

    .line 588
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->MAX_AMBIENT_CLEAR_IN_DARKNESS:F

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    goto :goto_74

    .line 590
    :cond_72
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 592
    :goto_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize fast ambient lux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", clear = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFastAmbientLux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_9a
    return-void

    .line 598
    :cond_9b
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_a8

    .line 600
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 602
    :cond_a8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 604
    return-void
.end method

.method private handleLsProximitySensorEvent(JZ)V
    .registers 8
    .param p1, "time"  # J
    .param p3, "positive"  # Z

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightSensor P-Sensor changed positive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mLsProximitySensorEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    if-eqz v0, :cond_3f

    .line 1433
    if-eqz p3, :cond_36

    .line 1434
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnLsProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1435
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    .line 1436
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    goto :goto_3f

    .line 1439
    :cond_36
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnLsProximityNegativeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1442
    :cond_3f
    :goto_3f
    return-void
.end method

.method private invalidateShortTermModel()V
    .registers 3

    .line 467
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_b

    .line 468
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 471
    return-void
.end method

.method private static isInteractivePolicy(I)Z
    .registers 2
    .param p0, "policy"  # I

    .line 425
    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 791
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 792
    .local v0, "N":I
    move-wide v1, p1

    .line 793
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 794
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_18

    .line 795
    goto :goto_21

    .line 797
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 793
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 799
    .end local v3  # "i":I
    :cond_21
    :goto_21
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .registers 10
    .param p1, "time"  # J

    .line 803
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 804
    .local v0, "N":I
    move-wide v1, p1

    .line 805
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 806
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_18

    .line 807
    goto :goto_21

    .line 809
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 805
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 812
    .end local v3  # "i":I
    :cond_21
    :goto_21
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_32

    .line 813
    const-wide/16 v3, 0x2

    iget-wide v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    mul-long/2addr v5, v3

    add-long/2addr v5, v1

    return-wide v5

    .line 816
    :cond_32
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private prepareBrightnessAdjustmentSample()V
    .registers 5

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_18

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_11

    :cond_f
    const/high16 v0, -0x40800000  # -1.0f

    :goto_11
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1012
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    goto :goto_1d

    .line 1014
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1017
    :goto_1d
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1019
    return-void
.end method

.method private registerForegroundAppUpdater()V
    .registers 4

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1055
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1061
    goto :goto_26

    .line 1056
    :catch_b
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_26

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register foreground app updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void
.end method

.method private setAmbientLux(F)V
    .registers 11
    .param p1, "lux"  # F

    .line 648
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v1, ")"

    const-string v2, "AutomaticBrightnessController"

    if-eqz v0, :cond_20

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAmbientLux("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_20
    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2b

    .line 653
    const-string v3, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 p1, 0x0

    .line 658
    :cond_2b
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    if-eqz v3, :cond_44

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v4, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_44

    sget v3, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_44

    .line 659
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    invoke-virtual {v3}, Lcom/android/server/display/hbm/HBMController;->sendHBMTipsNotificationIfNeeded()V

    .line 663
    :cond_44
    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpg-float v4, p1, v3

    const/high16 v5, 0x40000000  # 2.0f

    if-gtz v4, :cond_5c

    .line 664
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_54

    move v3, p1

    goto :goto_59

    :cond_54
    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_59
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_5e

    .line 666
    :cond_5c
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 671
    :goto_5e
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v4

    cmpg-float v3, v3, v4

    const/high16 v4, -0x40800000  # -1.0f

    const/high16 v6, 0x41200000  # 10.0f

    if-gtz v3, :cond_ab

    .line 672
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 673
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v5, v3, v0

    if-lez v5, :cond_79

    const v5, 0x3e4ccccd  # 0.2f

    mul-float/2addr v3, v5

    goto :goto_7a

    :cond_79
    move v3, v4

    :goto_7a
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 674
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mMaxCalculateAmbientLux:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_85

    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    goto :goto_8b

    :cond_85
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 675
    .local v0, "deepDarkAmbientLuxThreshold":F
    :goto_8b
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide v7, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpl-double v3, v5, v7

    if-lez v3, :cond_aa

    .line 676
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    .line 677
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDeepDarkAmbientLuxThreshold:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "persist.sys.drak.lux.threshold"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .end local v0  # "deepDarkAmbientLuxThreshold":F
    :cond_aa
    goto :goto_f9

    :cond_ab
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c4

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_c4

    .line 680
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 681
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_f9

    .line 682
    :cond_c4
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v3, 0x42480000  # 50.0f

    cmpg-float v3, v0, v3

    const/high16 v6, 0x40200000  # 2.5f

    if-gez v3, :cond_d6

    .line 683
    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 684
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_f9

    .line 685
    :cond_d6
    const/high16 v3, 0x42c80000  # 100.0f

    cmpg-float v3, v0, v3

    const v7, 0x3ecccccc  # 0.39999998f

    if-gtz v3, :cond_e6

    .line 686
    mul-float/2addr v5, v0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 687
    mul-float/2addr v0, v7

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_f9

    .line 688
    :cond_e6
    const/high16 v3, 0x44fa0000  # 2000.0f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_f3

    .line 689
    mul-float/2addr v6, v0

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 690
    mul-float/2addr v0, v7

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    goto :goto_f9

    .line 692
    :cond_f3
    mul-float/2addr v5, v0

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 693
    mul-float/2addr v0, v7

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 698
    :goto_f9
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez v0, :cond_16d

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_16d

    .line 699
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float v4, v0, v3

    sub-float v4, v0, v4

    .line 701
    .local v4, "minAmbientLux":F
    mul-float/2addr v3, v0

    add-float/2addr v0, v3

    .line 703
    .local v0, "maxAmbientLux":F
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v5, v4, v3

    if-gez v5, :cond_141

    cmpg-float v3, v3, v0

    if-gez v3, :cond_141

    .line 704
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_13d

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_13d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    goto :goto_16d

    .line 710
    :cond_141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 715
    .end local v0  # "maxAmbientLux":F
    .end local v4  # "minAmbientLux":F
    :cond_16d
    :goto_16d
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .registers 10
    .param p1, "adjustment"  # F

    .line 634
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    if-eqz v0, :cond_6

    .line 635
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    .line 638
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 639
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 640
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 641
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 642
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2b

    const/high16 v0, -0x40800000  # -1.0f

    goto :goto_33

    :cond_2b
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_33
    move v5, v0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 643
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v7

    .line 641
    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(FFFFF)Z

    move-result v0

    return v0
.end method

.method private setDisplayPolicy(I)Z
    .registers 5
    .param p1, "policy"  # I

    .line 405
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_6

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 409
    .local v0, "oldPolicy":I
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 410
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_2c

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display policy transitioning from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2c
    const/4 v1, 0x1

    return v1
.end method

.method private setHBMModeEnabled(ZJ)V
    .registers 8
    .param p1, "enable"  # Z
    .param p2, "delayMillis"  # J

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHBMModeEnabled : enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mHBMModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",delayMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_65

    .line 1359
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    if-nez v2, :cond_92

    .line 1360
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1361
    cmp-long v0, p2, v0

    if-gtz v0, :cond_53

    .line 1362
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1363
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_92

    .line 1364
    :cond_53
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1365
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_92

    .line 1369
    :cond_65
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMModeEnabled:Z

    if-eqz v2, :cond_92

    .line 1370
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1371
    cmp-long v0, p2, v0

    if-gtz v0, :cond_81

    .line 1372
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1373
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_92

    .line 1374
    :cond_81
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1376
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisableHBMModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1380
    :cond_92
    :goto_92
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .registers 8
    .param p1, "enable"  # Z

    .line 539
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_36

    .line 540
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_71

    .line 541
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 543
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 544
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->registerForegroundAppUpdater()V

    .line 545
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 548
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v0, :cond_2f

    .line 549
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

    invoke-interface {v0, v2}, Lcom/android/server/policy/gamemode/GameModeController;->addCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V

    .line 551
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutomaticBrightnessScreenOnBlockStartRealTime:J

    .line 553
    return v1

    .line 555
    :cond_36
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_71

    .line 556
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 557
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 558
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 559
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 560
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 561
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 562
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->unregisterForegroundAppUpdater()V

    .line 564
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 566
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v2, :cond_65

    .line 567
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeCallback:Lcom/android/server/policy/gamemode/GameModeController$Callback;

    invoke-interface {v2, v3}, Lcom/android/server/policy/gamemode/GameModeController;->removeCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V

    .line 569
    :cond_65
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientClearRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 570
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateHBMState(Z)V

    .line 571
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    .line 574
    :cond_71
    return v0
.end method

.method private setLsProximitySensorEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightSensor P-Sensor enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLsProximitySensorEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v0, -0x1

    if-eqz p1, :cond_39

    .line 1412
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    if-nez v1, :cond_49

    .line 1415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    .line 1416
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    .line 1417
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_49

    .line 1420
    :cond_39
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    if-eqz v1, :cond_49

    .line 1423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorEnabled:Z

    .line 1424
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    .line 1425
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1428
    :cond_49
    :goto_49
    return-void
.end method

.method private setScreenBrightnessByUser(F)Z
    .registers 10
    .param p1, "brightness"  # F

    .line 431
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 440
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 441
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 442
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 443
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 444
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_29

    const/high16 v1, -0x40800000  # -1.0f

    goto :goto_31

    :cond_29
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    :goto_31
    move v5, v1

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 445
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDeepDarkeAmbientLuxThreshold()F

    move-result v7

    .line 443
    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FFFFF)V

    .line 446
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 447
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    if-eqz v1, :cond_52

    .line 448
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    .line 452
    :cond_52
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateHBMState(Z)V

    .line 454
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_71

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortTermModel: anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_71
    return v0
.end method

.method private unregisterForegroundAppUpdater()V
    .registers 3

    .line 1066
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1069
    goto :goto_9

    .line 1067
    :catch_8
    move-exception v0

    .line 1070
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1072
    return-void
.end method

.method private updateAmbientLux()V
    .registers 6

    .line 821
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v1, 0x44480000  # 800.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_27

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAmbientLux LightSensor P-Sensor :cancel update because of mLsProximitySensor P-sensor positive, mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 826
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 827
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 828
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 829
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 4
    .param p1, "time"  # J

    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(JZ)V

    .line 1346
    return-void
.end method

.method private updateAmbientLux(JZ)V
    .registers 23
    .param p1, "time"  # J
    .param p3, "force"  # Z

    .line 836
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v4, "Use RGBC in distinguishing darkness and dim, mAmbientLux = "

    const-string v6, ", mAmbientLux="

    const/4 v7, 0x0

    const-string v8, ", ambientClear = "

    const-wide/16 v9, 0x7d0

    const/4 v11, 0x1

    const-string v12, "AutomaticBrightnessController"

    if-nez v3, :cond_bc

    .line 837
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v13, v3

    move-object v15, v6

    iget-wide v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v13, v5

    .line 839
    .local v13, "timeWhenSensorWarmedUp":J
    cmp-long v5, v1, v13

    if-gez v5, :cond_46

    .line 840
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_40

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAmbientLux: Sensor not ready yet: time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", timeWhenSensorWarmedUp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_40
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v11, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 847
    return-void

    .line 850
    :cond_46
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v5

    .line 851
    .local v5, "ambientLux":F
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    if-eqz v6, :cond_88

    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_88

    .line 852
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientClear(JJ)F

    move-result v6

    .line 853
    .local v6, "ambientClear":F
    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->MAX_AMBIENT_CLEAR_IN_DARKNESS:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", ambientLux = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v6  # "ambientClear":F
    goto :goto_8b

    .line 856
    :cond_88
    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 858
    :goto_8b
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->finishScreenTurningOn()V

    .line 862
    iput-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v6, v15

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v3, 0x0

    invoke-direct {v0, v11, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 871
    .end local v5  # "ambientLux":F
    .end local v13  # "timeWhenSensorWarmedUp":J
    :cond_bc
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v9

    .line 872
    .local v9, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v13

    .line 881
    .local v13, "nextDarkenTransition":J
    move-object v5, v4

    const-wide/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    .line 882
    .local v3, "slowAmbientLux":F
    move-object v15, v12

    const-wide/16 v11, 0x7d0

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v4

    .line 884
    .local v4, "fastAmbientLux":F
    const/high16 v17, -0x40800000  # -1.0f

    .line 885
    .local v17, "ambientClear":F
    sget-boolean v18, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    if-eqz v18, :cond_114

    sget v18, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpg-float v18, v4, v18

    if-gtz v18, :cond_114

    .line 886
    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientClear(JJ)F

    move-result v7

    .line 887
    .end local v17  # "ambientClear":F
    .local v7, "ambientClear":F
    sget v11, Lcom/android/server/display/AutomaticBrightnessController;->MAX_AMBIENT_CLEAR_IN_DARKNESS:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    .line 888
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Use RGBC in distinguishing darkness and dim, fastAmbientLux = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", mFastAmbientLux = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v15

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    .line 885
    .end local v7  # "ambientClear":F
    .restart local v17  # "ambientClear":F
    :cond_114
    move-object v12, v15

    .line 890
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    move/from16 v7, v17

    .line 893
    .end local v17  # "ambientClear":F
    .restart local v7  # "ambientClear":F
    :goto_11d
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v11, :cond_130

    invoke-interface {v11}, Lcom/android/server/policy/gamemode/GameModeController;->isGameMode()Z

    move-result v11

    if-eqz v11, :cond_130

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    invoke-interface {v11}, Lcom/android/server/policy/gamemode/GameModeController;->isScreenBrightnessLocked()Z

    move-result v11

    if-eqz v11, :cond_130

    .line 894
    return-void

    .line 897
    :cond_130
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v11, v4, v11

    if-ltz v11, :cond_140

    cmp-long v11, v9, v1

    if-lez v11, :cond_178

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isLightRiseTimeAfterWarmUp()Z

    move-result v11

    if-nez v11, :cond_178

    :cond_140
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v15, v3, v11

    if-gtz v15, :cond_164

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_164

    cmp-long v11, v13, v1

    if-lez v11, :cond_154

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isLightRiseTimeAfterWarmUp()Z

    move-result v11

    if-eqz v11, :cond_164

    :cond_154
    sget-boolean v11, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    if-eqz v11, :cond_178

    sget v11, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpl-float v11, v4, v11

    if-gtz v11, :cond_178

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v11, v7, v11

    if-lez v11, :cond_178

    :cond_164
    if-nez p3, :cond_178

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_209

    const/high16 v11, 0x42480000  # 50.0f

    cmpl-float v11, v4, v11

    if-lez v11, :cond_209

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxFastAdaptationTime()Z

    move-result v11

    if-eqz v11, :cond_209

    .line 908
    :cond_178
    sget-boolean v11, Lcom/android/server/display/AutomaticBrightnessController;->USE_RGBC_IN_DISTINGUISHING_DARKNESS_DIM:Z

    if-eqz v11, :cond_1b2

    sget v11, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_HYSTERESIS_THRESHOLD:F

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_1b2

    .line 909
    sget v11, Lcom/android/server/display/AutomaticBrightnessController;->MAX_AMBIENT_CLEAR_IN_DARKNESS:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-direct {v0, v11}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 910
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", fastAmbientLux = "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b5

    .line 912
    :cond_1b2
    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 916
    :goto_1b5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAmbientLux: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1c9

    const-string v8, "Brightened"

    goto :goto_1cb

    :cond_1c9
    const-string v8, "Darkened"

    :goto_1cb
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": mBrighteningLuxThreshold="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", mBrighteningLuxThreshold="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mAmbientLightRingBuffer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 916
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v0, v6, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 924
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v9

    .line 925
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v13

    .line 927
    :cond_209
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 935
    .local v15, "nextTransitionTime":J
    cmp-long v6, v15, v1

    if-lez v6, :cond_213

    move-wide v5, v15

    goto :goto_217

    :cond_213
    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v5, v6

    add-long/2addr v5, v1

    .line 936
    .end local v15  # "nextTransitionTime":J
    .local v5, "nextTransitionTime":J
    :goto_217
    iget-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v8, :cond_237

    .line 937
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 938
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 937
    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_237
    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 941
    return-void
.end method

.method private updateAutoBrightness(ZZ)V
    .registers 8
    .param p1, "sendUpdate"  # Z
    .param p2, "isManuallySet"  # Z

    .line 946
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 947
    return-void

    .line 950
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    .line 955
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsMzGameMode:Z

    const-string v2, "AutomaticBrightnessController"

    if-eqz v1, :cond_5b

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialAdjustmentInGameMode:F

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5b

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    .line 956
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5b

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAutoBrightness for game mode, mInitialAdjustmentInGameMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialAdjustmentInGameMode:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mAdjustmentInGameMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustmentInGameMode:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutomaticBrightnessDefaultMinLevel()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 962
    :cond_5b
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 963
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v1

    .line 981
    .local v1, "newScreenAutoBrightness":I
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v3, v1, :cond_a5

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 989
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v3, v1

    .line 990
    invoke-virtual {v2, v3}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    .line 991
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v3, v1

    .line 992
    invoke-virtual {v2, v3}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    .line 994
    if-eqz p1, :cond_a5

    .line 995
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 999
    :cond_a5
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateHBMState(Z)V

    .line 1001
    return-void
.end method

.method private updateForegroundApp()V
    .registers 3

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_b

    .line 1077
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Attempting to update foreground app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_b
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1111
    return-void
.end method

.method private updateForegroundAppSync()V
    .registers 3

    .line 1114
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_26

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating foreground app: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 1120
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 1121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    .line 1122
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1123
    return-void
.end method

.method private updateHBMState(Z)V
    .registers 7
    .param p1, "updateByUser"  # Z

    .line 1533
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_49

    .line 1534
    invoke-virtual {v0}, Lcom/android/server/display/hbm/HBMController;->isHBMSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    float-to-int v0, v0

    sget v3, Lcom/android/server/display/DisplayPowerController;->HBM_LUX_THRESHOLD:I

    if-le v0, v3, :cond_49

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v0, v3, :cond_49

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightness:I

    if-lez v0, :cond_25

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v0, v3, :cond_49

    :cond_25
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    .line 1540
    invoke-virtual {v0}, Lcom/android/server/display/hbm/HBMController;->isHBMRestricted()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1542
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1544
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasClient()Z

    move-result v4

    if-eqz v4, :cond_45

    const-wide/16 v1, 0x64

    :cond_45
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setHBMModeEnabled(ZJ)V

    .line 1545
    .end local v0  # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    goto :goto_57

    .line 1547
    :cond_49
    const/4 v0, 0x0

    if-nez p1, :cond_54

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    goto :goto_54

    :cond_52
    const-wide/16 v1, 0x1388

    :cond_54
    :goto_54
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setHBMModeEnabled(ZJ)V

    .line 1549
    :goto_57
    return-void
.end method

.method private weightIntegral(J)F
    .registers 6
    .param p1, "x"  # J

    .line 787
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public SetAutomaticBrightnessChangesContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"  # Landroid/content/Context;

    .line 1341
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 1342
    return-void
.end method

.method public configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZIZZFI)V
    .registers 28
    .param p1, "enable"  # Z
    .param p2, "configuration"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p3, "brightness"  # F
    .param p4, "userChangedBrightness"  # Z
    .param p5, "adjustment"  # F
    .param p6, "userChangedAutoBrightnessAdjustment"  # Z
    .param p7, "displayPolicy"  # I
    .param p8, "turningOnFromDim"  # Z
    .param p9, "turnningOnFromOff"  # Z
    .param p10, "temporaryAutoBrightnessAdjustment"  # F
    .param p11, "temporaryScreenBrightness"  # I

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    move v5, v4

    goto :goto_d

    :cond_c
    move v5, v3

    .line 346
    .local v5, "dozing":Z
    :goto_d
    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v7

    .line 347
    .local v7, "changed":Z
    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 349
    if-eqz p6, :cond_22

    .line 350
    move/from16 v8, p5

    invoke-direct {v0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result v9

    or-int/2addr v7, v9

    goto :goto_24

    .line 349
    :cond_22
    move/from16 v8, p5

    .line 352
    :goto_24
    if-eqz p4, :cond_30

    if-eqz p1, :cond_30

    .line 355
    move/from16 v9, p3

    invoke-direct {v0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result v10

    or-int/2addr v7, v10

    goto :goto_32

    .line 352
    :cond_30
    move/from16 v9, p3

    .line 357
    :goto_32
    if-nez p4, :cond_39

    if-eqz p6, :cond_37

    goto :goto_39

    :cond_37
    move v10, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v10, v4

    .line 359
    .local v10, "userInitiatedChange":Z
    :goto_3a
    if-eqz v10, :cond_43

    if-eqz p1, :cond_43

    if-nez v5, :cond_43

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 362
    :cond_43
    if-eqz p1, :cond_49

    if-nez v5, :cond_49

    move v11, v4

    goto :goto_4a

    :cond_49
    move v11, v3

    :goto_4a
    invoke-direct {v0, v11}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v11

    or-int/2addr v7, v11

    .line 365
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMController:Lcom/android/server/display/hbm/HBMController;

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_67

    if-eqz v7, :cond_5a

    const/4 v11, 0x3

    if-ne v1, v11, :cond_64

    :cond_5a
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightness:I

    if-eq v11, v2, :cond_67

    if-lez v2, :cond_67

    sget v11, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-eq v2, v11, :cond_67

    .line 368
    :cond_64
    invoke-direct {v0, v3, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->setHBMModeEnabled(ZJ)V

    .line 370
    :cond_67
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightness:I

    .line 371
    if-eqz p1, :cond_6f

    if-nez v5, :cond_6f

    move v11, v4

    goto :goto_70

    :cond_6f
    move v11, v3

    :goto_70
    invoke-direct {v0, v11}, Lcom/android/server/display/AutomaticBrightnessController;->setLsProximitySensorEnabled(Z)V

    .line 372
    or-int v7, v7, p8

    .line 373
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v14, p10

    invoke-virtual {v11, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->setTemporaryAutoBrightnessAdjustment(F)Z

    move-result v11

    or-int/2addr v7, v11

    .line 374
    if-eqz v7, :cond_bd

    .line 375
    if-nez p8, :cond_86

    .line 376
    invoke-direct {v0, v3, v10}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    goto :goto_bd

    .line 378
    :cond_86
    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v11, :cond_ba

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLsProximity:I

    if-ne v11, v4, :cond_96

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v15, 0x44480000  # 800.0f

    cmpg-float v11, v11, v15

    if-lez v11, :cond_ba

    .line 379
    :cond_96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Turnning on from dim, force update ambient lux"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "AutomaticBrightnessController"

    invoke-static {v15, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v11, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-direct {v0, v12, v13, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(JZ)V

    .line 383
    :cond_ba
    invoke-direct {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateHBMState(Z)V

    .line 386
    :cond_bd
    :goto_bd
    if-eqz p9, :cond_cd

    iget-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    const-wide/16 v11, 0x0

    cmp-long v3, v3, v11

    if-gtz v3, :cond_cd

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    .line 390
    :cond_cd
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 482
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 483
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 497
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 527
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 529
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 530
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dumpFlymePolicy(Ljava/io/PrintWriter;)V

    .line 536
    return-void
.end method

.method finishScreenTurningOn()V
    .registers 6

    .line 1517
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz v0, :cond_30

    .line 1518
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1519
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1520
    if-eqz v0, :cond_e

    .line 1521
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 1523
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutomaticBrightnessScreenOnBlockStartRealTime:J

    sub-long/2addr v1, v3

    .line 1524
    .local v1, "delay":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Automatic brightness unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutomaticBrightnessController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    .end local v0  # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .end local v1  # "delay":J
    :cond_30
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .registers 3

    .line 316
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 321
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 322
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 324
    :cond_f
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public hasValidAmbientLux()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public initialize()V
    .registers 2

    .line 1552
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    .line 1572
    return-void
.end method

.method public isAmbientLuxFastAdaptationTime()Z
    .registers 7

    .line 1353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    const-wide/16 v4, 0xbb8

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

.method public isAmbientLuxFastAdaptationTimeBeforeScreenON()Z
    .registers 7

    .line 1349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxFastAdaptationTime:J

    const-wide/16 v4, 0x12c

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

.method isAutomaticBrightnessBlockScreenOn()Z
    .registers 2

    .line 1529
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public isLightRiseTimeAfterWarmUp()Z
    .registers 7

    .line 1337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public resetShortTermModel()V
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 463
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 464
    return-void
.end method

.method screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 6
    .param p1, "screenOnListener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1504
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-nez v0, :cond_26

    .line 1505
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_c

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->finishScreenTurningOn()V

    goto :goto_26

    .line 1508
    :cond_c
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1509
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    add-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1511
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Automatic brightness blocked screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_26
    :goto_26
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "configuration"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 474
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 475
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 476
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"  # Z

    .line 307
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    .line 311
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 312
    const/4 v0, 0x1

    return v0
.end method
