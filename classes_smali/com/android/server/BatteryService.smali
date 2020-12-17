.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$LightSensorListener;,
        Lcom/android/server/BatteryService$SettingsObserver;,
        Lcom/android/server/BatteryService$AlertThread;,
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final ACTION_BATTERY_REVERSE_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_REVERSE_CHANGED"

.field private static final ACTION_REVERSE_CHARGING_CLOSE:Ljava/lang/String; = "close_reverse_charging"

.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_REVERSE_STATUS_CHARGING:I = 0x2

.field private static final BATTERY_REVERSE_STATUS_STOP:I = 0x0

.field private static final BATTERY_REVERSE_STATUS_UNKNOWN:I = 0x3

.field private static final BATTERY_REVERSE_STATUS_WAITING:I = 0x1

.field private static final BATTERY_SCALE:I = 0x64

.field private static final CHARGE_THMERAL_PATH:Ljava/lang/String; = "/sys/class/meizu/charger/hlos_cur_voter"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_STOP_REASON:I = 0x0

.field private static final DISABLE_REVERSE_CHARGING:I = 0x0

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final ENABLE_REVERSE_CHARGING:I = 0x1

.field private static final EXTRA_REVERSE_STATUS:Ljava/lang/String; = "reverse_status"

.field private static final EXTRA_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final FAN_MODE_NORMAL:I = 0x0

.field private static final FAN_MODE_PATH:Ljava/lang/String; = "/sys/class/meizu/wireless/fan_quiet"

.field private static final FAN_MODE_QUIET:I = 0x1

.field private static final FAST_CHARGE_PROP:Ljava/lang/String; = "persist.sys.fast_charge"

.field private static final FAST_CHARGE_WATT:I = 0xb71b00

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final INDEX_BATTERY_TEMP:I = 0x0

.field private static final INDEX_PCB_TEMP:I = 0x1

.field private static final INDEX_WATT:I = 0x2

.field private static final LIGHT_SENSOR_PERIOD:J = 0x3e8L

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field private static final MUTE_END_HOUR:I = 0x7

.field private static final MUTE_START_HOUR:I = 0x16

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final OVER_LOW_VOLT:Ljava/lang/String; = "battery.low.volt"

.field private static final PLAY_REVERSE_CHARGING_FEEDBACK:I = 0x2

.field private static final RETRY_COUNT:I = 0x4

.field private static final REVERSE_CHARGING_CONTROL_NAME:Ljava/lang/String; = "reverse_chg_enable"

.field private static final REVERSE_CHARGING_CONTROL_PATH:Ljava/lang/String; = "/sys/class/meizu/wireless/"

.field private static final REVERSE_CHARGING_LIMITING_LEVEL:Ljava/lang/String; = "reverse_charging_limiting_level"

.field private static final REVERSE_CHARGING_LIMITING_LEVEL_20:I = 0x14

.field private static final REVERSE_CHARGING_LIMITING_LEVEL_30:I = 0x1e

.field private static final REVERSE_CHARGING_LIMITING_LEVEL_40:I = 0x28

.field private static final REVERSE_CHARGING_LIMITING_LEVEL_50:I = 0x32

.field private static final REVERSE_CHARGING_LIMITING_LEVEL_60:I = 0x3c

.field private static final REVERSE_CHARGING_OBSERVE_PATH:Ljava/lang/String; = "DEVPATH=/devices/platform/soc/a8c000.i2c/i2c-4/4-002b"

.field private static final REVERSE_CHARGING_STATE_NAME:Ljava/lang/String; = "reverse_chg_stat"

.field private static final REVERSE_CHARGING_TIMEOUT:I = 0xea60

.field private static final REVERSE_CHARGING_TIMEOUT_MSG:I = 0x1

.field private static final SCREEN_OFF_CHARGE_WATT_MSG:I = 0x3

.field private static final SLEEP_LUX:I = 0x14

.field private static final STOP_REASON_BY_USER:I = 0x3

.field private static final STOP_REASON_POWER_LIMIT:I = 0x2

.field private static final STOP_REASON_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final WIRELESS_VIBRATION_AMPLITUDE:[I

.field private static final WIRELESS_VIBRATION_TIME:[J


# instance fields
.field private SCREEN_ON_CHARGE_WATT_THMERAL:[[I

.field private isScreenOn:Z

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAlertThread:Lcom/android/server/BatteryService$AlertThread;

.field mBatteryHandler:Landroid/os/Handler;

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLow10:Z

.field private mBatteryLow20:Z

.field private mBatteryLow5:Z

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mCurrentChargeWattIndex:I

.field private mCurrentFanMode:I

.field private mCurrentSensorElapsed:J

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mEnableScreen:Z

.field private mFastChargeStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasFanModeFunc:Z

.field private mHasRegisterLightListener:Z

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mInvalidCharger:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private mLastFastChargeStatus:I

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLastReverseStatus:I

.field private mLastSendBatteryTemperature:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Lcom/android/server/BatteryService$LightSensorListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mLowestVolt:D

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mRetryCount:I

.field mReverseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mReverseChargingLimitingLevel:I

.field private mReverseStatus:I

.field private mSamplePeriod:J

.field mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSendBatteryLowWarningDialog:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mSettingsObserver:Lcom/android/server/BatteryService$SettingsObserver;

.field private mShutdownBatteryTemperature:I

.field private mSleepEndTime:J

.field private mSleepStartTime:J

.field private mStopReason:I

.field private mUpdatesStopped:Z

.field private mVibrator:Landroid/os/Vibrator;

.field mzAlertIntentAction:Ljava/lang/String;

.field mz_cts_version:Z

.field mz_debug_nocharge:Z

.field mz_full_msg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 156
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 171
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 296
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/android/server/BatteryService;->WIRELESS_VIBRATION_TIME:[J

    .line 300
    new-array v0, v0, [I

    fill-array-data v0, :array_82

    sput-object v0, Lcom/android/server/BatteryService;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 304
    sget-object v0, Lcom/android/server/BatteryService;->WIRELESS_VIBRATION_TIME:[J

    sget-object v1, Lcom/android/server/BatteryService;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 305
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 307
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 308
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 307
    return-void

    :array_3e
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_82
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 249
    iput v1, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    .line 250
    iput v1, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    .line 260
    iput v1, p0, Lcom/android/server/BatteryService;->mStopReason:I

    .line 276
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/BatteryService;->mReverseChargingLimitingLevel:I

    .line 291
    iput v1, p0, Lcom/android/server/BatteryService;->mFastChargeStatus:I

    .line 292
    iput v1, p0, Lcom/android/server/BatteryService;->mLastFastChargeStatus:I

    .line 319
    iput v1, p0, Lcom/android/server/BatteryService;->mCurrentFanMode:I

    .line 320
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mHasFanModeFunc:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mHasRegisterLightListener:Z

    .line 327
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mCurrentSensorElapsed:J

    .line 328
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSleepStartTime:J

    .line 329
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSleepEndTime:J

    .line 330
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSamplePeriod:J

    .line 332
    iput v1, p0, Lcom/android/server/BatteryService;->mRetryCount:I

    .line 334
    const/4 v2, 0x5

    new-array v2, v2, [[I

    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_13a

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_144

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_14e

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_158

    aput-object v4, v2, v3

    new-array v3, v3, [I

    fill-array-data v3, :array_162

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    .line 340
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->isScreenOn:Z

    .line 341
    iput v1, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    .line 1803
    const-string/jumbo v2, "meizu.intent.action.USB_CHARCH_TMEPERATURE_DIALOG"

    iput-object v2, p0, Lcom/android/server/BatteryService;->mzAlertIntentAction:Ljava/lang/String;

    .line 1804
    new-instance v2, Lcom/android/server/BatteryService$AlertThread;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$AlertThread;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mAlertThread:Lcom/android/server/BatteryService$AlertThread;

    .line 1878
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mz_full_msg:Z

    .line 1879
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mz_debug_nocharge:Z

    .line 1880
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mz_cts_version:Z

    .line 1882
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mEnableScreen:Z

    .line 1883
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z

    .line 1884
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryLow20:Z

    .line 1885
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryLow10:Z

    .line 1886
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryLow5:Z

    .line 1888
    const-wide v1, 0x40a8380000000000L  # 3100.0

    iput-wide v1, p0, Lcom/android/server/BatteryService;->mLowestVolt:D

    .line 1984
    new-instance v1, Lcom/android/server/BatteryService$13;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryHandler:Landroid/os/Handler;

    .line 2125
    new-instance v1, Lcom/android/server/BatteryService$14;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mReverseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2298
    new-instance v1, Lcom/android/server/BatteryService$15;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 349
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 350
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 351
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 352
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 354
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 356
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 358
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 360
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 363
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 364
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 367
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 368
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 379
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 382
    .end local v0  # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_138
    return-void

    nop

    :array_13a
    .array-data 4
        0x172
        0xabe0
        0x4
    .end array-data

    :array_144
    .array-data 4
        0x17d
        0xafc8
        0x3
    .end array-data

    :array_14e
    .array-data 4
        0x191
        0xb3b0
        0x2
    .end array-data

    :array_158
    .array-data 4
        0x1af
        0xb798
        0x1
    .end array-data

    :array_162
    .array-data 4
        0x1bd
        0xbb80
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # I

    .line 155
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # Landroid/hardware/health/V2_0/HealthInfo;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 155
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # Ljava/io/FileDescriptor;
    .param p2, "x2"  # Ljava/io/PrintWriter;
    .param p3, "x3"  # [Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    invoke-direct {p0}, Lcom/android/server/BatteryService;->handleSettingsChanged()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/BatteryService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->disableReverseStatusLocked(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    invoke-direct {p0}, Lcom/android/server/BatteryService;->playChargingStartedFeedback()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    invoke-direct {p0}, Lcom/android/server/BatteryService;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mCurrentSensorElapsed:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # J

    .line 155
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mCurrentSensorElapsed:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSleepStartTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # J

    .line 155
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSleepStartTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSamplePeriod:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/BatteryService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->controlFanModeLocked(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSleepEndTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/server/BatteryService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # J

    .line 155
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSleepEndTime:J

    return-wide p1
.end method

.method static synthetic access$3802(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;
    .param p1, "x1"  # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BatteryService;

    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 155
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private controlChargeWatt(I)V
    .registers 11
    .param p1, "batteryTemperature"  # I

    .line 2254
    const/4 v0, 0x0

    .line 2255
    .local v0, "pcbTemp":I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->isScreenOn:Z

    if-eqz v1, :cond_ae

    .line 2256
    const/4 v1, 0x0

    .line 2257
    .local v1, "batteryTempIndex":I
    const/4 v2, 0x0

    .line 2258
    .local v2, "pcbTempIndex":I
    const-string v3, "/sys/class/meizu/pcb_temp/temp"

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->getTemperature(Ljava/lang/String;)I

    move-result v0

    .line 2259
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_e
    iget-object v4, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_34

    .line 2260
    array-length v5, v4

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v3, v5, :cond_29

    .line 2261
    aget-object v5, v4, v3

    aget v5, v5, v7

    if-le p1, v5, :cond_31

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aget v4, v4, v7

    if-gt p1, v4, :cond_31

    .line 2262
    move v1, v3

    .line 2263
    goto :goto_34

    .line 2266
    :cond_29
    aget-object v4, v4, v3

    aget v4, v4, v7

    if-lt p1, v4, :cond_31

    .line 2267
    move v1, v3

    .line 2268
    goto :goto_34

    .line 2259
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2273
    .end local v3  # "index":I
    :cond_34
    :goto_34
    const/4 v3, 0x0

    .restart local v3  # "index":I
    :goto_35
    iget-object v4, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_59

    .line 2274
    array-length v5, v4

    sub-int/2addr v5, v6

    if-eq v3, v5, :cond_4e

    .line 2275
    aget-object v5, v4, v3

    aget v5, v5, v6

    if-le v0, v5, :cond_56

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aget v4, v4, v6

    if-gt v0, v4, :cond_56

    .line 2276
    move v2, v3

    .line 2277
    goto :goto_59

    .line 2280
    :cond_4e
    aget-object v4, v4, v3

    aget v4, v4, v6

    if-lt v0, v4, :cond_56

    .line 2281
    move v2, v3

    .line 2282
    goto :goto_59

    .line 2273
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 2286
    .end local v3  # "index":I
    :cond_59
    :goto_59
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2287
    .restart local v3  # "index":I
    iget v4, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    if-eq v4, v3, :cond_ae

    .line 2288
    iget-object v4, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    aget-object v4, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    const-string v6, "/sys/class/meizu/charger/hlos_cur_voter"

    invoke-direct {p0, v6, v4}, Lcom/android/server/BatteryService;->writeFile(Ljava/lang/String;I)V

    .line 2289
    iput v3, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    .line 2291
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentChargeWatt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    iget v8, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    aget-object v7, v7, v8

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " batteryTemp : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pcbTemp : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pcbTempIndex : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " batteryTempIndex : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    .end local v1  # "batteryTempIndex":I
    .end local v2  # "pcbTempIndex":I
    .end local v3  # "index":I
    :cond_ae
    return-void
.end method

.method private controlFanModeLocked(I)V
    .registers 4
    .param p1, "mode"  # I

    .line 2238
    iget v0, p0, Lcom/android/server/BatteryService;->mCurrentFanMode:I

    if-ne v0, p1, :cond_f

    .line 2239
    iget v0, p0, Lcom/android/server/BatteryService;->mRetryCount:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_e

    .line 2240
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mRetryCount:I

    goto :goto_12

    .line 2242
    :cond_e
    return-void

    .line 2245
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mRetryCount:I

    .line 2247
    :goto_12
    iput p1, p0, Lcom/android/server/BatteryService;->mCurrentFanMode:I

    .line 2248
    const-string v0, "/sys/class/meizu/wireless/fan_quiet"

    invoke-direct {p0, v0, p1}, Lcom/android/server/BatteryService;->writeFile(Ljava/lang/String;I)V

    .line 2249
    return-void
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .registers 3
    .param p0, "dst"  # Landroid/hardware/health/V1_0/HealthInfo;
    .param p1, "src"  # Landroid/hardware/health/V1_0/HealthInfo;

    .line 698
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 699
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 700
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 701
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 702
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 703
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 704
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 705
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 706
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 707
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 708
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 709
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 710
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 711
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 712
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 713
    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 714
    return-void
.end method

.method private disableReverseStatusLocked(I)V
    .registers 5
    .param p1, "reason"  # I

    .line 2037
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableReverseStatusLocked reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iput p1, p0, Lcom/android/server/BatteryService;->mStopReason:I

    .line 2041
    const-string v0, "/sys/class/meizu/wireless/reverse_chg_enable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->writeFile(Ljava/lang/String;I)V

    .line 2042
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 1143
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1291
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    if-eqz p3, :cond_1ea

    :try_start_5
    array-length v1, p3

    if-eqz v1, :cond_1ea

    const-string v1, "-a"

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_1ea

    .line 1313
    :cond_15
    array-length v1, p3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    const-string v1, "fullmsg"

    aget-object v4, p3, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1314
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mz_full_msg:Z

    .line 1315
    const-string v1, "full broadcast message on"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_335

    .line 1317
    :cond_2c
    array-length v1, p3

    if-ne v1, v3, :cond_44

    const-string/jumbo v1, "nocharge"

    aget-object v4, p3, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1318
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mz_debug_nocharge:Z

    .line 1319
    const-string/jumbo v1, "no charge event test on"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_335

    .line 1323
    :cond_44
    array-length v1, p3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_103

    const-string/jumbo v1, "reverse"

    aget-object v5, p3, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 1324
    aget-object v1, p3, v3

    if-eqz v1, :cond_60

    .line 1325
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->handleReverseChargingStatusChangeLocked(I)V

    .line 1327
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set reverse charging status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mReverseStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastReverseStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStopReason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mStopReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mReverseChargingLimitingLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mReverseChargingLimitingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHasFanModeFunc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mHasFanModeFunc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentFanMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mCurrentFanMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_335

    .line 1336
    :cond_103
    array-length v1, p3

    if-lt v1, v4, :cond_1d3

    const-string/jumbo v1, "watt"

    aget-object v5, p3, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 1339
    const/4 v1, 0x5

    new-array v5, v1, [[I

    const/4 v6, 0x3

    new-array v7, v6, [I

    aget-object v8, p3, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v2

    aget-object v8, p3, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    aget-object v8, p3, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    aput-object v7, v5, v2

    new-array v7, v6, [I

    const/4 v8, 0x4

    aget-object v9, p3, v8

    .line 1340
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v7, v3

    const/4 v1, 0x6

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v7, v4

    aput-object v7, v5, v3

    new-array v1, v6, [I

    const/4 v7, 0x7

    aget-object v7, p3, v7

    .line 1341
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v2

    const/16 v7, 0x8

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3

    const/16 v7, 0x9

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v4

    aput-object v1, v5, v4

    new-array v1, v6, [I

    const/16 v7, 0xa

    aget-object v7, p3, v7

    .line 1342
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v2

    const/16 v7, 0xb

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3

    const/16 v7, 0xc

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v4

    aput-object v1, v5, v6

    new-array v1, v6, [I

    const/16 v6, 0xd

    aget-object v6, p3, v6

    .line 1343
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    const/16 v2, 0xe

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    const/16 v2, 0xf

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    aput-object v1, v5, v8

    move-object v1, v5

    .line 1344
    .local v1, "a":[[I
    iput-object v1, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCREEN_ON_CHARGE_WATT_THMERAL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    .end local v1  # "a":[[I
    goto/16 :goto_335

    .line 1350
    :cond_1d3
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1351
    .local v2, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_335

    .line 1293
    .end local v2  # "shell":Lcom/android/server/BatteryService$Shell;
    :cond_1ea
    :goto_1ea
    const-string v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_1f8

    .line 1295
    const-string v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    :cond_1f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const-string v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    :goto_335
    monitor-exit v0

    .line 1354
    return-void

    .line 1353
    :catchall_337
    move-exception v1

    monitor-exit v0
    :try_end_339
    .catchall {:try_start_5 .. :try_end_339} :catchall_337

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 1357
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1359
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    const-wide v2, 0x10800000001L

    :try_start_d
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1361
    const/4 v2, 0x0

    .line 1362
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1b

    .line 1363
    const/4 v2, 0x1

    goto :goto_2a

    .line 1364
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_23

    .line 1365
    const/4 v2, 0x2

    goto :goto_2a

    .line 1366
    :cond_23
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2a

    .line 1367
    const/4 v2, 0x4

    .line 1369
    :cond_2a
    :goto_2a
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1370
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1371
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1372
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1373
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1374
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1375
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1376
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1377
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1378
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1379
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1381
    .end local v2  # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_d .. :try_end_b5} :catchall_b9

    .line 1382
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1383
    return-void

    .line 1381
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"  # I

    .line 1112
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x10807fe

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 1113
    return v1

    .line 1114
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x10807f0

    if-ne v0, v2, :cond_16

    .line 1115
    return v3

    .line 1116
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    goto :goto_29

    .line 1125
    :cond_25
    const v0, 0x108080c

    return v0

    .line 1118
    :cond_29
    :goto_29
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_39

    .line 1120
    return v1

    .line 1122
    :cond_39
    return v3
.end method

.method private getTemperature(Ljava/lang/String;)I
    .registers 9
    .param p1, "fileName"  # Ljava/lang/String;

    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "temp":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2324
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_60

    .line 2329
    :cond_13
    const/4 v2, 0x0

    .line 2331
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    :try_start_15
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v3

    move-object v2, v3

    .line 2332
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2333
    .local v3, "tempString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2334
    if-eqz v3, :cond_30

    .line 2335
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2f} :catch_39
    .catchall {:try_start_15 .. :try_end_2f} :catchall_37

    move v0, v4

    .line 2340
    .end local v3  # "tempString":Ljava/lang/String;
    :cond_30
    nop

    .line 2342
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 2344
    :goto_34
    goto :goto_57

    .line 2343
    :catch_35
    move-exception v3

    goto :goto_34

    .line 2340
    :catchall_37
    move-exception v3

    goto :goto_58

    .line 2337
    :catch_39
    move-exception v3

    .line 2338
    .local v3, "e":Ljava/io/IOException;
    :try_start_3a
    const-string v4, "BatteryStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t read from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_37

    .line 2340
    nop

    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_57

    .line 2342
    :try_start_53
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_35

    goto :goto_34

    .line 2347
    :cond_57
    :goto_57
    return v0

    .line 2340
    :goto_58
    if-eqz v2, :cond_5f

    .line 2342
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 2344
    goto :goto_5f

    .line 2343
    :catch_5e
    move-exception v4

    .line 2344
    :cond_5f
    :goto_5f
    throw v3

    .line 2325
    .end local v2  # "reader":Ljava/io/BufferedReader;
    :cond_60
    :goto_60
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    return v0
.end method

.method private handleReverseChargingStatusChangeLocked(I)V
    .registers 6
    .param p1, "reverseStatus"  # I

    .line 2000
    iget v0, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    .line 2001
    iput p1, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    .line 2003
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 2005
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2007
    :cond_11
    iget v1, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    if-ne v1, v0, :cond_1a

    .line 2009
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2011
    :cond_1a
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    if-ne p1, v0, :cond_22

    .line 2012
    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mStopReason:I

    .line 2015
    :cond_22
    invoke-direct {p0}, Lcom/android/server/BatteryService;->makeReverseChargingNotification()V

    .line 2018
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReverseChargingStatusChangeLocked mReverseStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastReverseStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendBatteryReverseChangedIntentLocked()V

    .line 2021
    return-void
.end method

.method private handleScreenOff()V
    .registers 4

    .line 2315
    iget v0, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    if-eqz v0, :cond_13

    .line 2316
    iget-object v0, p0, Lcom/android/server/BatteryService;->SCREEN_ON_CHARGE_WATT_THMERAL:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    const-string v2, "/sys/class/meizu/charger/hlos_cur_voter"

    invoke-direct {p0, v2, v0}, Lcom/android/server/BatteryService;->writeFile(Ljava/lang/String;I)V

    .line 2317
    iput v1, p0, Lcom/android/server/BatteryService;->mCurrentChargeWattIndex:I

    .line 2319
    :cond_13
    return-void
.end method

.method private handleSettingsChanged()V
    .registers 5

    .line 1934
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "device_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/os/DeviceControlManager;

    .line 1935
    .local v0, "control":Lmeizu/os/DeviceControlManager;
    if-eqz v0, :cond_38

    .line 1936
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "mz_fast_charge"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1937
    .local v1, "mFastCharge":I
    if-eqz v1, :cond_1e

    if-ne v1, v2, :cond_38

    .line 1938
    :cond_1e
    invoke-virtual {v0, v1}, Lmeizu/os/DeviceControlManager;->setChargeMode(I)I

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.fast_charge"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    .end local v1  # "mFastCharge":I
    :cond_38
    return-void
.end method

.method private isOverLowVolt()Z
    .registers 5

    .line 1891
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "over low volt is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLowestVolt:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLowestVolt:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method private isPoweredLocked(I)Z
    .registers 4
    .param p1, "plugTypeSet"  # I

    .line 553
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 554
    return v1

    .line 556
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_13

    .line 557
    return v1

    .line 559
    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1e

    .line 560
    return v1

    .line 562
    :cond_1e
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_29

    .line 563
    return v1

    .line 565
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"  # Landroid/content/Intent;

    .line 998
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .registers 10

    .line 1047
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1048
    .local v2, "batteryInfoService":Landroid/os/IBinder;
    if-nez v2, :cond_d

    return-void

    .line 1050
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 1051
    .local v3, "db":Landroid/os/DropBoxManager;
    if-eqz v3, :cond_e7

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_e7

    .line 1053
    :cond_23
    const/4 v5, 0x0

    .line 1054
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 1057
    .local v6, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_25
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/batterystats.dump"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 1058
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 1059
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1060
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1063
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_43} :catch_94
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_43} :catch_6f
    .catchall {:try_start_25 .. :try_end_43} :catchall_6d

    .line 1070
    nop

    .line 1072
    :try_start_44
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 1075
    goto :goto_4e

    .line 1073
    :catch_48
    move-exception v4

    .line 1074
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v4  # "e":Ljava/io/IOException;
    :goto_4e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1078
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 1070
    :catchall_6d
    move-exception v4

    goto :goto_ba

    .line 1066
    :catch_6f
    move-exception v4

    .line 1067
    .restart local v4  # "e":Ljava/io/IOException;
    :try_start_70
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_6d

    .line 1070
    nop

    .end local v4  # "e":Ljava/io/IOException;
    if-eqz v6, :cond_84

    .line 1072
    :try_start_7a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 1075
    goto :goto_84

    .line 1073
    :catch_7e
    move-exception v4

    .line 1074
    .restart local v4  # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v4  # "e":Ljava/io/IOException;
    :cond_84
    :goto_84
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1078
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 1064
    :catch_94
    move-exception v4

    .line 1065
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_95
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_6d

    .line 1070
    nop

    .end local v4  # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_a9

    .line 1072
    :try_start_9f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 1075
    goto :goto_a9

    .line 1073
    :catch_a3
    move-exception v4

    .line 1074
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v4  # "e":Ljava/io/IOException;
    :cond_a9
    :goto_a9
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1078
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 1082
    :cond_b9
    :goto_b9
    return-void

    .line 1070
    :goto_ba
    if-eqz v6, :cond_c6

    .line 1072
    :try_start_bc
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    .line 1075
    goto :goto_c6

    .line 1073
    :catch_c0
    move-exception v7

    .line 1074
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v7  # "e":Ljava/io/IOException;
    :cond_c6
    :goto_c6
    if-eqz v5, :cond_e6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 1078
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    throw v4

    .line 1051
    .end local v5  # "dumpFile":Ljava/io/File;
    .end local v6  # "dumpStream":Ljava/io/FileOutputStream;
    :cond_e7
    :goto_e7
    return-void
.end method

.method private logOutlierLocked(J)V
    .registers 13
    .param p1, "duration"  # J

    .line 1085
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1086
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "durationThresholdString":Ljava/lang/String;
    if-eqz v1, :cond_92

    if-eqz v2, :cond_92

    .line 1093
    :try_start_16
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1094
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1095
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_2e

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_2e

    .line 1098
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V

    .line 1100
    :cond_2e
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duration threshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " discharge threshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " discharge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_71} :catch_73

    .line 1107
    nop

    .end local v3  # "durationThreshold":J
    .end local v5  # "dischargeThreshold":I
    goto :goto_92

    .line 1104
    :catch_73
    move-exception v3

    .line 1105
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    :cond_92
    :goto_92
    return-void
.end method

.method private makeReverseChargingNotification()V
    .registers 11

    .line 2065
    const/4 v0, 0x0

    .line 2066
    .local v0, "cancleId":I
    const/4 v1, 0x0

    .line 2068
    .local v1, "notificationId":I
    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    if-ne v2, v3, :cond_12

    .line 2069
    const v0, 0xa100134

    .line 2070
    const v1, 0xa100136

    .line 2073
    :cond_12
    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    if-ne v2, v4, :cond_1e

    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    if-nez v2, :cond_1e

    .line 2074
    const/4 v0, 0x0

    .line 2075
    const v1, 0xa100136

    .line 2078
    :cond_1e
    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    if-ne v2, v3, :cond_30

    .line 2079
    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    if-ne v2, v4, :cond_2a

    .line 2080
    const v0, 0xa100136

    goto :goto_2d

    .line 2081
    :cond_2a
    if-nez v2, :cond_2d

    .line 2082
    const/4 v0, 0x0

    .line 2084
    :cond_2d
    :goto_2d
    const v1, 0xa100134

    .line 2086
    :cond_30
    iget v2, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    if-eqz v2, :cond_37

    const/4 v5, 0x3

    if-ne v2, v5, :cond_44

    .line 2087
    :cond_37
    iget v2, p0, Lcom/android/server/BatteryService;->mLastReverseStatus:I

    if-ne v2, v3, :cond_3f

    .line 2088
    const v0, 0xa100134

    goto :goto_44

    .line 2089
    :cond_3f
    if-ne v2, v4, :cond_44

    .line 2090
    const v0, 0xa100136

    .line 2094
    :cond_44
    :goto_44
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2097
    .local v2, "nm":Landroid/app/NotificationManager;
    const/4 v5, 0x0

    if-eqz v0, :cond_55

    .line 2098
    invoke-virtual {v2, v5, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 2100
    :cond_55
    if-eqz v1, :cond_bf

    .line 2101
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2102
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "close_reverse_charging"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0xa080300

    .line 2107
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 2108
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const v8, 0x106001c

    .line 2109
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 2111
    invoke-virtual {v7, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const v8, 0xa100135

    .line 2112
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    .line 2114
    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2113
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2115
    .local v4, "n":Landroid/app/Notification$Builder;
    iget-object v7, v4, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v8, 0xa080301

    invoke-virtual {v7, v8}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 2116
    const v7, 0xa100134

    if-ne v1, v7, :cond_b8

    .line 2119
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2121
    :cond_b8
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v5, v1, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2123
    .end local v4  # "n":Landroid/app/Notification$Builder;
    .end local v6  # "intent":Landroid/content/Intent;
    :cond_bf
    return-void
.end method

.method private playChargingStartedFeedback()V
    .registers 6

    .line 2156
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "charging_vibration_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 2158
    .local v0, "vibrateEnabled":Z
    :goto_12
    if-eqz v0, :cond_1d

    .line 2159
    iget-object v2, p0, Lcom/android/server/BatteryService;->mVibrator:Landroid/os/Vibrator;

    sget-object v3, Lcom/android/server/BatteryService;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v4, Lcom/android/server/BatteryService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 2161
    :cond_1d
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "charged_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2163
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v2, :cond_50

    .line 2164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2165
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_50

    .line 2166
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 2167
    .local v4, "sfx":Landroid/media/Ringtone;
    if-eqz v4, :cond_50

    .line 2168
    invoke-virtual {v4, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2169
    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2173
    .end local v3  # "soundUri":Landroid/net/Uri;
    .end local v4  # "sfx":Landroid/media/Ringtone;
    :cond_50
    return-void
.end method

.method private processReverseLevelLimitedLocked(I)V
    .registers 5
    .param p1, "level"  # I

    .line 2027
    iget v0, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 2028
    :cond_8
    iget v0, p0, Lcom/android/server/BatteryService;->mReverseChargingLimitingLevel:I

    if-le v0, p1, :cond_f

    .line 2029
    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->disableReverseStatusLocked(I)V

    .line 2032
    :cond_f
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "opts"  # I

    .line 1284
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1285
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_13

    .line 1286
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1288
    :cond_13
    return-void
.end method

.method private processValuesLocked(Z)V
    .registers 21
    .param p1, "force"  # Z

    .line 717
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 718
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 720
    .local v3, "dischargeDuration":J
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_17

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v7, :cond_17

    move v0, v6

    goto :goto_18

    :cond_17
    move v0, v5

    :goto_18
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 723
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz v0, :cond_25

    .line 724
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 725
    :cond_25
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2e

    .line 726
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 727
    :cond_2e
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_37

    .line 728
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 730
    :cond_37
    iput v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 734
    :goto_39
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing new values: info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", mBatteryLevelCritical="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mFastChargeStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/BatteryService;->mFastChargeStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mPlugType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :try_start_6f
    iget-object v10, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v12, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v13, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v15, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v9, v9, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v7

    invoke-interface/range {v10 .. v18}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIII)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_98} :catch_99

    .line 752
    goto :goto_9a

    .line 750
    :catch_99
    move-exception v0

    .line 754
    :goto_9a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 757
    if-nez p1, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v7, :cond_f6

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v7, :cond_f6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    if-ne v0, v7, :cond_f6

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v7, :cond_3e5

    .line 769
    :cond_f6
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v9, 0x5

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    if-eq v0, v7, :cond_1c8

    .line 770
    const/16 v13, 0x58a

    const/16 v14, 0x58d

    const/16 v15, 0x589

    if-nez v7, :cond_170

    .line 772
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 775
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v15}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 776
    .local v0, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 777
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v14, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 778
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 779
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 778
    invoke-virtual {v0, v13, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 780
    iget-object v6, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 784
    iget-wide v6, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_16f

    iget v6, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v6, v7, :cond_16f

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v3, v6, v13

    .line 786
    const/4 v2, 0x1

    .line 787
    const/16 v6, 0xaaa

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v5

    iget v13, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 788
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v7, v14

    iget-object v13, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v13, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v7, v14

    .line 787
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 790
    iput-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 792
    .end local v0  # "builder":Landroid/metrics/LogMaker;
    :cond_16f
    goto :goto_1c8

    :cond_170
    if-nez v0, :cond_16f

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 795
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v13, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v6, v13

    .line 798
    .local v6, "chargeDuration":J
    cmp-long v13, v13, v11

    if-eqz v13, :cond_1c6

    cmp-long v13, v6, v11

    if-eqz v13, :cond_1c6

    .line 799
    new-instance v13, Landroid/metrics/LogMaker;

    invoke-direct {v13, v15}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 800
    .local v13, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v13, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 801
    iget v14, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v0, 0x58d

    invoke-virtual {v13, v0, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 802
    const/16 v0, 0x58c

    .line 803
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 802
    invoke-virtual {v13, v0, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 804
    iget v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 805
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 804
    const/16 v14, 0x58a

    invoke-virtual {v13, v14, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 806
    const/16 v0, 0x58b

    iget-object v14, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v14, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 807
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 806
    invoke-virtual {v13, v0, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 808
    iget-object v0, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v13}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 810
    .end local v13  # "builder":Landroid/metrics/LogMaker;
    :cond_1c6
    iput-wide v11, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 813
    .end local v6  # "chargeDuration":J
    :cond_1c8
    :goto_1c8
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v6, :cond_1e6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v6, :cond_1e6

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v6, :cond_1e6

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v6, :cond_21b

    .line 817
    :cond_1e6
    const/16 v0, 0xaa3

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 818
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 819
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    aput-object v7, v6, v8

    .line 817
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 821
    :cond_21b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v6, :cond_24a

    .line 824
    const/16 v0, 0xaa2

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 825
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 824
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 827
    :cond_24a
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_260

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_260

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_260

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v6, v9

    .line 832
    .end local v3  # "dischargeDuration":J
    .local v6, "dischargeDuration":J
    const/4 v0, 0x1

    move v2, v0

    move-wide v3, v6

    .line 835
    .end local v6  # "dischargeDuration":J
    .restart local v3  # "dischargeDuration":J
    :cond_260
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_27a

    .line 837
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_298

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_298

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v7, :cond_298

    .line 841
    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_298

    .line 845
    :cond_27a
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_281

    .line 846
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_298

    .line 847
    :cond_281
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v6, :cond_28c

    .line 848
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_298

    .line 849
    :cond_28c
    if-eqz p1, :cond_298

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v6, :cond_298

    .line 852
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 856
    :cond_298
    :goto_298
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 861
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v6, "seq"

    const/high16 v7, 0x4000000

    if-eqz v0, :cond_2c5

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_2c5

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 864
    iget v9, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/BatteryService$9;

    invoke-direct {v10, v1, v0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    .end local v0  # "statusIntent":Landroid/content/Intent;
    goto :goto_2e6

    .line 872
    :cond_2c5
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_2e6

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_2e6

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .restart local v0  # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 875
    iget v9, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/BatteryService$10;

    invoke-direct {v10, v1, v0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 884
    .end local v0  # "statusIntent":Landroid/content/Intent;
    :cond_2e6
    :goto_2e6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_309

    .line 885
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .restart local v0  # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 888
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$11;

    invoke-direct {v7, v1, v0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0  # "statusIntent":Landroid/content/Intent;
    goto :goto_331

    .line 895
    :cond_309
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_331

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v9, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v9, :cond_331

    .line 897
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .restart local v0  # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 900
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$12;

    invoke-direct {v7, v1, v0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_332

    .line 895
    .end local v0  # "statusIntent":Landroid/content/Intent;
    :cond_331
    :goto_331
    nop

    .line 911
    :goto_332
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    div-int/lit16 v0, v0, 0x3e8

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    div-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v0, v6

    const v6, 0xb71b00

    if-le v0, v6, :cond_345

    const/4 v5, 0x1

    :cond_345
    iput v5, v1, Lcom/android/server/BatteryService;->mFastChargeStatus:I

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shieldBatteryIntent()Z

    move-result v0

    if-nez v0, :cond_364

    .line 918
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 919
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_364

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_364

    .line 920
    iget-object v0, v1, Lcom/android/server/BatteryService;->mAlertThread:Lcom/android/server/BatteryService$AlertThread;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$AlertThread;->startCheck()V

    .line 921
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "USB pulgin, will notify usb temp check"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_364
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v0, v5, :cond_376

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 929
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService;->processReverseLevelLimitedLocked(I)V

    .line 933
    :cond_376
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 937
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v0, v8, :cond_383

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v8, :cond_38a

    .line 938
    :cond_383
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-direct {v1, v0, v5}, Lcom/android/server/BatteryService;->processWirelessQuietModeLocked(II)V

    .line 943
    :cond_38a
    if-eqz v2, :cond_393

    cmp-long v0, v3, v11

    if-eqz v0, :cond_393

    .line 944
    invoke-direct {v1, v3, v4}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 946
    :cond_393
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_39f

    .line 947
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService;->controlChargeWatt(I)V

    .line 950
    :cond_39f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 951
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 952
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 953
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 954
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 955
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 956
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 957
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 958
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 959
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 960
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 961
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 964
    iget v0, v1, Lcom/android/server/BatteryService;->mFastChargeStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastFastChargeStatus:I

    .line 967
    :cond_3e5
    return-void
.end method

.method private processWirelessQuietModeLocked(II)V
    .registers 12
    .param p1, "plugType"  # I
    .param p2, "lastPlugType"  # I

    .line 2176
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mHasFanModeFunc:Z

    if-nez v0, :cond_5

    .line 2177
    return-void

    .line 2180
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_62

    .line 2181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2182
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2183
    .local v2, "hour":I
    const/16 v3, 0x16

    if-ge v2, v3, :cond_1b

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1b

    .line 2184
    return-void

    .line 2186
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLightSensorListener:Lcom/android/server/BatteryService$LightSensorListener;

    if-eqz v3, :cond_84

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mHasRegisterLightListener:Z

    if-nez v3, :cond_84

    .line 2187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2188
    .local v3, "currentElapsedTime":J
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSleepEndTime:J

    .line 2189
    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSleepStartTime:J

    .line 2190
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mLightSensorListener:Lcom/android/server/BatteryService$LightSensorListener;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2191
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mHasRegisterLightListener:Z

    .line 2192
    iput v0, p0, Lcom/android/server/BatteryService;->mRetryCount:I

    .line 2193
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener: mSleepEndTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mSleepEndTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mSleepStartTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mSleepStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 2195
    .end local v1  # "calendar":Ljava/util/Calendar;
    .end local v2  # "hour":I
    .end local v3  # "currentElapsedTime":J
    :cond_62
    if-eq p1, v1, :cond_84

    if-ne p2, v1, :cond_84

    .line 2196
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLightSensorListener:Lcom/android/server/BatteryService$LightSensorListener;

    if-eqz v1, :cond_81

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mHasRegisterLightListener:Z

    if-eqz v2, :cond_81

    .line 2197
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2198
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mHasRegisterLightListener:Z

    .line 2199
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_81
    iput v0, p0, Lcom/android/server/BatteryService;->mCurrentFanMode:I

    goto :goto_85

    .line 2195
    :cond_84
    :goto_84
    nop

    .line 2203
    :goto_85
    return-void
.end method

.method private registerHealthCallback()V
    .registers 9

    .line 492
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 493
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 494
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 497
    :try_start_14
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    new-instance v2, Lcom/android/server/BatteryService$5;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$6;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_a9
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_25} :catch_9f
    .catchall {:try_start_14 .. :try_end_25} :catchall_9d

    .line 507
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 508
    nop

    .line 510
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 515
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 516
    :goto_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_74

    .line 517
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_9a

    .line 520
    :try_start_64
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_69} :catch_6a
    .catchall {:try_start_64 .. :try_end_69} :catchall_9a

    .line 524
    goto :goto_35

    .line 521
    :catch_6a
    move-exception v3

    .line 522
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_6b
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    nop

    .end local v3  # "ex":Ljava/lang/InterruptedException;
    goto :goto_35

    .line 526
    :cond_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_9a

    .line 528
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 531
    return-void

    .line 526
    :catchall_9a
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v3

    .line 507
    .end local v0  # "beforeWait":J
    :catchall_9d
    move-exception v0

    goto :goto_b6

    .line 503
    :catch_9f
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_a0
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    nop

    .end local p0  # "this":Lcom/android/server/BatteryService;
    throw v0

    .line 500
    .end local v0  # "ex":Ljava/util/NoSuchElementException;
    .restart local p0  # "this":Lcom/android/server/BatteryService;
    :catch_a9
    move-exception v0

    .line 501
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0  # "this":Lcom/android/server/BatteryService;
    throw v1
    :try_end_b6
    .catchall {:try_start_a0 .. :try_end_b6} :catchall_9d

    .line 507
    .end local v0  # "ex":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/BatteryService;
    :goto_b6
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    throw v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .registers 6

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 975
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 977
    .local v1, "icon":I
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const-string/jumbo v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v3, "voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v3, "temperature"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 988
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v3, "technology"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string/jumbo v3, "invalid_charger"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-string/jumbo v3, "max_charging_current"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-string/jumbo v3, "max_charging_voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v3, "charge_counter"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending ACTION_BATTERY_CHANGED. scale:100, info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 995
    invoke-virtual {v4}, Landroid/hardware/health/V1_0/HealthInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v3, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .registers 12

    .line 1002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1004
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1005
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1006
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1009
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    const/16 v3, 0x64

    const-string/jumbo v4, "scale"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    const-string v4, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1015
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    .line 1016
    .local v4, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v3, :cond_76

    .line 1019
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1022
    :cond_76
    if-eqz v4, :cond_92

    .line 1024
    iget-wide v5, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v7, v1, v5

    const-wide/32 v9, 0xea60

    cmp-long v3, v7, v9

    if-lez v3, :cond_86

    .line 1025
    const-wide/16 v5, 0x0

    goto :goto_88

    :cond_86
    add-long/2addr v5, v9

    sub-long/2addr v5, v1

    .line 1026
    .local v5, "delay":J
    :goto_88
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1028
    .end local v5  # "delay":J
    :cond_92
    return-void
.end method

.method private sendBatteryReverseChangedIntentLocked()V
    .registers 5

    .line 2137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_REVERSE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2138
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2140
    iget v1, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    const-string/jumbo v2, "reverse_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2141
    iget v1, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    if-nez v1, :cond_20

    .line 2142
    iget v1, p0, Lcom/android/server/BatteryService;->mStopReason:I

    const-string/jumbo v2, "stop_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2146
    :cond_20
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_BATTERY_REVERSE_CHANGED. mReverseStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStopReason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mStopReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2150
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .registers 6

    .line 1032
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1034
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1035
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1038
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1040
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1042
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 1043
    return-void

    .line 1035
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private shieldBatteryIntent()Z
    .registers 4

    .line 1896
    const/4 v0, 0x0

    const-string/jumbo v1, "vendor.meizu.sys.cts_state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mz_cts_version:Z

    .line 1897
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mz_full_msg:Z

    if-nez v1, :cond_5d

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mz_cts_version:Z

    if-eqz v1, :cond_13

    goto :goto_5d

    .line 1900
    :cond_13
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v1, v2, :cond_56

    iget v1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v1, v2, :cond_56

    iget v1, p0, Lcom/android/server/BatteryService;->mFastChargeStatus:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastFastChargeStatus:I

    if-ne v1, v2, :cond_56

    iget v1, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v1, v2, :cond_56

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSendBatteryTemperature:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    sub-int/2addr v1, v2

    .line 1912
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_56

    .line 1914
    const/4 v0, 0x1

    return v0

    .line 1916
    :cond_56
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v1, p0, Lcom/android/server/BatteryService;->mLastSendBatteryTemperature:I

    .line 1917
    return v0

    .line 1898
    :cond_5d
    :goto_5d
    return v0
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .line 569
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 570
    .local v0, "plugged":Z
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 578
    .local v3, "oldPlugged":Z
    :goto_10
    if-nez v0, :cond_27

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_27

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_27

    if-nez v3, :cond_26

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-le v4, v5, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    return v1
.end method

.method private shouldShutdownLocked()Z
    .registers 4

    .line 585
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/4 v1, 0x0

    if-lez v0, :cond_8

    .line 586
    return v1

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-nez v0, :cond_f

    .line 591
    return v1

    .line 598
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableScreen:Z

    if-eqz v0, :cond_55

    .line 606
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown: shutdownIfNoPowerLocked, batteryLevel is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/android/server/BatteryService;->isOverLowVolt()Z

    move-result v0

    if-nez v0, :cond_32

    .line 608
    return-void

    .line 612
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBatteryLevel == 0 mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->writeMessageToFile(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    :cond_55
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-gt v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const/16 v1, -0xc8

    if-ge v0, v1, :cond_5d

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableScreen:Z

    if-eqz v0, :cond_5d

    .line 647
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown: shutdownIfOverTempLocked, batteryTemperature is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBatteryTemperature == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->writeMessageToFile(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    :cond_5d
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"  # Ljava/lang/String;

    .line 1386
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1387
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 1390
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1391
    return-void
.end method

.method private update(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 6
    .param p1, "info"  # Landroid/hardware/health/V2_0/HealthInfo;

    .line 668
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 670
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/32 v1, 0x20000

    const-string v3, "BatteryChargeCounter"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 672
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-string v3, "BatteryCurrent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 675
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_1d
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_48

    .line 677
    iget-object v1, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 679
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mz_debug_nocharge:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 680
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 681
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 682
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 683
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 684
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    const/4 v3, 0x3

    iput v3, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 688
    :cond_3f
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 689
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4f

    .line 691
    :cond_48
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 693
    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_54

    .line 694
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 695
    return-void

    .line 693
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 535
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 537
    .local v1, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 539
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_22

    .line 540
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 542
    :cond_22
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_2a

    .line 543
    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 545
    :cond_2a
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 547
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 548
    return-void
.end method

.method private updateReverseChargingLimitingLevelLocked()V
    .registers 4

    .line 1976
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reverse_charging_limiting_level"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1977
    .local v0, "reverseChargingLimitingLevel":I
    iput v0, p0, Lcom/android/server/BatteryService;->mReverseChargingLimitingLevel:I

    .line 1978
    iget v1, p0, Lcom/android/server/BatteryService;->mReverseStatus:I

    const/4 v2, 0x2

    .line 1982
    return-void
.end method

.method private writeFile(Ljava/lang/String;I)V
    .registers 8
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "value"  # I

    .line 2046
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2047
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2048
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "file not exists"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    return-void

    .line 2051
    :cond_13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2053
    .local v1, "buf":[B
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    .line 2054
    .local v2, "stream":Ljava/io/OutputStream;
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2055
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 2059
    .end local v0  # "mFile":Ljava/io/File;
    .end local v1  # "buf":[B
    .end local v2  # "stream":Ljava/io/OutputStream;
    goto :goto_3e

    .line 2056
    :catch_33
    move-exception v0

    .line 2057
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Disable Reverse Charging Failed !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2060
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"  # I

    .line 397
    const/16 v0, 0x226

    if-ne p1, v0, :cond_8a

    .line 399
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_7
    new-instance v1, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 408
    .local v1, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 409
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 412
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 414
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mEnableScreen:Z

    .line 421
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mCharge: doesn\'t support fast_charge."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "Doesn\'t support reverse charge."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/meizu/wireless/fan_quiet"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 466
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mHasFanModeFunc:Z

    .line 467
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 468
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLightSensor:Landroid/hardware/Sensor;

    .line 469
    new-instance v3, Lcom/android/server/BatteryService$LightSensorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$LightSensorListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLightSensorListener:Lcom/android/server/BatteryService$LightSensorListener;

    .line 472
    :cond_62
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/meizu/charger/hlos_cur_voter"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 473
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 474
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    .end local v1  # "obs":Landroid/database/ContentObserver;
    .end local v2  # "resolver":Landroid/content/ContentResolver;
    .end local v3  # "intentFilter":Landroid/content/IntentFilter;
    :cond_85
    monitor-exit v0

    goto :goto_a8

    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_87

    throw v1

    .line 480
    :cond_8a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_a8

    .line 481
    iget-object v0, p0, Lcom/android/server/BatteryService;->mAlertThread:Lcom/android/server/BatteryService$AlertThread;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$AlertThread;->start()V

    .line 482
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string v1, "battery.low.volt"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    .line 484
    .local v1, "volt":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_a8

    .line 485
    iput-wide v1, p0, Lcom/android/server/BatteryService;->mLowestVolt:D

    .line 489
    .end local v0  # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v1  # "volt":D
    :cond_a8
    :goto_a8
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 14
    .param p1, "shell"  # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"  # Ljava/lang/String;

    .line 1171
    if-nez p2, :cond_7

    .line 1172
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1174
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1175
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859  # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_39

    const v2, 0x1bc62

    if-eq v1, v2, :cond_2e

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_23

    :cond_22
    goto :goto_44

    :cond_23
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v3

    goto :goto_45

    :cond_2e
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v5

    goto :goto_45

    :cond_39
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v6

    goto :goto_45

    :goto_44
    move v1, v4

    :goto_45
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_1c2

    if-eq v1, v5, :cond_7d

    if-eq v1, v3, :cond_53

    .line 1278
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1263
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1264
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1268
    .local v2, "ident":J
    :try_start_62
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_72

    .line 1269
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1270
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1271
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_78

    .line 1274
    :cond_72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1275
    nop

    .line 1276
    .end local v1  # "opts":I
    .end local v2  # "ident":J
    goto/16 :goto_1ee

    .line 1274
    .restart local v1  # "opts":I
    .restart local v2  # "ident":J
    :catchall_78
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1195
    .end local v1  # "opts":I
    .end local v2  # "ident":J
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1196
    .restart local v1  # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1199
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_94

    .line 1200
    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    return v4

    .line 1204
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1205
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_a0

    .line 1206
    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    return v4

    .line 1211
    :cond_a0
    :try_start_a0
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_ab

    .line 1212
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1214
    :cond_ab
    const/4 v8, 0x1

    .line 1215
    .local v8, "update":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1f4

    :cond_b3
    goto :goto_115

    :sswitch_b4
    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/16 v3, 0x8

    goto :goto_116

    :sswitch_c0
    const-string v3, "counter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x6

    goto :goto_116

    :sswitch_ca
    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x5

    goto :goto_116

    :sswitch_d5
    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x7

    goto :goto_116

    :sswitch_e0
    const-string/jumbo v9, "usb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    goto :goto_116

    :sswitch_ea
    const-string v3, "ac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    move v3, v5

    goto :goto_116

    :sswitch_f4
    const-string/jumbo v3, "present"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    move v3, v6

    goto :goto_116

    :sswitch_ff
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x4

    goto :goto_116

    :sswitch_10a
    const-string/jumbo v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const/4 v3, 0x3

    goto :goto_116

    :goto_115
    move v3, v4

    :goto_116
    packed-switch v3, :pswitch_data_21a

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_183

    .line 1241
    :pswitch_11d  #0x8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1242
    goto/16 :goto_196

    .line 1238
    :pswitch_125  #0x7
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 1239
    goto/16 :goto_196

    .line 1235
    :pswitch_12f  #0x6
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 1236
    goto/16 :goto_196

    .line 1232
    :pswitch_139  #0x5
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1233
    goto :goto_196

    .line 1229
    :pswitch_142  #0x4
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1230
    goto :goto_196

    .line 1226
    :pswitch_14b  #0x3
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_155

    move v9, v5

    goto :goto_156

    :cond_155
    move v9, v6

    :goto_156
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1227
    goto :goto_196

    .line 1223
    :pswitch_159  #0x2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_163

    move v9, v5

    goto :goto_164

    :cond_163
    move v9, v6

    :goto_164
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1224
    goto :goto_196

    .line 1220
    :pswitch_167  #0x1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_171

    move v9, v5

    goto :goto_172

    :cond_171
    move v9, v6

    :goto_172
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1221
    goto :goto_196

    .line 1217
    :pswitch_175  #0x0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_17f

    move v9, v5

    goto :goto_180

    :cond_17f
    move v9, v6

    :goto_180
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 1218
    goto :goto_196

    .line 1244
    :goto_183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    const/4 v8, 0x0

    .line 1248
    :goto_196
    if-eqz v8, :cond_1aa

    .line 1249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_19c} :catch_1ac

    .line 1251
    .local v9, "ident":J
    :try_start_19c
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1252
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1a1
    .catchall {:try_start_19c .. :try_end_1a1} :catchall_1a5

    .line 1254
    :try_start_1a1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    goto :goto_1aa

    .line 1254
    :catchall_1a5
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "pw":Ljava/io/PrintWriter;
    .end local v1  # "opts":I
    .end local v2  # "key":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/BatteryService;
    .end local p1  # "shell":Lcom/android/server/BatteryService$Shell;
    .end local p2  # "cmd":Ljava/lang/String;
    throw v3
    :try_end_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1aa} :catch_1ac

    .line 1260
    .end local v8  # "update":Z
    .end local v9  # "ident":J
    .restart local v0  # "pw":Ljava/io/PrintWriter;
    .restart local v1  # "opts":I
    .restart local v2  # "key":Ljava/lang/String;
    .restart local v7  # "value":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/BatteryService;
    .restart local p1  # "shell":Lcom/android/server/BatteryService$Shell;
    .restart local p2  # "cmd":Ljava/lang/String;
    :cond_1aa
    :goto_1aa
    nop

    .line 1261
    .end local v1  # "opts":I
    .end local v2  # "key":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/String;
    goto :goto_1ee

    .line 1257
    .restart local v1  # "opts":I
    .restart local v2  # "key":Ljava/lang/String;
    .restart local v7  # "value":Ljava/lang/String;
    :catch_1ac
    move-exception v3

    .line 1258
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    return v4

    .line 1177
    .end local v1  # "opts":I
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "ex":Ljava/lang/NumberFormatException;
    .end local v7  # "value":Ljava/lang/String;
    :cond_1c2
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1178
    .restart local v1  # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_1d8

    .line 1181
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1183
    :cond_1d8
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1184
    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1185
    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1188
    .local v2, "ident":J
    :try_start_1e4
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1189
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1e9
    .catchall {:try_start_1e4 .. :try_end_1e9} :catchall_1ef

    .line 1191
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1192
    nop

    .line 1193
    .end local v1  # "opts":I
    .end local v2  # "ident":J
    nop

    .line 1280
    :goto_1ee
    return v6

    .line 1191
    .restart local v1  # "opts":I
    .restart local v2  # "ident":J
    :catchall_1ef
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :sswitch_data_1f4
    .sparse-switch
        -0x3b9b7862 -> :sswitch_10a
        -0x3532300e -> :sswitch_ff
        -0x12f88745 -> :sswitch_f4
        0xc22 -> :sswitch_ea
        0x1c584 -> :sswitch_e0
        0x3643d4 -> :sswitch_d5
        0x6219b84 -> :sswitch_ca
        0x391755fc -> :sswitch_c0
        0x74cff1f7 -> :sswitch_b4
    .end sparse-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_175  #00000000
        :pswitch_167  #00000001
        :pswitch_159  #00000002
        :pswitch_14b  #00000003
        :pswitch_142  #00000004
        :pswitch_139  #00000005
        :pswitch_12f  #00000006
        :pswitch_125  #00000007
        :pswitch_11d  #00000008
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 386
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 388
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 389
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 390
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 391
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 392
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 5
    .param p1, "shell"  # Lcom/android/server/BatteryService$Shell;

    .line 1161
    const/4 v0, 0x0

    .line 1162
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 1163
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1167
    :cond_13
    return v0
.end method

.method writeMessageToFile(Ljava/lang/String;)V
    .registers 12
    .param p1, "message"  # Ljava/lang/String;

    .line 1947
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "close_message.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1949
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_84

    if-nez v2, :cond_30

    .line 1951
    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1952
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "file created"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_84

    .line 1956
    goto :goto_30

    .line 1953
    :catch_1f
    move-exception v2

    .line 1954
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "Could not create close_reboot_time.txt"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    .end local v2  # "e":Ljava/io/IOException;
    :cond_30
    :goto_30
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy年MM月dd日   HH:mm:ss     "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1959
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1960
    .local v3, "curDate":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1961
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1963
    .local v5, "buf":[B
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/String;

    invoke-static {v6, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    sget-object v9, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1964
    .local v6, "stream":Ljava/io/OutputStream;
    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1965
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_83} :catch_84

    .line 1969
    .end local v0  # "root":Ljava/io/File;
    .end local v1  # "mFile":Ljava/io/File;
    .end local v2  # "formatter":Ljava/text/SimpleDateFormat;
    .end local v3  # "curDate":Ljava/util/Date;
    .end local v4  # "s":Ljava/lang/String;
    .end local v5  # "buf":[B
    .end local v6  # "stream":Ljava/io/OutputStream;
    goto :goto_8f

    .line 1966
    :catch_84
    move-exception v0

    .line 1967
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Error on writeFilToSD."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1970
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method
