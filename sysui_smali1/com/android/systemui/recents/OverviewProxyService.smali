.class public Lcom/android/systemui/recents/OverviewProxyService;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;,
        Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mActiveNavBarRegion:Landroid/graphics/Region;

.field private mBound:Z

.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBoundedUserId:I

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNavBarButtonAlpha:F

.field private final mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNavBarMode:I

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

.field private final mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field private mSupportsRoundedCornersOnWindows:Z

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mSysUiStateFlags:I

.field private mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

.field private mWindowCornerRadius:F

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .registers 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 131
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 365
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 371
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    .line 439
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 455
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 458
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 465
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 466
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 467
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 468
    iput-object p5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 469
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 470
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    const p2, 0x1040199

    .line 471
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 473
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 474
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 475
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 476
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    const/high16 p1, 0x3f800000  # 1.0f

    .line 480
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    .line 483
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    .line 487
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 490
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 491
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 492
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 494
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->registerSystemGestureListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recents/OverviewProxyService;)F
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recents/OverviewProxyService;)Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/recents/OverviewProxyService;F)F
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateSystemUiStateFlags()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/OverviewProxyService;)I
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyStartAssistant(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantGestureCompletion(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantProgress(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/OverviewProxyService;FZ)V
    .registers 3

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/view/MotionEvent;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method private disconnectFromLauncherService()V
    .registers 4

    .line 698
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 701
    iput-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 704
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_26

    .line 705
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 707
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 708
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    :cond_26
    return-void
.end method

.method private dispatchNavButtonBounds()V
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_14

    .line 589
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    .line 591
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method private internalConnectToCurrentUser()V
    .registers 7

    .line 624
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalConnectToCurrentUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 627
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is enabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverviewProxyService"

    .line 626
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_85

    .line 640
    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 642
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 644
    :try_start_55
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x2000001

    iget-object v5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 647
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 644
    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z
    :try_end_6c
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_6c} :catch_6d

    goto :goto_73

    :catch_6d
    move-exception v0

    const-string v1, "Unable to bind because of security error"

    .line 649
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :goto_73
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    if-eqz v0, :cond_81

    .line 653
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_84

    .line 656
    :cond_81
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    :goto_84
    return-void

    .line 635
    :cond_85
    :goto_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot attempt connection, is setup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 636
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$2FrwSEVJnaHX9GGsAnD2I96htxU(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic lambda$b7uhSpdl46tRQQQT8ZW7Bieyg6A(Lcom/android/systemui/recents/OverviewProxyService;ZZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService;->onStatusBarStateChanged(ZZZ)V

    return-void
.end method

.method private notifyAssistantGestureCompletion(F)V
    .registers 4

    .line 743
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 744
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantGestureCompletion(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyAssistantProgress(F)V
    .registers 4

    .line 737
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 738
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyConnectionChanged()V
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1f

    .line 720
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-interface {v2, v3}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method private notifyNavBarButtonAlphaChanged(FZ)V
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 714
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyStartAssistant(Landroid/os/Bundle;)V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 756
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->startAssistant(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifySystemUiStateChanged(I)V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 750
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onSystemUiStateChanged(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifySystemUiStateFlags(I)V
    .registers 3

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_12

    .line 561
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string v0, "Failed to notify sysui state change"

    .line 564
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private onStatusBarStateChanged(ZZZ)V
    .registers 9

    .line 570
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    if-nez p2, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    const/16 v4, 0x40

    .line 571
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    const/16 v3, 0x200

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 573
    :goto_1c
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    const/16 p1, 0x8

    .line 575
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    return-void
.end method

.method private registerSystemGestureListener()V
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_a

    .line 833
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowManager:Landroid/view/IWindowManager;

    .line 836
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    if-nez v0, :cond_19

    .line 837
    new-instance v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-direct {v0, v1, p0, v2}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    .line 841
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    const-string v0, "OverviewProxyService"

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    .line 845
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_44
    return-void
.end method

.method private retryConnectionWithBackoff()V
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/high16 v0, 0x447a0000  # 1000.0f

    .line 664
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 665
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00  # 600000.0f

    .line 664
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 666
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect on attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateEnabledState()V
    .registers 5

    .line 771
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 773
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x100000

    .line 771
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return-void
.end method

.method private updateSystemUiStateFlags()V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 540
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 542
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    const/4 v2, 0x0

    .line 544
    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eqz v0, :cond_1b

    const/4 v2, -0x1

    .line 546
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    :cond_1b
    if-eqz v1, :cond_23

    .line 549
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    .line 550
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    .line 552
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_2a

    .line 553
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->notifyStateChangedCallbacks()V

    .line 555
    :cond_2a
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .registers 4

    .line 674
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    invoke-interface {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 676
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    .line 677
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-interface {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onSystemUiStateChanged(I)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 94
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public cleanupAfterDeath()V
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 602
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$eCc1ukzT5yAkIaX2QrSVYaZKqYk;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$eCc1ukzT5yAkIaX2QrSVYaZKqYk;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "OverviewProxyService state:"

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  recentsComponentName="

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  isConnected="

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  isCurrentUserSetup="

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 792
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  connectionBackoffAttempts="

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  quickStepIntent="

    .line 795
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  quickStepIntentResolved="

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mSysUiStateFlags="

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p3}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    backGestureDisabled="

    .line 799
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "    assistantGestureDisabled="

    .line 801
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method public getSystemUiStateFlags()I
    .registers 1

    .line 535
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 690
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return p0
.end method

.method public synthetic lambda$cleanupAfterDeath$1$OverviewProxyService()V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1a

    .line 605
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 608
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    :cond_1a
    return-void
.end method

.method public synthetic lambda$new$0$OverviewProxyService()V
    .registers 3

    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method public notifyBackAction(ZIIZZ)V
    .registers 13

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_17

    .line 508
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "Failed to notify back action"

    .line 511
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 778
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 780
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSystemGestureListener:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    if-eqz p0, :cond_9

    .line 781
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->onNavigationModeChanged(I)V

    :cond_9
    return-void
.end method

.method public registerGestureReceiver(Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;)V
    .registers 2

    .line 882
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .registers 2

    .line 682
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 94
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public setSystemUiStateFlag(IZI)V
    .registers 4

    if-eqz p3, :cond_3

    return-void

    .line 521
    :cond_3
    iget p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eqz p2, :cond_9

    or-int/2addr p1, p3

    goto :goto_b

    :cond_9
    not-int p1, p1

    and-int/2addr p1, p3

    .line 527
    :goto_b
    iget p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eq p2, p1, :cond_1b

    .line 528
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    .line 529
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateChanged(I)V

    .line 530
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    :cond_1b
    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .registers 2

    .line 686
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public startConnectionToCurrentUser()V
    .registers 3

    .line 616
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 617
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 619
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    :goto_17
    return-void
.end method

.method public updateFullScreenGesture(Landroid/view/MotionEvent;IZ)V
    .registers 7

    const-string v0, "OverviewProxyService"

    .line 864
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_c

    .line 865
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/shared/recents/IOverviewProxy;->updateGesture(Landroid/view/MotionEvent;IZ)V

    goto :goto_1b

    :cond_c
    const-string v1, "mOverviewProxy is null, try again"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v1

    const-string v2, "Failed to call IOverviewProxy updateGesture()"

    .line 871
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    :goto_1b
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

    if-eqz p0, :cond_23

    .line 875
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;->updateGestureEvent(Landroid/view/MotionEvent;IZ)V

    goto :goto_28

    :cond_23
    const-string p0, "mGestureReceiver is null !!!"

    .line 877
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method
