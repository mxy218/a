.class public Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;
    }
.end annotation


# instance fields
.field private final AOD_DISPLAY_MODE_BRIGHT:I

.field private final AOD_DISPLAY_MODE_BRIGHT_OLD:I

.field private final AOD_DISPLAY_MODE_DARK:I

.field private final AOD_DISPLAY_MODE_DARK_OLD:I

.field private final AOD_DISPLAY_MODE_FILE:Ljava/lang/String;

.field private final AOD_DISPLAY_MODE_FILE_OLD:Ljava/lang/String;

.field private final AOD_REFRESH_TIMEOUT:I

.field private final ENTER_POCKET_MODE_ACTION:Ljava/lang/String;

.field private final ENTER_SLEEP_MODE_ACTION:Ljava/lang/String;

.field private final EXIT_SLEEP_MODE_ACTION:Ljava/lang/String;

.field private HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

.field private HWC_POWER_MODE_DOZE_SUSPEND_ON:I

.field private final MSG_CALL_STATE_CHANGED:I

.field private final MSG_CHECK_SENSOR_STATE:I

.field private final MSG_DEVICE_PROVISIONED:I

.field private final MSG_ENTER_POCKET_MODE:I

.field private final MSG_ENTER_SLEEP_MODE:I

.field private final MSG_EXIT_SLEEP_MODE:I

.field private final MSG_FINGERPRINT_CHANGE_AODMODE:I

.field private final MSG_LIGHT_DARK_CHANGED:I

.field private final MSG_PROXIMITY_CHANGED:I

.field private final MSG_REFRESH_AND_ENTER_AOD_DELAYED:I

.field private final MSG_REFRESH_AOD_DELAYED:I

.field private final MSG_REGISTER_PROXIMITY_LIGHT_SENSOR:I

.field private final MSG_UNREGISTER_PROXIMITY_LIGHT_SENSOR:I

.field private final MSG_USER_SWITCHING:I

.field private final MSG_USER_SWITCH_COMPLETE:I

.field private final REFRESH_ADO_DISPLAY_POSITION_LIMIT_TIME:I

.field private final REFRESH_AOD_DISPLAY_ACTION:Ljava/lang/String;

.field private final REFRESH_AOD_DISPLAY_DELAY_MS_LONG:I

.field private final TAG:Ljava/lang/String;

.field private final WAIT_SENSOR_DATA_DELAY:I

.field private mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

.field private mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

.field private mAODPowerMode:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAodScreenRunnable:Ljava/lang/Runnable;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:I

.field private mChangePosition:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMode:I

.field private mEnterAOD:Z

.field private mEnterAODByDisplayChange:Z

.field private mEnterAODRunnable:Ljava/lang/Runnable;

.field private mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

.field private mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

.field private mExitSleepModePendingIntent:Landroid/app/PendingIntent;

.field private mFingerprintAuthenticatingObserver:Landroid/database/ContentObserver;

.field private mGestureCallback:Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFingerprintAuthenticating:Z

.field private mLastLightDark:Z

.field private mLastPocketModeTime:J

.field private mLastRefreshPositionTime:J

.field public mModelCallback:Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;

.field private mPm:Landroid/os/PowerManager;

.field private mRefreshAODPendingIntent:Landroid/app/PendingIntent;

.field private mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRegister:Z

.field private mRegisterRaiseSensor:Ljava/lang/Runnable;

.field private mSensorCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

.field private mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

.field private mSetDozeMode:Ljava/lang/Runnable;

.field private mStartGoingToSleep:Z

.field private mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitchObserver:Landroid/app/IUserSwitchObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AODPresenter"

    .line 76
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegister:Z

    const-wide/16 v2, 0x0

    .line 82
    iput-wide v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastRefreshPositionTime:J

    const-string v2, "com.flyme.aod.refresh"

    .line 84
    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->REFRESH_AOD_DISPLAY_ACTION:Ljava/lang/String;

    .line 90
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_REFRESH_AND_ENTER_AOD_DELAYED:I

    const/4 v2, 0x1

    .line 91
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_REFRESH_AOD_DELAYED:I

    const/4 v3, 0x2

    .line 92
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_PROXIMITY_CHANGED:I

    const/4 v3, 0x3

    .line 93
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_USER_SWITCHING:I

    const/4 v3, 0x4

    .line 94
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_USER_SWITCH_COMPLETE:I

    const/4 v3, 0x5

    .line 95
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_DEVICE_PROVISIONED:I

    const/4 v3, 0x6

    .line 96
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_CALL_STATE_CHANGED:I

    const/4 v3, 0x7

    .line 97
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_ENTER_SLEEP_MODE:I

    const/16 v3, 0x8

    .line 98
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_EXIT_SLEEP_MODE:I

    const/16 v3, 0x9

    .line 99
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_CHECK_SENSOR_STATE:I

    const/16 v3, 0xa

    .line 100
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_ENTER_POCKET_MODE:I

    const/16 v3, 0xb

    .line 101
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_LIGHT_DARK_CHANGED:I

    const/16 v3, 0xc

    .line 102
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_REGISTER_PROXIMITY_LIGHT_SENSOR:I

    const/16 v3, 0xd

    .line 103
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_UNREGISTER_PROXIMITY_LIGHT_SENSOR:I

    const/16 v3, 0xe

    .line 104
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->MSG_FINGERPRINT_CHANGE_AODMODE:I

    const-string v3, "com.flyme.aod.sleep.enter"

    .line 106
    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->ENTER_SLEEP_MODE_ACTION:Ljava/lang/String;

    const-string v3, "com.flyme.aod.sleep.exit"

    .line 107
    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->EXIT_SLEEP_MODE_ACTION:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_DARK:I

    .line 113
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_BRIGHT:I

    .line 114
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_DARK_OLD:I

    .line 115
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_BRIGHT_OLD:I

    const/4 v3, -0x1

    .line 117
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayMode:I

    .line 118
    iput-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mBootCompleted:Z

    const-wide/16 v4, -0x1

    .line 119
    iput-wide v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    .line 120
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    .line 121
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    .line 122
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_ON:I

    const v3, 0xea60

    .line 124
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->REFRESH_AOD_DISPLAY_DELAY_MS_LONG:I

    const v3, 0x1d4c0

    .line 125
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->REFRESH_ADO_DISPLAY_POSITION_LIMIT_TIME:I

    const-string v3, "/sys/class/meizu/lcm/display/aod_bl"

    .line 126
    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_FILE:Ljava/lang/String;

    const-string v3, "/sys/class/meizu/lcm/display/doze_mode"

    .line 127
    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_DISPLAY_MODE_FILE_OLD:Ljava/lang/String;

    const/16 v3, 0x3e8

    .line 129
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->WAIT_SENSOR_DATA_DELAY:I

    const/16 v3, 0x1f4

    .line 130
    iput v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->AOD_REFRESH_TIMEOUT:I

    .line 134
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mCallState:I

    const-string v3, "com.flyme.aod.pocket.enter"

    .line 137
    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->ENTER_POCKET_MODE_ACTION:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastLightDark:Z

    .line 149
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mGestureCallback:Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;

    .line 154
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 178
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    .line 212
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$3;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 237
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$5;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$5;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAODRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$6;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegisterRaiseSensor:Ljava/lang/Runnable;

    .line 551
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$7;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 940
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$9;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mModelCallback:Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;

    .line 1207
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$12;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAodScreenRunnable:Ljava/lang/Runnable;

    .line 1216
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$13;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    .line 1285
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$14;

    invoke-direct {v3, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$14;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    .line 311
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    .line 312
    new-instance v3, Lcom/flyme/systemuitools/aod/model/AODModelImpl;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    .line 313
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    invoke-interface {v3}, Lcom/flyme/systemuitools/aod/model/IAODModel;->onCreate()V

    .line 314
    new-instance v3, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    .line 315
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {v3}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->onCreate()V

    .line 316
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    .line 317
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    .line 318
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 319
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 320
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplay:Landroid/view/Display;

    .line 321
    new-instance v3, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-direct {v3, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 322
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    invoke-virtual {p1, v3}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setSensorCallback(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;)V

    .line 323
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->getDisplayMode()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayMode:I

    .line 324
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_151

    .line 325
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string v3, "power"

    .line 326
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mPm:Landroid/os/PowerManager;

    .line 327
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 329
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 331
    :cond_151
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDeviceProvisionedInSettingsDb()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    .line 332
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    if-nez p1, :cond_15e

    .line 333
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->watchForDeviceProvisioning()V

    .line 335
    :cond_15e
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->watchForFingerprintAuthenticating()V

    const-string p1, "gesture_manager"

    .line 337
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 336
    invoke-static {p1}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object p1

    const-string v0, "GestureManager"

    if-eqz p1, :cond_179

    .line 340
    :try_start_16f
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mGestureCallback:Lcom/flyme/systemuitools/aod/presenter/AODPresenter$GestureCallback;

    const-string v2, "KeyguardViewmediator"

    invoke-interface {p1, v1, v2}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V

    goto :goto_184

    :catch_177
    move-exception p1

    goto :goto_17f

    :cond_179
    const-string p1, "can not get gesture service"

    .line 342
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_17e} :catch_177

    goto :goto_184

    :goto_17f
    const-string v1, "IGestureManager threw RemoteException"

    .line 345
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :goto_184
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastRefreshPositionTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;J)J
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastRefreshPositionTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayRefreshAODDisplay()V

    return-void
.end method

.method static synthetic access$1202(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->executeDismissfpOrExitDoze()V

    return-void
.end method

.method static synthetic access$1600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mChangePosition:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->enterAODMode(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/view/Display;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Ljava/lang/Runnable;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAODRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;J)J
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAODByDisplayChange:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Ljava/lang/Runnable;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->hasMeizuLiveWallpaper()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2502(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mStartGoingToSleep:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    return p0
.end method

.method static synthetic access$2700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    return p0
.end method

.method static synthetic access$2800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastLightDark:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isFingerprintAuthenticating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastLightDark:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Ljava/lang/String;I)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->writeDisplayModeFile(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->executeshowFpOrEnterDoze()V

    return-void
.end method

.method static synthetic access$3300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/PowerManager;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAndSetDisplayMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    return p0
.end method

.method static synthetic access$600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mIsFingerprintAuthenticating:Z

    return p0
.end method

.method static synthetic access$602(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mIsFingerprintAuthenticating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->exitAODMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    return-void
.end method

.method private aquireAODWakeLock()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "aquireAODWakeLock"

    .line 976
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 978
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 980
    :cond_14
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private cancelDelayEnterAndExitSleepMode()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "cancelDelayEnterSleepMode"

    .line 1061
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_10

    .line 1063
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1065
    :cond_10
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mExitSleepModePendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 1066
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_19
    return-void
.end method

.method private cancelDelayEnterPocketMode()V
    .registers 3

    .line 1201
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v0

    const-string v1, "cancelDelayEnterPocketMode"

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 1203
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_12
    return-void
.end method

.method private cancelDelayRefreshAODDisplay()V
    .registers 3

    .line 545
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v0

    const-string v1, "cancelDelayRefreshAODDisplay"

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 547
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_12
    return-void
.end method

.method private checkAODMode()V
    .registers 2

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODMode(Z)V

    return-void
.end method

.method private checkAODMode(Z)V
    .registers 8

    .line 618
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->inAODAvailableSituations()Z

    move-result v0

    .line 619
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v1

    .line 620
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result v2

    .line 621
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    .line 622
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mChangePosition:Z

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAODMode inAODAvailableSituations ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", checkAODModeSwitchOn ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "isFingerprintAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  isDisplayOff():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", system user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AODPresenter"

    .line 623
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result v4

    if-nez v4, :cond_5a

    iget-boolean v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mStartGoingToSleep:Z

    if-eqz v4, :cond_73

    :cond_5a
    if-eqz v0, :cond_73

    if-nez v1, :cond_60

    if-eqz v2, :cond_73

    :cond_60
    if-eqz v3, :cond_73

    .line 628
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 634
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-nez v0, :cond_73

    .line 635
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->enterAODMode(Z)V

    :cond_73
    return-void
.end method

.method public static checkAODModeSwitchOn()Z
    .registers 2

    const-string v0, "persist.sys.meizu.aod"

    const-string v1, "0"

    .line 700
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkAODPowerMode()V
    .registers 5

    .line 1167
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    const-string v2, "AODPresenter"

    if-eq v0, v1, :cond_35

    const-string v0, "checkAODPowerMode, enter aod, refresh"

    .line 1168
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    invoke-interface {v1}, Lcom/flyme/systemuitools/aod/model/IAODModel;->getBatteryInfo()Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->showBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    .line 1172
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->refreshAODMode(Z)V

    .line 1173
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1174
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1175
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayRefreshAODDisplay()V

    .line 1176
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayEnterAndExitSleepMode()V

    goto :goto_3d

    :cond_35
    const-string v0, "checkAODPowerMode , power off , no need to refresh per minute"

    .line 1178
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayRefreshAODDisplay()V

    :goto_3d
    return-void
.end method

.method private checkAndSetDisplayMode()I
    .registers 4

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndSetDisplayMode checkNightMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkNightMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensorPolicy.isDarkenLight() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 927
    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODPresenter"

    .line 922
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkNightMode()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 929
    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x0

    .line 931
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enter AOD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DDI"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-eqz v1, :cond_71

    .line 934
    iput v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayMode:I

    .line 935
    iget v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayMode:I

    const-string v2, "/sys/class/meizu/lcm/display/doze_mode"

    invoke-direct {p0, v2, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->writeDisplayModeFile(Ljava/lang/String;I)V

    :cond_71
    return v0
.end method

.method private checkNightMode()Z
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x16

    const/4 v2, 0x6

    .line 875
    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isCurrentInTimeScope(IIII)Z

    move-result p0

    return p0
.end method

.method private checkPocketMode()Z
    .registers 5

    .line 861
    iget-wide v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private checkSleepModePeriod()Z
    .registers 5

    const-string v0, "22"

    .line 1072
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "00"

    .line 1074
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "06"

    .line 1076
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1077
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1071
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isCurrentInTimeScope(IIII)Z

    move-result p0

    return p0
.end method

.method private delayEnterAndExitSleepMode()V
    .registers 15

    .line 992
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 995
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 998
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 999
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v3

    const-string v4, "22"

    .line 1000
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "00"

    .line 1002
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "06"

    .line 1004
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1006
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1010
    iget-object v8, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {v8}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v8

    if-eqz v8, :cond_4d

    const-wide/32 v8, 0x1d4c0

    goto :goto_50

    :cond_4d
    const-wide/32 v8, 0x927c0

    .line 1012
    :goto_50
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkSleepModePeriod()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_6f

    if-ge v1, v7, :cond_5b

    sub-int/2addr v7, v1

    goto :goto_5e

    :cond_5b
    rsub-int/lit8 v1, v1, 0x18

    add-int/2addr v7, v1

    :goto_5e
    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v7, v5

    mul-int/lit16 v7, v7, 0x3e8

    rsub-int/lit8 v1, v3, 0x0

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v7, v1

    int-to-long v1, v7

    goto :goto_8d

    :cond_6f
    sub-int v1, v4, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v1, v6

    mul-int/lit16 v1, v1, 0x3e8

    rsub-int/lit8 v2, v3, 0x0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    rsub-int/lit8 v3, v4, 0x18

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 1025
    :goto_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delayEnterAndExitSleepMode now = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", enterSleepModeDelayMs = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", exitSleepModeDelayMs = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "AODPresenter"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, v8, v3

    const/high16 v5, 0x10000000

    const/4 v6, 0x2

    if-lez v0, :cond_109

    const-string v0, "delay enter sleep mode"

    .line 1033
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_f6

    .line 1035
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.flyme.aod.sleep.enter"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    iget-object v7, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

    .line 1039
    :cond_f6
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1040
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1042
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long/2addr v12, v8

    iget-object v7, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterSleepModePendingIntent:Landroid/app/PendingIntent;

    .line 1040
    invoke-virtual {v0, v6, v12, v13, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_109
    cmp-long v0, v1, v3

    if-lez v0, :cond_133

    .line 1047
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mExitSleepModePendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_120

    .line 1048
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.flyme.aod.sleep.exit"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v11, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mExitSleepModePendingIntent:Landroid/app/PendingIntent;

    .line 1052
    :cond_120
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mExitSleepModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1053
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mExitSleepModePendingIntent:Landroid/app/PendingIntent;

    .line 1053
    invoke-virtual {v0, v6, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_133
    return-void
.end method

.method private delayEnterPocketMode()V
    .registers 7

    const-string v0, "AODPresenter"

    const-string v1, "delayEnterPocketMode"

    .line 1185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    .line 1188
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_24

    .line 1189
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.flyme.aod.pocket.enter"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

    .line 1193
    :cond_24
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1194
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterPocketModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1197
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayEnterPocketMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method private delayRefreshAODDisplay()V
    .registers 7

    .line 527
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "AODPresenter"

    const-string v1, "deleyRefreshAODDisplay"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->getFirstAODRefreshMilisecond()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 532
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_2e

    .line 533
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.flyme.aod.refresh"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODPendingIntent:Landroid/app/PendingIntent;

    .line 537
    :cond_2e
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 538
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 541
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleyRefreshAODDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method private enterAODMode(Z)V
    .registers 5

    const-string v0, "AODPresenter"

    const-string v1, "enterAODMode"

    .line 736
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 737
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    .line 738
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    .line 739
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 746
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 748
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mModelCallback:Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;

    invoke-interface {p1, v0}, Lcom/flyme/systemuitools/aod/model/IAODModel;->registerCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V

    .line 749
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 750
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegisterRaiseSensor:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 751
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegisterRaiseSensor:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    :cond_53
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->setCallback(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;)V

    return-void
.end method

.method private executeDismissfpOrExitDoze()V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getAuthenticationAcquire()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1232
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    .line 1233
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->disMissFpicon()V

    .line 1234
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 1235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1236
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0xe

    .line 1237
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1238
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_32

    .line 1241
    :cond_2f
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkSleepModePeriod()Z

    .line 1247
    :goto_32
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.flyme.aod.action.fingerprint_icon_visible_change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fingerprint_icon_visible"

    .line 1248
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1249
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_43
    return-void
.end method

.method private executeshowFpOrEnterDoze()V
    .registers 4

    .line 1254
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    .line 1255
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->cancelDelayBroadcast()V

    .line 1256
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->showFpIcon()V

    .line 1257
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkSleepModePeriod()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1258
    :cond_22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1259
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0xe

    .line 1260
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1261
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.flyme.aod.action.fingerprint_icon_visible_change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fingerprint_icon_visible"

    .line 1266
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private exitAODMode(Z)V
    .registers 4

    .line 705
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p1, "AODPresenter"

    const-string v0, "exitAODMode"

    .line 708
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 709
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    .line 710
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAODRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAodScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayRefreshAODDisplay()V

    .line 717
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {p1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->exitAODMode()V

    const/4 p1, -0x1

    .line 718
    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    const-wide/16 v0, -0x1

    .line 719
    iput-wide v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    .line 720
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayEnterAndExitSleepMode()V

    .line 721
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayEnterPocketMode()V

    .line 722
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 724
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mModelCallback:Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;

    invoke-interface {p1, v0}, Lcom/flyme/systemuitools/aod/model/IAODModel;->removeCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V

    .line 725
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegisterRaiseSensor:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->unRegisterSensor()V

    .line 727
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->releaseAODWakeLock()V

    const/4 p1, 0x2

    .line 728
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    return-void
.end method

.method private fingerprintAvaiable()Z
    .registers 2

    const-string p0, "persist.sys.meizu.fingerprint"

    const/4 v0, 0x0

    .line 642
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getDisplayMode()I
    .registers 6

    const-string p0, "AODPresenter"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 682
    :try_start_4
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/meizu/lcm/display/doze_mode"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_35
    .catchall {:try_start_4 .. :try_end_b} :catchall_32

    .line 683
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v1

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayMode  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_30
    .catchall {:try_start_b .. :try_end_27} :catchall_44

    .line 690
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_43

    :catch_2b
    move-exception p0

    .line 692
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catch_30
    move-exception v0

    goto :goto_39

    :catchall_32
    move-exception p0

    move-object v2, v0

    goto :goto_45

    :catch_35
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_39
    :try_start_39
    const-string v3, "getDisplayMode "

    .line 686
    invoke-static {p0, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_44

    if-eqz v2, :cond_43

    .line 690
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_2b

    :cond_43
    :goto_43
    return v1

    :catchall_44
    move-exception p0

    :goto_45
    if-eqz v2, :cond_4f

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    .line 692
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 693
    :cond_4f
    :goto_4f
    throw p0
.end method

.method private getFirstAODRefreshMilisecond()I
    .registers 2

    .line 1311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xd

    .line 1312
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3c

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method private hasMeizuLiveWallpaper()Z
    .registers 4

    .line 1297
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 1298
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 1300
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x5

    const-string/jumbo v2, "set_wallpaper_simultaneously"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz v0, :cond_2f

    .line 1302
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.meizu.flyme.sdkstage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-ne p0, v1, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method private inAODAvailableSituations()Z
    .registers 2

    .line 1163
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isInCall()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .registers 3

    .line 1101
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isDisplayOff()Z
    .registers 3

    .line 757
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method private isFingerprintAuthenticating()Z
    .registers 3

    .line 1131
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "fp_authenticate_in_aod_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isInCall()Z
    .registers 3

    .line 1151
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_28

    .line 1153
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIncall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private registerUserSwitchObserver()V
    .registers 3

    .line 1082
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    const-string v1, "AODPresenter"

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 1086
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method

.method private releaseAODWakeLock()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "releaseAODWakeLock"

    .line 985
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 987
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRefreshAODWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_14
    return-void
.end method

.method private switchAODPowerMode(I)V
    .registers 5

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchAODPowerMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DDI"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 867
    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 869
    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    .line 870
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateAODMode(Z)Z
    .registers 7

    .line 793
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->inAODAvailableSituations()Z

    move-result v0

    const-string v1, "AODPresenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-nez v0, :cond_e

    goto :goto_68

    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_49

    const-wide/16 v3, -0x1

    .line 801
    iput-wide v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    const-string p1, "not close ,reset "

    .line 802
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-ne p1, v3, :cond_66

    .line 804
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "go to aod because of fingerprint"

    .line 805
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_ON:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    .line 808
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAodScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result p1

    if-nez p1, :cond_67

    .line 810
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->unRegisterSensor()V

    goto :goto_67

    .line 814
    :cond_49
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-eq p1, v3, :cond_66

    .line 815
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "go to doze because of fingerprint"

    .line 816
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    goto :goto_67

    :cond_66
    move v0, v2

    :cond_67
    :goto_67
    return v0

    :cond_68
    :goto_68
    const-string/jumbo p0, "switchAODPowerMode, not available situations, do nothing"

    .line 794
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p0

    const-string/jumbo p1, "switchAODPowerMode not available situations, do nothing "

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return v2
.end method

.method private updateAODPowerMode(Z)Z
    .registers 7

    .line 762
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->inAODAvailableSituations()Z

    move-result v0

    const-string v1, "AODPresenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-nez v0, :cond_e

    goto :goto_5c

    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_3d

    const-wide/16 v3, -0x1

    .line 770
    iput-wide v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    const-string p1, "not close ,reset "

    .line 771
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-ne p1, v3, :cond_5a

    .line 773
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "go to doze suspend on"

    .line 774
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    .line 776
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_ON:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    .line 778
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAodScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5b

    .line 781
    :cond_3d
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-eq p1, v3, :cond_5a

    .line 782
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkPocketMode()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "pocket mode limit timeout, go to doze suspend off"

    .line 783
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    goto :goto_5b

    :cond_5a
    move v0, v2

    :goto_5b
    return v0

    :cond_5c
    :goto_5c
    const-string/jumbo p0, "switchAODPowerMode, not available situations, do nothing"

    .line 763
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p0

    const-string/jumbo p1, "switchAODPowerMode not available situations, do nothing "

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return v2
.end method

.method private updateAODSleepMode(Z)Z
    .registers 9

    .line 826
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->inAODAvailableSituations()Z

    move-result v0

    const-string v1, "AODPresenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-nez v0, :cond_f

    goto/16 :goto_ae

    .line 833
    :cond_f
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODSleepMode now = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "in"

    const-string v5, "out"

    if-eqz p1, :cond_26

    move-object v6, v4

    goto :goto_27

    :cond_26
    move-object v6, v5

    .line 834
    :goto_27
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-virtual {v0, v3}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAODSleepMode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move-object v4, v5

    :goto_40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_85

    .line 836
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isProximitySensorClose()Z

    move-result p1

    if-nez p1, :cond_85

    .line 837
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-ne p1, v3, :cond_ac

    .line 838
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_ac

    const-string/jumbo p1, "sleep mode out, go to doze suspend on"

    .line 839
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_ON:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    .line 842
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAodScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 844
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->fingerprintAvaiable()Z

    move-result p1

    if-nez p1, :cond_ad

    .line 845
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->unRegisterSensor()V

    goto :goto_ad

    .line 848
    :cond_85
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkSleepModePeriod()Z

    move-result p1

    if-eqz p1, :cond_ac

    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-eq p1, v3, :cond_ac

    .line 850
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result p1

    if-eqz p1, :cond_ac

    const-string/jumbo p1, "sleep mode in, go to doze suspend off"

    .line 851
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->switchAODPowerMode(I)V

    .line 855
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->registerSensor()V

    goto :goto_ad

    :cond_ac
    move v0, v2

    :cond_ad
    :goto_ad
    return v0

    :cond_ae
    :goto_ae
    const-string/jumbo p0, "switchAODPowerMode, not available situations, do nothing"

    .line 827
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p0

    const-string/jumbo p1, "switchAODPowerMode not available situations, do nothing "

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    return v2
.end method

.method private watchForDeviceProvisioning()V
    .registers 5

    .line 1106
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$10;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1117
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 1118
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1117
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1121
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 1122
    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_2f

    .line 1123
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    .line 1124
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDeviceProvisioned:Z

    if-eqz v0, :cond_2f

    .line 1125
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2f
    return-void
.end method

.method private watchForFingerprintAuthenticating()V
    .registers 4

    .line 1136
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mFingerprintAuthenticatingObserver:Landroid/database/ContentObserver;

    .line 1145
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fp_authenticate_in_aod_mode"

    .line 1146
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mFingerprintAuthenticatingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 1145
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private writeDisplayModeFile(Ljava/lang/String;I)V
    .registers 10

    const-string p0, "AODPresenter"

    const-string/jumbo v0, "writeDisplayFile end"

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeDisplayFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DDI"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 658
    :try_start_25
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_65
    .catchall {:try_start_25 .. :try_end_2a} :catchall_62

    .line 659
    :try_start_2a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 660
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 661
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_54} :catch_60
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_54} :catch_5d
    .catchall {:try_start_2a .. :try_end_54} :catchall_5b

    .line 667
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :try_start_57
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_75

    goto :goto_96

    :catchall_5b
    move-exception p0

    goto :goto_97

    :catch_5d
    move-exception p1

    move-object v1, v5

    goto :goto_66

    :catch_60
    move-object v1, v5

    goto :goto_7a

    :catchall_62
    move-exception p0

    move-object v5, v1

    goto :goto_97

    :catch_65
    move-exception p1

    :goto_66
    :try_start_66
    const-string/jumbo p2, "write error: "

    .line 665
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_62

    .line 667
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_96

    .line 670
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_96

    :catch_75
    move-exception p0

    .line 673
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    .line 663
    :catch_7a
    :goto_7a
    :try_start_7a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find aod display mode file "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_62

    .line 667
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_96

    .line 670
    :try_start_93
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_75

    :cond_96
    :goto_96
    return-void

    .line 667
    :goto_97
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_a4

    .line 670
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p1

    .line 673
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 674
    :cond_a4
    :goto_a4
    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AODPresenter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1ea

    if-eq v0, v3, :cond_141

    const/4 v4, 0x2

    if-eq v0, v4, :cond_c4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_245

    const/4 v1, 0x4

    if-eq v0, v1, :cond_bf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_ba

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_7f

    packed-switch v0, :pswitch_data_246

    goto/16 :goto_245

    .line 444
    :pswitch_1f  #0xe
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_25

    move v0, v3

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->updateAODMode(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 445
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODPowerMode()V

    .line 447
    :cond_2f
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_245

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkPocketMode()Z

    move-result p1

    if-eqz p1, :cond_245

    .line 448
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcast()V

    goto/16 :goto_245

    .line 460
    :pswitch_44  #0xd
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {p1, v2}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setLightSensorEnabled(Z)V

    .line 461
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {p0, v2}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setProximitySensorEnabled(Z)V

    goto/16 :goto_245

    .line 455
    :pswitch_50  #0xc
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v3, v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setLightSensorEnabled(ZI)V

    .line 457
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {p0, v3}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setProximitySensorEnabled(Z)V

    goto/16 :goto_245

    .line 439
    :pswitch_5e  #0xa
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isProximitySensorClose()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->updateAODPowerMode(Z)Z

    move-result p1

    if-eqz p1, :cond_245

    .line 440
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODPowerMode()V

    goto/16 :goto_245

    .line 428
    :pswitch_6f  #0x8
    invoke-direct {p0, v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->updateAODSleepMode(Z)Z

    .line 429
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODPowerMode()V

    goto/16 :goto_245

    .line 432
    :pswitch_77  #0x7
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->updateAODSleepMode(Z)Z

    .line 433
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODPowerMode()V

    goto/16 :goto_245

    .line 464
    :cond_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_b0

    .line 465
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getFingerprintVisibility()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 466
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {p1, v2}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->setAODTimeViewVisible(Z)V

    .line 468
    :cond_9c
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcast()V

    .line 469
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcastForMotion()V

    goto/16 :goto_245

    .line 471
    :cond_b0
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->aquireAODWakeLock()V

    .line 473
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {p0, v3}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->setAODTimeViewVisible(Z)V

    goto/16 :goto_245

    .line 425
    :cond_ba
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODMode()V

    goto/16 :goto_245

    .line 422
    :cond_bf
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODMode()V

    goto/16 :goto_245

    .line 397
    :cond_c4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_c9

    goto :goto_ca

    :cond_c9
    move v3, v2

    :goto_ca
    if-eqz v3, :cond_d0

    .line 399
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayEnterPocketMode()V

    goto :goto_fd

    .line 401
    :cond_d0
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayEnterPocketMode()V

    .line 402
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->canShowFp()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getFingerprintVisibility()Z

    move-result p1

    if-nez p1, :cond_fd

    .line 403
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcast()V

    .line 404
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->executeShowFp()V

    :cond_fd
    :goto_fd
    if-nez v3, :cond_118

    .line 408
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result p1

    if-nez p1, :cond_118

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->canShowFp()Z

    move-result p1

    if-nez p1, :cond_118

    const-string p0, "aod switch close and fp not show, ignore this proximity change"

    .line 409
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_245

    .line 411
    :cond_118
    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->updateAODPowerMode(Z)Z

    move-result p1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh aod power mode, mAODPowerMode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", change = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_245

    .line 415
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODPowerMode()V

    goto/16 :goto_245

    .line 371
    :cond_141
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_146

    goto :goto_147

    :cond_146
    move v3, v2

    .line 372
    :goto_147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refresh aod delayed begin, mLastPocketModeTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mLastPocketModeTime:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isDisplayOff = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->isDisplayOff()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAODPowerMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    instance-of p1, p1, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    if-eqz p1, :cond_1bf

    .line 376
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh aod delayed mAODPowerMode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", aod display impl show ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    check-cast v4, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    .line 379
    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->isShown()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",  isProximitySensorClose() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 381
    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isProximitySensorClose()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDarkenLight() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 383
    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p1, v0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 385
    :cond_1bf
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAndSetDisplayMode()I

    .line 386
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    invoke-interface {v0}, Lcom/flyme/systemuitools/aod/model/IAODModel;->getBatteryInfo()Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->showBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    .line 387
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {p1, v3}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->refreshAODMode(Z)V

    .line 388
    iget p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODPowerMode:I

    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->HWC_POWER_MODE_DOZE_SUSPEND_OFF:I

    if-ne p1, v0, :cond_1e1

    const-string p1, "in doze suspend off, no need to refresh per minute"

    .line 389
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->cancelDelayRefreshAODDisplay()V

    goto :goto_245

    :cond_1e1
    const-string p1, "not in doze suspend off,refresh delay"

    .line 392
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayRefreshAODDisplay()V

    goto :goto_245

    .line 355
    :cond_1ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh and enter aod mode delayed, checkNightMode() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkNightMode()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSensorPolicy.isProximitySensorClose() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 359
    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isProximitySensorClose()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSensorPolicy.isDarkenLight() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSensorPolicy:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 361
    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {v0}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->enterAODMode()V

    .line 363
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 364
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODModel:Lcom/flyme/systemuitools/aod/model/IAODModel;

    invoke-interface {v1}, Lcom/flyme/systemuitools/aod/model/IAODModel;->getBatteryInfo()Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->showBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    .line 365
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_23b

    goto :goto_23c

    :cond_23b
    move v3, v2

    :goto_23c
    invoke-interface {v0, v3}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->refreshAODMode(Z)V

    .line 367
    :cond_23f
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayRefreshAODDisplay()V

    .line 368
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->delayEnterAndExitSleepMode()V

    :cond_245
    :goto_245
    :pswitch_245  #0x9, 0xb
    return v2

    :pswitch_data_246
    .packed-switch 0x7
        :pswitch_77  #00000007
        :pswitch_6f  #00000008
        :pswitch_245  #00000009
        :pswitch_5e  #0000000a
        :pswitch_245  #0000000b
        :pswitch_50  #0000000c
        :pswitch_44  #0000000d
        :pswitch_1f  #0000000e
    .end packed-switch
.end method

.method public isCurrentInTimeScope(IIII)Z
    .registers 12

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 885
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 886
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 888
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 889
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 890
    iput p1, v2, Landroid/text/format/Time;->hour:I

    .line 891
    iput p2, v2, Landroid/text/format/Time;->minute:I

    const/4 p1, 0x0

    .line 892
    iput p1, v2, Landroid/text/format/Time;->second:I

    .line 894
    new-instance p2, Landroid/text/format/Time;

    invoke-direct {p2}, Landroid/text/format/Time;-><init>()V

    .line 895
    invoke-virtual {p2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 896
    iput p3, p2, Landroid/text/format/Time;->hour:I

    .line 897
    iput p4, p2, Landroid/text/format/Time;->minute:I

    .line 898
    iput p1, p2, Landroid/text/format/Time;->second:I

    .line 900
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkNightMode startTime = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", endTime = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AODPresenter"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {v2, p2}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p3

    const-string v0, "checkNightMode now = "

    const/4 v1, 0x1

    if-nez p3, :cond_97

    .line 904
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 905
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p3

    if-nez p3, :cond_68

    invoke-virtual {p0, p2}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result p2

    if-nez p2, :cond_68

    move p1, v1

    .line 906
    :cond_68
    new-instance p2, Landroid/text/format/Time;

    invoke-direct {p2}, Landroid/text/format/Time;-><init>()V

    .line 907
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {p2, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 908
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTimeInThisDay = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0, p2}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p0

    if-nez p0, :cond_b6

    :goto_95
    move p1, v1

    goto :goto_b6

    .line 915
    :cond_97
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p3

    if-nez p3, :cond_b6

    invoke-virtual {p0, p2}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto :goto_95

    :cond_b6
    :goto_b6
    return p1
.end method

.method public onCreate()V
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->registerBroadcaseReceiver(Landroid/content/Context;)V

    .line 484
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 485
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->checkAODMode()V

    .line 486
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->registerUserSwitchObserver()V

    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "onFinishedWakingUp"

    .line 587
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mEnterAOD:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 589
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->exitAODMode(Z)V

    :cond_f
    return-void
.end method

.method public onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 1293
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mAODDisplay:Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    invoke-interface {p0, p1}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "onStartedGoingToSleep"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$8;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 3

    const-string v0, "AODPresenter"

    const-string v1, "onStartedWakingUp"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mSetDozeMode:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerBroadcaseReceiver(Landroid/content/Context;)V
    .registers 4

    .line 499
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegister:Z

    if-nez v0, :cond_45

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mRegister:Z

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 502
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 503
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.flyme.aod.refresh"

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 508
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.flyme.aod.sleep.enter"

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.flyme.aod.sleep.exit"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.flyme.aod.pocket.enter"

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "delay_dismiss_fingerprint"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "delay_dismiss_fingerprint_for_motion"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_45
    return-void
.end method
