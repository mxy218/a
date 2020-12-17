.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final DEBUG:Z

.field public static final LOCATION_STATUS_ICON_ID:I

.field private static final mBluetoothBatteryLevelArray:[I


# instance fields
.field private MAX_UPDATE_COUNT:I

.field private PER_UPDATE_DURATION:I

.field private mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBattertEventType:I

.field private mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBatteryLevel:I

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothDownUpIcon:I

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetConnected:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserSetup:Z

.field private final mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetMic:I

.field private mHeadsetState:I

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mManagedProfileIconVisible:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private final mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mRefreshAnyway:Z

.field private mRemoveCastIconRunnable:Ljava/lang/Runnable;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

.field private final mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mSlotAlarmClock:Ljava/lang/String;

.field private final mSlotBluetooth:Ljava/lang/String;

.field private final mSlotCast:Ljava/lang/String;

.field private final mSlotDataSaver:Ljava/lang/String;

.field private final mSlotHeadset:Ljava/lang/String;

.field private final mSlotHotspot:Ljava/lang/String;

.field private final mSlotLocation:Ljava/lang/String;

.field private final mSlotManagedProfile:Ljava/lang/String;

.field private final mSlotRotate:Ljava/lang/String;

.field private final mSlotSensorsOff:Ljava/lang/String;

.field private final mSlotTty:Ljava/lang/String;

.field private final mSlotVolume:Ljava/lang/String;

.field private final mSlotZen:Ljava/lang/String;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUpdateCount:I

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

.field private mVolumeVisible:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenVisible:Z

.field private mic_no_flag:I

.field private mic_with_flag:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "PhoneStatusBarPolicy"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 1074
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_1:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_2:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_3:I

    aput v2, v1, v0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_4:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_5:I

    const/4 v2, 0x5

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_6:I

    const/4 v2, 0x6

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_7:I

    const/4 v2, 0x7

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_8:I

    const/16 v2, 0x8

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_9:I

    const/16 v2, 0x9

    aput v0, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    .line 1086
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_location:I

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .registers 8

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 122
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->MAX_UPDATE_COUNT:I

    const/16 v0, 0x1f4

    .line 123
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->PER_UPDATE_DURATION:I

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 146
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 151
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 530
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    .line 546
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 554
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 561
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 570
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    .line 654
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 709
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    .line 798
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, -0x1

    .line 1092
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    .line 1093
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    .line 1095
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 1096
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 1098
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    .line 1099
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    .line 1100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 1101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 166
    const-class p2, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/CastController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 167
    const-class p2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 168
    const-class p2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 169
    const-class p2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    const-string p2, "alarm"

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 171
    const-class p2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 172
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    .line 173
    const-class p2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 174
    const-class p2, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 175
    const-class p2, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 176
    const-class p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 177
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 178
    const-class p2, Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 179
    const-class p2, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    const p2, 0x10406b3

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const p2, 0x10406bb

    .line 182
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const p2, 0x10406b1

    .line 183
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    const p2, 0x10406cc

    .line 184
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const p2, 0x10406d0

    .line 185
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const p2, 0x10406cd

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const p2, 0x10406af

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const p2, 0x10406be

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    const p2, 0x10406c6

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const p2, 0x10406ba

    .line 191
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    const p2, 0x10406b7

    .line 192
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    const p2, 0x10406bd

    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const p2, 0x10406c8

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    .line 197
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->registerAlarmClockChanged(IZ)V

    .line 200
    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    const-string/jumbo v1, "statusbar"

    .line 202
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 204
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.btopp.intent.action.BT_OPP_DATA_CHANGE"

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 206
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 207
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 208
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 209
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "flyme.intent.action.ICON_SWITCH_STATE_CHANGED"

    .line 210
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 212
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 213
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 214
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 215
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 216
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 217
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 218
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 219
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 226
    :try_start_1fb
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    const-string v2, "PhoneStatusBarPolicy"

    invoke-interface {p2, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_206
    .catch Landroid/os/RemoteException; {:try_start_1fb .. :try_end_206} :catch_206

    .line 232
    :catch_206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 238
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 239
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 242
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 243
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 246
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 247
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 251
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 252
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHotspotIcon()V

    .line 256
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 259
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_managed_profile_status:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_managed_profile:I

    .line 260
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-interface {p2, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 261
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    invoke-interface {p2, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 264
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_saver:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_data_saver_on:I

    .line 265
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-interface {p2, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_location_active:I

    .line 269
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {p1, p2, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_sensors_off:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_sensors_off_active:I

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    .line 276
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;->isSensorPrivacyEnabled()Z

    move-result v0

    .line 275
    invoke-interface {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 280
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 284
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mzUpdateHeadSet(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I
    .registers 2

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUpdateCount:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I
    .registers 1

    .line 85
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->MAX_UPDATE_COUNT:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;IZ)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->registerAlarmClockChanged(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->notifyIconSwitchStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHotspotIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-object p1
.end method

.method private buildAlarmContentDescription()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_d

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_alarm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 325
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 324
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "EHm"

    goto :goto_14

    :cond_12
    const-string v0, "Ehma"

    .line 326
    :goto_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 329
    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_alarm:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final mzUpdateHeadSet(II)V
    .registers 7

    .line 1015
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    .line 1016
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    .line 1017
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHeadSet, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v0, -0x1

    if-eq p1, v0, :cond_83

    if-ne p2, v0, :cond_32

    goto :goto_83

    :cond_32
    const-string v0, "headset"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6b

    const/4 p1, 0x0

    if-ne p2, v2, :cond_53

    .line 1023
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 1024
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_headset_with_mic:I

    invoke-interface {p2, v0, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1025
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eqz p2, :cond_4e

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-nez p0, :cond_4f

    :cond_4e
    move v1, v2

    :cond_4f
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_83

    .line 1027
    :cond_53
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 1028
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_headset_without_mic:I

    invoke-interface {p2, v0, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1029
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eqz p2, :cond_66

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-nez p0, :cond_67

    :cond_66
    move v1, v2

    :cond_67
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_83

    :cond_6b
    if-nez p2, :cond_7a

    .line 1033
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    if-ne v2, p1, :cond_7a

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    if-ne v2, p1, :cond_7a

    .line 1034
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 1035
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    goto :goto_83

    .line 1037
    :cond_7a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1038
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 1039
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    :cond_83
    :goto_83
    return-void
.end method

.method private final mzUpdateHeadSet(Landroid/content/Intent;)V
    .registers 7

    .line 999
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 1000
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    const v0, -0x7ffffff0

    const-string v1, ""

    .line 1001
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_26

    const/high16 v0, -0x7e000000

    .line 1003
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_24

    goto :goto_26

    :cond_24
    move v0, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v0, v3

    .line 1005
    :goto_27
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUpdateCount:I

    if-lez v1, :cond_3b

    sub-int/2addr v1, v3

    .line 1006
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUpdateCount:I

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->PER_UPDATE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1011
    :cond_3b
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mzUpdateHeadSet(II)V

    return-void
.end method

.method private notifyIconSwitchStateChanged(Landroid/content/Intent;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "slot"

    .line 1046
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v1, -0x1

    .line 1050
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x305518e6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_38

    const v3, 0x17a0f8a0

    if-eq v2, v3, :cond_2e

    const v3, 0x2f67a282

    if-eq v2, v3, :cond_24

    goto :goto_42

    :cond_24
    const-string v2, "headset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v1, v4

    goto :goto_42

    :cond_2e
    const-string v2, "alarm_clock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v1, v5

    goto :goto_42

    :cond_38
    const-string/jumbo v2, "volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v1, 0x0

    :cond_42
    :goto_42
    if-eqz v1, :cond_51

    if-eq v1, v5, :cond_4d

    if-eq v1, v4, :cond_49

    goto :goto_56

    .line 1059
    :cond_49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mzUpdateHeadSet(Landroid/content/Intent;)V

    goto :goto_56

    .line 1056
    :cond_4d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    goto :goto_56

    .line 1052
    :cond_51
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRefreshAnyway:Z

    .line 1053
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    :goto_56
    return-void
.end method

.method private registerAlarmClockChanged(IZ)V
    .registers 10

    if-eqz p2, :cond_9

    .line 811
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    :cond_9
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 814
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerAlarmClockChanged:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneStatusBarPolicy"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private updateAlarm()V
    .registers 8

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 305
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 306
    :goto_18
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    .line 308
    :goto_24
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    if-eqz v3, :cond_2d

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_alarm_dim:I

    goto :goto_2f

    .line 309
    :cond_2d
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    :goto_2f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->buildAlarmContentDescription()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-interface {v4, v5, v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-eqz p0, :cond_41

    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    invoke-interface {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateBluetooth()V
    .registers 1

    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 823
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBluetooth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneStatusBarPolicy"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 832
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v6, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v6, :cond_31

    move v4, v7

    goto :goto_32

    :cond_31
    move v4, v8

    :goto_32
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 834
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/high16 v10, -0x80000000

    const-string v11, "android.bluetooth.adapter.extra.STATE"

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v9, :cond_5b

    .line 835
    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v6, :cond_4f

    const/16 v6, 0xb

    if-ne v9, v6, :cond_4d

    goto :goto_4f

    :cond_4d
    move v6, v8

    goto :goto_50

    :cond_4f
    :goto_4f
    move v6, v7

    .line 836
    :goto_50
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 837
    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    invoke-direct {v0, v6, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mzUpdateHeadSet(II)V

    goto/16 :goto_1c6

    :cond_5b
    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 838
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_82

    const-string v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 839
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_77

    .line 842
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    .line 843
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->accessibility_bluetooth_connected:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7f

    .line 845
    :cond_77
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->accessibility_bluetooth_disconnected:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_7f
    move-object v12, v6

    goto/16 :goto_1c6

    :cond_82
    const-string v6, "android.btopp.intent.action.BT_OPP_DATA_CHANGE"

    .line 850
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    const-string v6, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 851
    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_98

    .line 856
    sget v2, Lcom/android/systemui/R$drawable;->bt_status_download:I

    .line 857
    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto/16 :goto_1c6

    :cond_98
    if-ne v6, v7, :cond_a0

    .line 860
    sget v2, Lcom/android/systemui/R$drawable;->bt_status_upload:I

    .line 861
    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto/16 :goto_1c6

    .line 868
    :cond_a0
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v6, :cond_b8

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 869
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    .line 871
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_b8

    .line 872
    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    if-eq v6, v13, :cond_b8

    .line 873
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    aget v2, v2, v6

    .line 877
    :cond_b8
    iput v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto/16 :goto_1c6

    :cond_bc
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 881
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v14, "android.bluetooth.device.extra.DEVICE"

    if-eqz v6, :cond_14d

    .line 882
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    const-string v14, "android.bluetooth.profile.extra.STATE"

    .line 884
    invoke-virtual {v1, v14, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v9, :cond_d6

    move v15, v7

    goto :goto_d7

    :cond_d6
    move v15, v8

    .line 885
    :goto_d7
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eq v15, v8, :cond_e9

    if-ne v14, v9, :cond_df

    move v8, v7

    goto :goto_e0

    :cond_df
    const/4 v8, 0x0

    .line 886
    :goto_e0
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    .line 887
    iget v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mzUpdateHeadSet(II)V

    :cond_e9
    if-nez v14, :cond_124

    .line 892
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v8, :cond_f7

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 893
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    :cond_f7
    if-eqz v6, :cond_11c

    .line 898
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v8, :cond_11c

    .line 900
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11c

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 901
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11c

    .line 902
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11c

    return-void

    .line 906
    :cond_11c
    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 907
    iput v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 908
    iput v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    goto/16 :goto_1c6

    .line 912
    :cond_124
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v8, :cond_1c6

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v8

    if-eqz v8, :cond_1c6

    .line 913
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_137

    return-void

    .line 916
    :cond_137
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    if-eqz v6, :cond_1c6

    .line 920
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 921
    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c6

    .line 922
    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    if-eq v6, v13, :cond_1c6

    .line 923
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    aget v2, v2, v6

    goto/16 :goto_1c6

    :cond_14d
    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 929
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 933
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 935
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v6

    if-eqz v2, :cond_18c

    .line 936
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v8, :cond_18c

    .line 938
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18c

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 939
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18c

    .line 940
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18c

    if-ne v6, v13, :cond_18c

    const-string/jumbo v0, "updateBluetooth: disconnect the connected but inactive device,do not update icon"

    .line 943
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 946
    :cond_18c
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 948
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBluetooth: batteryPercent="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v13, :cond_1ac

    return-void

    :cond_1ac
    const/16 v6, 0xa

    .line 954
    div-int/2addr v2, v6

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 956
    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    if-ne v2, v6, :cond_1b8

    sub-int/2addr v2, v7

    .line 957
    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 959
    :cond_1b8
    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    if-ltz v2, :cond_26a

    const/16 v6, 0x9

    if-le v2, v6, :cond_1c2

    goto/16 :goto_26a

    .line 962
    :cond_1c2
    sget-object v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    aget v2, v6, v2

    .line 967
    :cond_1c6
    :goto_1c6
    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    if-eq v6, v13, :cond_1cb

    move v2, v6

    .line 971
    :cond_1cb
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1da

    .line 972
    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1da

    return-void

    .line 977
    :cond_1da
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    if-eq v2, v1, :cond_1e0

    move v1, v7

    goto :goto_1e1

    :cond_1e0
    const/4 v1, 0x0

    .line 978
    :goto_1e1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_23e

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBluetooth: iconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",level9="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_battery_9:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",normal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",con="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",down="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->bt_status_download:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->bt_status_upload:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",Enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_23e
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v3, :cond_25b

    if-eqz v1, :cond_25b

    .line 988
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 989
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v0, :cond_256

    if-eqz v1, :cond_256

    goto :goto_257

    :cond_256
    const/4 v7, 0x0

    :goto_257
    invoke-interface {v2, v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_26a

    .line 991
    :cond_25b
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v0, :cond_266

    if-eqz v1, :cond_266

    goto :goto_267

    :cond_266
    const/4 v7, 0x0

    :goto_267
    invoke-interface {v2, v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_26a
    :goto_26a
    return-void
.end method

.method private updateBluetoothDeviceIcon(I)V
    .registers 6

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBluetoothDeviceIcon: active device bluetooth icon update,iconId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_36

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 794
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v2, "bluetooth"

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 795
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-interface {p1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCast()V
    .registers 7

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 479
    iget v1, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-eq v1, v2, :cond_1e

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_1e
    move v0, v2

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 485
    :goto_21
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    const-string v3, "PhoneStatusBarPolicy"

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCast: isCasting: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_3c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_5e

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_casting:I

    .line 489
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-interface {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_71

    .line 494
    :cond_5e
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_68

    const-string/jumbo v0, "updateCast: hiding icon in 3 sec..."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_71
    return-void
.end method

.method private updateHotspotIcon()V
    .registers 5

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApWifiGeneration()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 721
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 720
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_56

    :cond_1b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_5_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 724
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_56

    :cond_30
    const/4 v1, 0x4

    if-ne v0, v1, :cond_45

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_4_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 727
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 726
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_56

    .line 729
    :cond_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 730
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    :goto_56
    return-void
.end method

.method private updateLocation()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationActive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_19

    .line 650
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_19
    return-void
.end method

.method private updateManagedProfile()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$0YjhmxnSstzZ2dpboZJyd_6m3ZY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$0YjhmxnSstzZ2dpboZJyd_6m3ZY;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "ss"

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 335
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    :cond_14
    const-string v1, "CARD_IO_ERROR"

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 337
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    :cond_21
    const-string v1, "CARD_RESTRICTED"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 339
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    :cond_2e
    const-string v1, "READY"

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 341
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    :cond_3b
    const-string v1, "LOCKED"

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "reason"

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PIN"

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 346
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    :cond_56
    const-string v0, "PUK"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 348
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    .line 350
    :cond_63
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6c

    .line 353
    :cond_68
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_6c
    return-void
.end method

.method private final updateTTY()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    goto :goto_19

    .line 454
    :cond_12
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    :goto_19
    return-void
.end method

.method private final updateTTY(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    move p1, v1

    .line 461
    :goto_7
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    const-string v3, "PhoneStatusBarPolicy"

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTTY: enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz p1, :cond_47

    .line 465
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "updateTTY: set TTY on"

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_tty_mode:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_tty_enabled:I

    .line 467
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_58

    .line 471
    :cond_47
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz p1, :cond_51

    const-string/jumbo p1, "updateTTY: set TTY off"

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_58
    return-void
.end method

.method private final updateVolumeZen()V
    .registers 11

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    .line 369
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_45

    :cond_24
    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 375
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    .line 376
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_31
    move v7, v2

    move v2, v5

    goto :goto_57

    :cond_34
    if-ne v1, v5, :cond_41

    .line 379
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    .line 380
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->interruption_level_priority:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    :cond_41
    move-object v6, v3

    move v2, v4

    move v7, v2

    goto :goto_57

    :cond_45
    :goto_45
    if-eqz v1, :cond_49

    move v2, v5

    goto :goto_4a

    :cond_49
    move v2, v4

    .line 371
    :goto_4a
    sget v6, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    .line 372
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    move v7, v6

    move-object v6, v9

    .line 383
    :goto_57
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 384
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-ne v1, v5, :cond_74

    .line 386
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_ringer_vibrate:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_87

    .line 388
    :cond_74
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_85

    .line 390
    sget v0, Lcom/android/systemui/R$drawable;->mz_stat_sys_ringer_silent:I

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_ringer_silent:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_87

    :cond_85
    move v0, v4

    move v5, v0

    :goto_87
    if-eqz v2, :cond_90

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v1, v8, v7, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 398
    :cond_90
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v2, v1, :cond_9d

    .line 399
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 400
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    :cond_9d
    if-eqz v5, :cond_a6

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 406
    :cond_a6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-ne v5, v0, :cond_ae

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRefreshAnyway:Z

    if-eqz v0, :cond_b9

    .line 407
    :cond_ae
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRefreshAnyway:Z

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 409
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 411
    :cond_b9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method


# virtual methods
.method public appTransitionStarting(IJJZ)V
    .registers 7

    .line 583
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p2, p1, :cond_b

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    :cond_b
    return-void
.end method

.method public synthetic lambda$updateManagedProfile$0$PhoneStatusBarPolicy(Z)V
    .registers 7

    if-eqz p1, :cond_25

    .line 510
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 511
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_12
    const/4 p1, 0x1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_managed_profile_status:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_managed_profile:I

    .line 515
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 519
    :goto_26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    if-eq v0, p1, :cond_33

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 521
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    :cond_33
    return-void
.end method

.method public synthetic lambda$updateManagedProfile$1$PhoneStatusBarPolicy()V
    .registers 4

    .line 506
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLastResumedActivityUserId()I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception p0

    const-string v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateManagedProfile: "

    .line 525
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 7

    .line 746
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    const-string v1, "PhoneStatusBarPolicy"

    if-eqz p1, :cond_46

    .line 748
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_46

    .line 753
    :cond_d
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1c

    return-void

    :cond_1c
    const-string p1, "onActiveDeviceChanged: switch to new active device,but it doesn\'t support battery display"

    .line 762
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothDeviceIcon(I)V

    return-void

    :cond_25
    const/16 p2, 0xa

    .line 769
    div-int/2addr v2, p2

    if-ne v2, p2, :cond_2c

    add-int/lit8 v2, v2, -0x1

    :cond_2c
    if-ltz v2, :cond_3d

    const/16 p2, 0x9

    if-le v2, p2, :cond_33

    goto :goto_3d

    .line 782
    :cond_33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 783
    sget-object p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    aget p1, p1, v2

    .line 784
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothDeviceIcon(I)V

    return-void

    :cond_3d
    :goto_3d
    const-string p1, "onActiveDeviceChanged: switch to new active device which support battery display,but it\'s battery level is unavailable"

    .line 775
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothDeviceIcon(I)V

    return-void

    :cond_46
    :goto_46
    const-string p0, "onActiveDeviceChanged: active device is empty"

    .line 749
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothDevicesChanged()V
    .registers 1

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .registers 2

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 2

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .registers 1

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method public onLocationActiveChanged(Z)V
    .registers 2

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateLocation()V

    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .registers 6

    .line 604
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result p2

    if-eqz p1, :cond_38

    if-eqz p2, :cond_1e

    .line 608
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_rotate_portrait:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_rotation_lock_on_portrait:I

    .line 609
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_2f

    .line 611
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_rotate_landscape:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_rotation_lock_on_landscape:I

    .line 612
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 614
    :goto_2f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_40

    .line 616
    :cond_38
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_40
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onUserSetupChanged()V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 596
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    .line 595
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 597
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-ne v1, v0, :cond_f

    return-void

    .line 598
    :cond_f
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method
