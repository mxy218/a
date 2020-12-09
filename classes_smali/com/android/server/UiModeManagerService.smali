.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z = false

.field protected static final OVERRIDE_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode_override"

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCar:Z

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private final mDarkThemeObserver:Landroid/database/ContentObserver;

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNightModeOverride:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private mSetupWizardComplete:Z

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWaitForScreenOff:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 86
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 88
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 92
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    .line 95
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 97
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 101
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 116
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 118
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 120
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 121
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 122
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 124
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance p1, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 167
    new-instance p1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance p1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance p1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 230
    new-instance p1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance p1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 253
    new-instance p1, Lcom/android/server/UiModeManagerService$7;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance p1, Lcom/android/server/UiModeManagerService$8;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 439
    new-instance p1, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 141
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/PowerManager$WakeLock;Lcom/android/server/twilight/TwilightManager;Landroid/os/PowerManager;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 86
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 88
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 92
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    .line 95
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 97
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 101
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 116
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 118
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 120
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 121
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 122
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 124
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance p1, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 167
    new-instance p1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance p1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance p1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 230
    new-instance p1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance p1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 253
    new-instance p1, Lcom/android/server/UiModeManagerService$7;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance p1, Lcom/android/server/UiModeManagerService$8;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 439
    new-instance p1, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 148
    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 149
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 150
    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 151
    iput-object p5, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 152
    iput-boolean p6, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .line 77
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/UiModeManagerService;I)I
    .registers 2

    .line 77
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .registers 2

    .line 77
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEvent()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 10

    .line 950
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_14

    .line 952
    nop

    .line 953
    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 961
    :cond_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_23

    .line 962
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1f

    .line 963
    const/high16 v2, 0x80000

    goto :goto_20

    .line 964
    :cond_1f
    const/4 v2, 0x0

    .line 962
    :goto_20
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 967
    :cond_23
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_33

    .line 968
    nop

    .line 969
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 972
    :cond_33
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_a2

    .line 973
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v2, :cond_9d

    .line 974
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10807d7

    .line 978
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x4

    .line 979
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 980
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 981
    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x106001c

    .line 982
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x1040120

    .line 985
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 984
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x104011f

    .line 987
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 989
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 988
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 991
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 992
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 991
    invoke-virtual {v1, v7, v6, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 993
    goto :goto_a2

    .line 994
    :cond_9d
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v6, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 998
    :cond_a2
    :goto_a2
    return-void
.end method

.method private applyConfigurationExternallyLocked()V
    .registers 4

    .line 754
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_29

    .line 755
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 757
    :try_start_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_29

    .line 760
    :catch_18
    move-exception v0

    .line 761
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Activity does not have the "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 758
    :catch_21
    move-exception v0

    .line 759
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    :cond_29
    :goto_29
    return-void
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/high16 p0, 0x10200000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    return-object v0
.end method

.method private getComputedUiModeConfiguration(I)I
    .registers 3

    .line 746
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    goto :goto_9

    .line 747
    :cond_7
    const/16 v0, 0x10

    :goto_9
    or-int/2addr p1, v0

    .line 748
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_11

    const/16 v0, -0x11

    goto :goto_13

    .line 749
    :cond_11
    const/16 v0, -0x21

    :goto_13
    and-int/2addr p1, v0

    .line 750
    return p1
.end method

.method private static isDeskDockState(I)Z
    .registers 3

    .line 670
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    .line 676
    const/4 p0, 0x0

    return p0

    .line 674
    :cond_b
    return v0
.end method

.method private persistNightMode(I)V
    .registers 5

    .line 681
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 683
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    const-string/jumbo v2, "ui_night_mode_override"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 685
    return-void
.end method

.method private registerScreenOffEvent()V
    .registers 4

    .line 423
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_5

    return-void

    .line 424
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    return-void
.end method

.method private registerVrStateListener()V
    .registers 5

    .line 1018
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 1021
    if-eqz v0, :cond_2b

    .line 1022
    :try_start_d
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_2b

    .line 1024
    :catch_13
    move-exception v0

    .line 1025
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register VR mode state listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1026
    :cond_2b
    :goto_2b
    nop

    .line 1027
    :goto_2c
    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 19

    .line 909
    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 913
    nop

    .line 914
    if-eqz p1, :cond_76

    .line 922
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 925
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_60

    const/4 v14, 0x0

    const/4 v0, -0x2

    move-object v7, v15

    move-object v3, v15

    move v15, v0

    :try_start_2d
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 928
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 929
    const/4 v0, 0x1

    move v3, v0

    goto :goto_5b

    .line 930
    :cond_3a
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_5a

    .line 931
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startActivityWithConfig result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_5a} :catch_5e

    .line 936
    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    move/from16 v16, v3

    goto :goto_78

    .line 934
    :catch_5e
    move-exception v0

    goto :goto_62

    :catch_60
    move-exception v0

    move-object v3, v15

    .line 935
    :goto_62
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    :cond_76
    const/16 v16, 0x0

    :goto_78
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 944
    if-eqz p1, :cond_86

    if-nez v16, :cond_86

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 947
    :cond_86
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 4

    .line 868
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 868
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 870
    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .registers 5

    .line 393
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 393
    const/4 v2, 0x0

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method private shouldApplyAutomaticChangesImmediately()Z
    .registers 2

    .line 767
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_d

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

.method private unregisterScreenOffEvent()V
    .registers 3

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 433
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_d

    .line 436
    goto :goto_e

    .line 434
    :catch_d
    move-exception v0

    .line 437
    :goto_e
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 5

    .line 874
    nop

    .line 875
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 878
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz p1, :cond_2a

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_2a

    .line 880
    const-string p1, "android.intent.category.CAR_DOCK"

    goto :goto_2b

    .line 882
    :cond_14
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 886
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_2a

    .line 888
    const-string p1, "android.intent.category.DESK_DOCK"

    goto :goto_2b

    .line 892
    :cond_23
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_2a

    .line 893
    const-string p1, "android.intent.category.HOME"

    goto :goto_2b

    .line 904
    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method private updateComputedNightModeLocked(Z)V
    .registers 5

    .line 1001
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1002
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-nez p1, :cond_f

    .line 1003
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1004
    return-void

    .line 1006
    :cond_f
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    if-ne p1, v0, :cond_1b

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz p1, :cond_1b

    .line 1007
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1008
    return-void

    .line 1011
    :cond_1b
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    .line 1012
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    const-string/jumbo v2, "ui_night_mode_override"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1015
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 5

    .line 688
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 689
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    goto :goto_29

    .line 691
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_e

    .line 692
    const/4 v0, 0x4

    goto :goto_29

    .line 693
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_14

    .line 694
    const/4 v0, 0x6

    goto :goto_29

    .line 695
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1a

    .line 696
    const/4 v0, 0x3

    goto :goto_29

    .line 697
    :cond_1a
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 698
    move v0, v2

    goto :goto_29

    .line 699
    :cond_24
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_29

    .line 700
    const/4 v0, 0x7

    .line 703
    :cond_29
    :goto_29
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_30

    if-ne v1, v3, :cond_38

    .line 704
    :cond_30
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-ne v1, v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 707
    :cond_38
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_5c

    .line 708
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 709
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v2, :cond_58

    .line 710
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v1, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 711
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    .line 712
    if-nez v1, :cond_54

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_58

    :cond_54
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    .line 715
    :cond_58
    :goto_58
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 716
    goto :goto_65

    .line 717
    :cond_5c
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_65

    .line 718
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v2}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 723
    :cond_65
    :goto_65
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_72

    .line 724
    and-int/lit8 v0, v0, -0x11

    .line 725
    or-int/lit8 v0, v0, 0x20

    goto :goto_76

    .line 727
    :cond_72
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    .line 738
    :goto_76
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 739
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_88

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    if-eqz v1, :cond_84

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_88

    .line 740
    :cond_84
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 742
    :cond_88
    return-void
.end method

.method private updateDockState(I)V
    .registers 6

    .line 658
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1d

    .line 660
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 661
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_12

    move p1, v2

    goto :goto_13

    :cond_12
    move p1, v3

    :goto_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 662
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_1d

    .line 663
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 666
    :cond_1d
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .registers 7

    .line 406
    const v0, 0x10e0038

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 408
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 409
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-eqz v1, :cond_28

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v1, v2, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "ui_night_mode_override"

    invoke-static {p1, v1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    goto :goto_2c

    .line 415
    :cond_28
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 416
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightModeOverride:I

    .line 419
    :goto_2c
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v0, p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method

.method private updateSystemProperties()V
    .registers 5

    .line 277
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 279
    if-nez v0, :cond_15

    .line 280
    const/4 v0, 0x2

    .line 282
    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.theme"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private verifySetupWizardCompleted()V
    .registers 6

    .line 380
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 382
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_22

    .line 383
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 385
    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 384
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_25

    .line 388
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 390
    :goto_25
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 607
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 608
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->access$2400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 611
    const-string v1, " mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 612
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 613
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 614
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 615
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 617
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 619
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 621
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_b7

    .line 623
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 626
    :cond_b7
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_b9
    move-exception p1

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    throw p1
.end method

.method protected getConfiguration()Landroid/content/res/Configuration;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getService()Landroid/app/IUiModeManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method public synthetic lambda$onStart$0$UiModeManagerService(Landroid/os/PowerSaveState;)V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_b

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_b
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 320
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_17

    .line 321
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 323
    :cond_17
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public synthetic lambda$onStart$1$UiModeManagerService()V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 353
    monitor-exit v0

    .line 355
    return-void

    .line 353
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$onStart$2$UiModeManagerService()V
    .registers 1

    .line 365
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 631
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_29

    .line 632
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 633
    :try_start_7
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 635
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v3

    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 636
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 637
    invoke-virtual {p0, v3, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 638
    monitor-exit p1

    goto :goto_29

    :catchall_26
    move-exception v0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0

    .line 640
    :cond_29
    :goto_29
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 294
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    nop

    .line 297
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 298
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 303
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 305
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 311
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 312
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 313
    new-instance v3, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 326
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 329
    const v2, 0x10e0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 331
    const v2, 0x10e0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7a

    move v2, v4

    goto :goto_7b

    :cond_7a
    move v2, v3

    :goto_7b
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 333
    const v2, 0x10e0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_88

    move v2, v4

    goto :goto_89

    :cond_88
    move v2, v3

    :goto_89
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 335
    const v2, 0x111006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 337
    const v2, 0x111009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 338
    const v2, 0x1110099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 341
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 342
    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    goto :goto_bd

    :cond_bb
    move v4, v3

    goto :goto_be

    :cond_bd
    :goto_bd
    nop

    :goto_be
    iput-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 343
    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 344
    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 346
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 349
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;-><init>(Lcom/android/server/UiModeManagerService;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".onStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 356
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v2, "uimode"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    const-class v1, Lcom/android/server/UiModeManagerInternal;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    new-instance v2, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$UiModeManagerService$wttJpnJnECgc-2ud4hu2A5dSOPg;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$wttJpnJnECgc-2ud4hu2A5dSOPg;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 287
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 290
    return-void
.end method

.method setCarModeLocked(ZI)V
    .registers 5

    .line 643
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_1a

    .line 644
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 647
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez p1, :cond_1a

    .line 648
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 649
    nop

    .line 650
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 651
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 649
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 654
    :cond_1a
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 655
    return-void
.end method

.method updateLocked(II)V
    .registers 20

    .line 771
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 772
    nop

    .line 773
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_13

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 775
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_1d

    .line 776
    :cond_13
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 777
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_1d

    .line 776
    :cond_1c
    move-object v3, v4

    .line 780
    :goto_1d
    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_33

    .line 781
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v6, v5, :cond_4f

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 783
    if-eqz v3, :cond_2e

    .line 784
    invoke-direct {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 786
    :cond_2e
    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 787
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_54

    .line 789
    :cond_33
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 790
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 791
    if-eqz v3, :cond_48

    .line 792
    invoke-direct {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 794
    :cond_48
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 795
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_54

    .line 802
    :cond_4f
    move-object v3, v4

    goto :goto_54

    .line 798
    :cond_51
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 799
    nop

    .line 802
    :goto_54
    const/4 v6, 0x1

    if-eqz v3, :cond_82

    .line 815
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    const-string v3, "enableFlags"

    invoke-virtual {v9, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v1, "disableFlags"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 825
    iput-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 827
    goto :goto_a8

    .line 828
    :cond_82
    nop

    .line 829
    iget-boolean v3, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_91

    .line 830
    iget-boolean v2, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v2, :cond_a5

    and-int/2addr v1, v6

    if-eqz v1, :cond_a5

    .line 832
    const-string v4, "android.intent.category.CAR_DOCK"

    goto :goto_a5

    .line 834
    :cond_91
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 835
    and-int/2addr v1, v6

    if-eqz v1, :cond_a5

    .line 837
    const-string v4, "android.intent.category.DESK_DOCK"

    goto :goto_a5

    .line 840
    :cond_9f
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_a5

    .line 841
    const-string v4, "android.intent.category.HOME"

    .line 850
    :cond_a5
    :goto_a5
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 854
    :goto_a8
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_c2

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b9

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_b9

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_c1

    :cond_b9
    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v1, v5, :cond_c2

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_c2

    :cond_c1
    goto :goto_c3

    :cond_c2
    move v6, v7

    .line 858
    :goto_c3
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v6, v1, :cond_d8

    .line 859
    if-eqz v6, :cond_d3

    .line 860
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d8

    .line 862
    :cond_d3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 865
    :cond_d8
    :goto_d8
    return-void
.end method
