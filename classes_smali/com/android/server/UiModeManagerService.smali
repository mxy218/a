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

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

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

.field private mNotificationManager:Landroid/app/NotificationManager;

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

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 81
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 84
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 104
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 105
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 106
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 137
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 193
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 205
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 339
    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # I

    .line 70
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;

    .line 70
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Landroid/content/res/Resources;
    .param p3, "x3"  # I

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 11

    .line 789
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 790
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_14

    .line 791
    nop

    .line 792
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 800
    :cond_14
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_23

    .line 801
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1f

    .line 802
    const/high16 v1, 0x80000

    goto :goto_20

    .line 803
    :cond_1f
    const/4 v1, 0x0

    .line 801
    :goto_20
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 806
    :cond_23
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_33

    .line 807
    nop

    .line 808
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 811
    :cond_33
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_a3

    .line 812
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_9e

    .line 813
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10807e4

    .line 817
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 818
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 819
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 820
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    .line 821
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x104011c

    .line 824
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x104011b

    .line 826
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 828
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 827
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 830
    .local v0, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 831
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 830
    invoke-virtual {v1, v8, v7, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 832
    .end local v0  # "n":Landroid/app/Notification$Builder;
    .end local v2  # "carModeOffIntent":Landroid/content/Intent;
    goto :goto_a3

    .line 833
    :cond_9e
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 837
    :cond_a3
    :goto_a3
    return-void
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "category"  # Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .registers 3
    .param p0, "state"  # I

    .line 537
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    .line 543
    const/4 v0, 0x0

    return v0

    .line 541
    :cond_b
    return v0
.end method

.method private registerVrStateListener()V
    .registers 6

    .line 849
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 852
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_2b

    .line 853
    :try_start_d
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_2b

    .line 855
    :catch_13
    move-exception v1

    .line 856
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 857
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    nop

    .line 858
    :goto_2c
    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 18
    .param p1, "category"  # Ljava/lang/String;

    .line 748
    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 752
    const/4 v3, 0x0

    .line 753
    .local v3, "dockAppStarted":Z
    if-eqz p1, :cond_75

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 762
    .local v15, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 764
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
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_5d

    const/4 v14, 0x0

    const/4 v0, -0x2

    move-object v7, v15

    move-object v1, v15

    .end local v15  # "homeIntent":Landroid/content/Intent;
    .local v1, "homeIntent":Landroid/content/Intent;
    move v15, v0

    :try_start_2d
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 767
    .local v0, "result":I
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 768
    const/4 v2, 0x1

    move v3, v2

    .end local v3  # "dockAppStarted":Z
    .local v2, "dockAppStarted":Z
    goto :goto_5a

    .line 769
    .end local v2  # "dockAppStarted":Z
    .restart local v3  # "dockAppStarted":Z
    :cond_3a
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_5a

    .line 770
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startActivityWithConfig result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_5a} :catch_5b

    .line 775
    .end local v0  # "result":I
    :cond_5a
    :goto_5a
    goto :goto_75

    .line 773
    :catch_5b
    move-exception v0

    goto :goto_5f

    .end local v1  # "homeIntent":Landroid/content/Intent;
    .restart local v15  # "homeIntent":Landroid/content/Intent;
    :catch_5d
    move-exception v0

    move-object v1, v15

    .line 774
    .end local v15  # "homeIntent":Landroid/content/Intent;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v1  # "homeIntent":Landroid/content/Intent;
    :goto_5f
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 762
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v1  # "homeIntent":Landroid/content/Intent;
    .restart local v15  # "homeIntent":Landroid/content/Intent;
    :cond_74
    move-object v1, v15

    .line 780
    .end local v15  # "homeIntent":Landroid/content/Intent;
    :cond_75
    :goto_75
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 783
    if-eqz p1, :cond_83

    if-nez v3, :cond_83

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 786
    :cond_83
    return-void
.end method

.method private sendConfigurationLocked()V
    .registers 4

    .line 598
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_20

    .line 599
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 602
    :try_start_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 605
    goto :goto_20

    .line 603
    :catch_18
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 5
    .param p1, "action"  # Ljava/lang/String;

    .line 707
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 707
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 709
    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .registers 5

    .line 313
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 313
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

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "enableFlags"  # I
    .param p3, "disableFlags"  # I

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 717
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_29

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_29

    .line 719
    const-string v0, "android.intent.category.CAR_DOCK"

    goto :goto_29

    .line 721
    :cond_14
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 725
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_29

    .line 727
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_29

    .line 731
    :cond_23
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_29

    .line 732
    const-string v0, "android.intent.category.HOME"

    .line 743
    :cond_29
    :goto_29
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method private updateComputedNightModeLocked()V
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_10

    .line 841
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 842
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_10

    .line 843
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 846
    .end local v0  # "state":Lcom/android/server/twilight/TwilightState;
    :cond_10
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 6

    .line 548
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 549
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_7

    goto :goto_28

    .line 551
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_d

    .line 552
    const/4 v0, 0x4

    goto :goto_28

    .line 553
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_13

    .line 554
    const/4 v0, 0x6

    goto :goto_28

    .line 555
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_19

    .line 556
    const/4 v0, 0x3

    goto :goto_28

    .line 557
    :cond_19
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 558
    const/4 v0, 0x2

    goto :goto_28

    .line 559
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_28

    .line 560
    const/4 v0, 0x7

    .line 563
    :cond_28
    :goto_28
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/16 v2, 0x20

    if-nez v1, :cond_46

    .line 564
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_39

    .line 565
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 567
    :cond_39
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 568
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_42

    move v1, v2

    goto :goto_44

    .line 569
    :cond_42
    const/16 v1, 0x10

    :goto_44
    or-int/2addr v0, v1

    goto :goto_54

    .line 571
    :cond_46
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_4f

    .line 572
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v3}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 574
    :cond_4f
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 578
    :goto_54
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_5f

    .line 579
    and-int/lit8 v0, v0, -0x11

    .line 580
    or-int/2addr v0, v2

    .line 591
    :cond_5f
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 592
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_69

    .line 593
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 595
    :cond_69
    return-void
.end method

.method private updateDockState(I)V
    .registers 7
    .param p1, "newState"  # I

    .line 525
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1d

    .line 527
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 528
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v4

    :goto_13
    invoke-virtual {p0, v1, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 529
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1d

    .line 530
    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 533
    :cond_1d
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "res"  # Landroid/content/res/Resources;
    .param p3, "userId"  # I

    .line 326
    const v0, 0x10e0038

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 328
    .local v0, "defaultNightMode":I
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 329
    .local v1, "oldNightMode":I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-eqz v2, :cond_1b

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ui_night_mode"

    invoke-static {v2, v3, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    goto :goto_1d

    .line 333
    :cond_1b
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 336
    :goto_1d
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v1, v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    return v2
.end method

.method private verifySetupWizardCompleted()V
    .registers 7

    .line 300
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 302
    .local v1, "userId":I
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_22

    .line 303
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 305
    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 304
    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_25

    .line 308
    :cond_22
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 310
    :goto_25
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 471
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 474
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 475
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->access$1600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 478
    const-string v1, " mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 479
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 480
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 481
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 482
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 484
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 486
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 487
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_b7

    .line 489
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 492
    :cond_b7
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_b9
    move-exception v1

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    throw v1
.end method

.method public synthetic lambda$onStart$0$UiModeManagerService(Landroid/os/PowerSaveState;)V
    .registers 5
    .param p1, "state"  # Landroid/os/PowerSaveState;

    .line 250
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_b

    .line 252
    monitor-exit v0

    return-void

    .line 254
    :cond_b
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 255
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_17

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 258
    :cond_17
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public synthetic lambda$onStart$1$UiModeManagerService()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 287
    monitor-exit v0

    .line 289
    return-void

    .line 287
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"  # I

    .line 497
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2c

    .line 498
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_7
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 501
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v4

    :goto_1c
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 502
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 503
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 504
    invoke-virtual {p0, v4, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 505
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    .line 507
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStart()V
    .registers 11

    .line 230
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    .local v0, "context":Landroid/content/Context;
    nop

    .line 233
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 234
    .local v1, "powerManager":Landroid/os/PowerManager;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 238
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 240
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    const-class v3, Landroid/os/PowerManagerInternal;

    .line 246
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 247
    .local v3, "localPowerManager":Landroid/os/PowerManagerInternal;
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    iget-boolean v5, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 248
    new-instance v5, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;

    invoke-direct {v5, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 261
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 264
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 266
    const v5, 0x10e0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6c

    move v5, v7

    goto :goto_6d

    :cond_6c
    move v5, v6

    :goto_6d
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 268
    const v5, 0x10e0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v7, :cond_7a

    move v5, v7

    goto :goto_7b

    :cond_7a
    move v5, v6

    :goto_7b
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 270
    const v5, 0x111006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 272
    const v5, 0x1110094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 273
    const v5, 0x1110093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 276
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "android.hardware.type.television"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ac

    .line 277
    const-string v8, "android.software.leanback"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ad

    :cond_ac
    move v6, v7

    :cond_ad
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 278
    const-string v6, "android.hardware.type.watch"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 280
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 283
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;-><init>(Lcom/android/server/UiModeManagerService;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".onStart"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 290
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v7, "uimode"

    invoke-virtual {p0, v7, v6}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    const-class v6, Lcom/android/server/UiModeManagerInternal;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 293
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    new-instance v7, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 223
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 226
    return-void
.end method

.method setCarModeLocked(ZI)V
    .registers 6
    .param p1, "enabled"  # Z
    .param p2, "flags"  # I

    .line 510
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_1a

    .line 511
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 514
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_1a

    .line 515
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 516
    .local v0, "context":Landroid/content/Context;
    nop

    .line 517
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 516
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 521
    .end local v0  # "context":Landroid/content/Context;
    :cond_1a
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 522
    return-void
.end method

.method updateLocked(II)V
    .registers 21
    .param p1, "enableFlags"  # I
    .param p2, "disableFlags"  # I

    .line 610
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 611
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 612
    .local v4, "oldAction":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 614
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_1b

    .line 615
    :cond_13
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 616
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 619
    :cond_1b
    :goto_1b
    iget-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_31

    .line 620
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v5, v6, :cond_50

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 622
    if-eqz v4, :cond_2c

    .line 623
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 625
    :cond_2c
    iput v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 626
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_50

    .line 628
    :cond_31
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 629
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-nez v5, :cond_50

    .line 630
    if-eqz v4, :cond_46

    .line 631
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 633
    :cond_46
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 634
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_50

    .line 637
    :cond_4d
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 638
    move-object v3, v4

    .line 641
    :cond_50
    :goto_50
    const/4 v5, 0x1

    if-eqz v3, :cond_80

    .line 654
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "enableFlags"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v9, "disableFlags"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 664
    iput-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 666
    .end local v8  # "intent":Landroid/content/Intent;
    goto :goto_a8

    .line 667
    :cond_80
    const/4 v8, 0x0

    .line 668
    .local v8, "category":Ljava/lang/String;
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v9, :cond_90

    .line 669
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v9, :cond_a5

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a5

    .line 671
    const-string v8, "android.intent.category.CAR_DOCK"

    goto :goto_a5

    .line 673
    :cond_90
    iget v9, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 674
    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a5

    .line 676
    const-string v8, "android.intent.category.DESK_DOCK"

    goto :goto_a5

    .line 679
    :cond_9f
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_a5

    .line 680
    const-string v8, "android.intent.category.HOME"

    .line 689
    :cond_a5
    :goto_a5
    invoke-direct {v0, v8}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 693
    .end local v8  # "category":Ljava/lang/String;
    :goto_a8
    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v8, :cond_c2

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v8, :cond_b9

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v8, :cond_b9

    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c1

    :cond_b9
    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v8, v6, :cond_c2

    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v6, :cond_c2

    :cond_c1
    goto :goto_c3

    :cond_c2
    move v5, v7

    .line 697
    .local v5, "keepScreenOn":Z
    :goto_c3
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eq v5, v6, :cond_d8

    .line 698
    if-eqz v5, :cond_d3

    .line 699
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d8

    .line 701
    :cond_d3
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 704
    :cond_d8
    :goto_d8
    return-void
.end method
