.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;
    }
.end annotation


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private mDeviceInteractive:Z

.field private mDeviceWillWakeUp:Z

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field protected mFirstUpdate:Z

.field private mGesturalNav:Z

.field private mGoingToSleepVisibleNotOccluded:Z

.field private mIsDocked:Z

.field private mKeyguardGoneCancelAction:Ljava/lang/Runnable;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mLastBiometricMode:I

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastDozing:Z

.field private mLastGesturalNav:Z

.field private mLastIsDocked:Z

.field private mLastLockVisible:Z

.field protected mLastOccluded:Z

.field private mLastPulsing:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field private mLockIconContainer:Landroid/view/ViewGroup;

.field private mLockOut:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mNotificationContainer:Landroid/view/View;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mOccluded:Z

.field private mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

.field private mPulsing:Z

.field private mReceiveVoiceAction:Z

.field protected mRemoteInputActive:Z

.field protected mShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 5

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 175
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 176
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 177
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 178
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 179
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 180
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 832
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1140
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    .line 1141
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockOut:Z

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 201
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 202
    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 203
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 205
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 206
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 207
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 206
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 208
    const-class p1, Lcom/android/systemui/dock/DockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dock/DockManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_a2

    .line 210
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    :cond_a2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockOut:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .registers 3

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 751
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    .line 752
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 754
    :cond_a
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 755
    :goto_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 756
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 758
    :cond_23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getNavBarShowDelay()J
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 823
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    .line 824
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-wide/16 v0, 0x140

    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isWakeAndUnlocking()Z
    .registers 3

    .line 442
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method private needsBypassFading()Z
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 700
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 701
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_24

    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method private setDozing(Z)V
    .registers 3

    .line 506
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eq v0, p1, :cond_1f

    .line 507
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_14

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_17

    .line 509
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 511
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    if-nez p1, :cond_1f

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    :cond_1f
    return-void
.end method

.method private updateLockIcon()V
    .registers 1

    return-void
.end method

.method private wakeAndUnlockDejank()V
    .registers 3

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 742
    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 743
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$WtAkg4w14mbTRLi3kx_TWboxp-s;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$WtAkg4w14mbTRLi3kx_TWboxp-s;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCollapsePanels(F)V
    .registers 4

    .line 981
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public bouncerIsOrWillBeShowing()Z
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inTransit()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public bouncerNeedsScrimming()Z
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->willDismissWithAction()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1032
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFullScreenUserSwitcherState()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 1033
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 1034
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    :goto_30
    return p0
.end method

.method public cancelPendingWakeupAction()V
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 1024
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_e

    .line 1025
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    .line 1026
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockOut:Z

    if-eqz v0, :cond_12

    :cond_c
    const/4 v0, 0x0

    .line 1112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockOut:Z

    .line 1113
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_12
    return-void
.end method

.method public dismissAndCollapse()V
    .registers 7

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .registers 6

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_2b

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_19

    .line 425
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    return-void

    :cond_19
    if-nez p3, :cond_21

    .line 431
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 433
    :cond_21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 434
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 435
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 438
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "StatusBarKeyguardViewManager:"

    .line 1038
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRemoteInputActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGoingToSleepVisibleNotOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneRunnables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingWakeupAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz p0, :cond_bc

    .line 1049
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dump(Ljava/io/PrintWriter;)V

    :cond_bc
    return-void
.end method

.method public fpFreezePressShowBouncer()V
    .registers 2

    const/4 v0, 0x0

    .line 1122
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    return-void
.end method

.method protected getLastNavBarVisible()Z
    .registers 6

    .line 935
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 936
    :goto_d
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v3, :cond_18

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    if-eqz v0, :cond_1f

    .line 937
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v4, :cond_27

    :cond_1f
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    if-eqz v4, :cond_2d

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    if-nez v4, :cond_2d

    :cond_27
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    if-eqz v4, :cond_2d

    move v4, v1

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    if-nez v0, :cond_36

    if-nez v3, :cond_36

    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-eqz v0, :cond_3e

    :cond_36
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-nez p0, :cond_3e

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :cond_3e
    :goto_3e
    return v1
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 1

    .line 1006
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public hide(JJ)V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 606
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 607
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 608
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v5

    .line 607
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    .line 611
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v2

    if-eqz v2, :cond_28

    const-wide/16 v2, 0x7d0

    goto :goto_2a

    :cond_28
    move-wide/from16 v2, p3

    .line 614
    :goto_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x30

    add-long v6, p1, v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    .line 615
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 617
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_54

    .line 618
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move v4, v15

    goto/16 :goto_eb

    .line 636
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 637
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 638
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_63

    move/from16 v16, v15

    goto :goto_65

    :cond_63
    move/from16 v16, v1

    .line 639
    :goto_65
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result v17

    if-eqz v17, :cond_6f

    const-wide/16 v2, 0x43

    :goto_6d
    move-wide v11, v4

    goto :goto_75

    :cond_6f
    if-eqz v16, :cond_74

    const-wide/16 v2, 0xf0

    goto :goto_6d

    :cond_74
    move-wide v11, v6

    .line 647
    :goto_75
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v9, p1

    move-wide v13, v2

    move v4, v15

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJZ)V

    .line 648
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startKeyguardFadingAway()V

    .line 649
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    if-eqz v16, :cond_a2

    if-eqz v17, :cond_99

    .line 652
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$aIusP5sgaSr59XXK3nFh48FBNI4;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$aIusP5sgaSr59XXK3nFh48FBNI4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_9e

    .line 660
    :cond_99
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardWhilePulsing()V

    .line 662
    :goto_9e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_db

    .line 664
    :cond_a2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v5

    if-nez v5, :cond_cc

    .line 666
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardFadingAway(Z)V

    if-eqz v17, :cond_be

    .line 668
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$EJI38cHcIk60L5eHmdpMvFRistw;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$EJI38cHcIk60L5eHmdpMvFRistw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_c3

    .line 675
    :cond_be
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 681
    :goto_c3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_db

    .line 684
    :cond_cc
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 685
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    .line 686
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    .line 689
    :goto_db
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 691
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardShowing(Z)V

    .line 692
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    :goto_eb
    const/16 v0, 0x3e

    .line 694
    invoke-static {v0, v4}, Landroid/util/StatsLog;->write(II)I

    return-void
.end method

.method hideBouncer(Z)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-nez v0, :cond_5

    return-void

    .line 393
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    .line 398
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 399
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 402
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 948
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isBouncerShowing()Z
    .registers 1

    .line 806
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isGoingToNotificationShade()Z
    .registers 1

    .line 968
    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 969
    invoke-interface {p0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p0

    return p0
.end method

.method public isGoingToSleepVisibleNotOccluded()Z
    .registers 1

    .line 472
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    return p0
.end method

.method protected isNavBarVisible()Z
    .registers 6

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    .line 923
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    .line 924
    :goto_13
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v3

    :goto_1d
    if-eqz v1, :cond_23

    .line 925
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_2b

    :cond_23
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz v4, :cond_31

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    if-nez v4, :cond_31

    :cond_2b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eqz v4, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    if-nez v1, :cond_3e

    if-nez v0, :cond_3e

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_3e
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez p0, :cond_46

    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :cond_46
    :goto_46
    return v2
.end method

.method public isOccluded()Z
    .registers 1

    .line 581
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return p0
.end method

.method public isSecure()Z
    .registers 1

    .line 772
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 779
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return p0
.end method

.method public isUnlockWithWallpaper()Z
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isShowingWallpaper()Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway()V
    .registers 1

    .line 977
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->keyguardGoingAway()V

    return-void
.end method

.method public synthetic lambda$hide$0$StatusBarKeyguardViewManager()V
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method public synthetic lambda$hide$1$StatusBarKeyguardViewManager()V
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method

.method public synthetic lambda$onKeyguardFadedAway$2$StatusBarKeyguardViewManager()V
    .registers 2

    .line 730
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method public synthetic lambda$wakeAndUnlockDejank$3$StatusBarKeyguardViewManager()V
    .registers 2

    .line 744
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public launchPendingWakeupAction()V
    .registers 5

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 1011
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_1e

    .line 1013
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_17

    .line 1014
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_1e

    .line 1016
    :cond_17
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz p0, :cond_1e

    .line 1017
    invoke-interface {p0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public notifyDeviceWakeUpRequested()V
    .registers 2

    .line 1103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .registers 2

    .line 998
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    return-void
.end method

.method public notifyKeyguardAuthenticatedForFaceRecognition(Z)V
    .registers 2

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticatedForFaceRecognition(Z)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->endAffordanceLaunch()V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_25

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_28

    .line 798
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :goto_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    return v1
.end method

.method public onCancelClicked()V
    .registers 1

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDozing(Z)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .registers 2

    const/4 v0, 0x0

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    .line 484
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    return-void
.end method

.method public onKeyguardDoneCancel()V
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->reset()V

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onKeyguardDoneCancel()V

    return-void
.end method

.method public onKeyguardFadedAway()V
    .registers 5

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$nb9yQRGKq0kAyQz17NqvixIA7LU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$nb9yQRGKq0kAyQz17NqvixIA7LU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    .line 734
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    .line 735
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 3

    .line 712
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 713
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eq p1, v0, :cond_d

    .line 714
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_d
    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .registers 5

    .line 267
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isUnlockHintRunning()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_37

    .line 269
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_37

    .line 271
    :cond_1d
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz p2, :cond_22

    goto :goto_37

    .line 283
    :cond_22
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz p2, :cond_37

    cmpl-float p1, p1, v0

    if-nez p1, :cond_37

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const-string p2, "BOUNCER_VISIBLE"

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onQsExpansionChanged(F)V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_3c

    .line 296
    const-class p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 297
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 298
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->capturePicture()V

    .line 300
    :cond_19
    const-class p0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/NightModeController;

    .line 301
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isSwitching()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 302
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->notifyPanelCollapse()V

    .line 304
    :cond_2a
    const-class p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 305
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p1, 0x1

    .line 306
    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->running(Z)V

    :cond_3c
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .registers 2

    .line 501
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1

    return-void
.end method

.method public onScreenTurningOn()V
    .registers 1

    return-void
.end method

.method public onStartedGoingToSleep()V
    .registers 2

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGoingToSleepVisibleNotOccluded:Z

    .line 477
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_18

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedGoingToSleep()V

    :cond_18
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onThemeChanged()V
    .registers 2

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 724
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    :cond_b
    return-void
.end method

.method public readyForKeyguardDone()V
    .registers 1

    .line 952
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 21

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    .line 222
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v6, p2

    .line 223
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v2, p6

    .line 224
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    .line 225
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockIconContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    .line 226
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastLockVisible:Z

    :cond_1b
    move-object v2, p4

    .line 228
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 229
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    move-object v6, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p9

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/SystemUIFactory;->createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 232
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 233
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    move-object/from16 v1, p8

    .line 234
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p7

    .line 235
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    .line 237
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setOnNotMatchRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset(Z)V
    .registers 3

    .line 457
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_2f

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_20

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    if-nez p1, :cond_1b

    .line 460
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_23

    :cond_1b
    const/4 p1, 0x0

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_23

    .line 464
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    .line 466
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_2f
    return-void
.end method

.method public setFaceRecognitionBrightness(I)V
    .registers 2

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setFaceRecognitionBrightness(I)V

    return-void
.end method

.method public setLockOut(Z)V
    .registers 2

    .line 1107
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockOut:Z

    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 2

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardNeedsInput(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .registers 7

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setOccluded(Z)V

    const/16 v0, 0x3e

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    .line 539
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x3

    .line 540
    invoke-static {v0, v2}, Landroid/util/StatsLog;->write(II)I

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 543
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 544
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_2c
    if-nez p1, :cond_3a

    .line 554
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v2, :cond_3a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_3a

    const/4 v2, 0x2

    .line 555
    invoke-static {v0, v2}, Landroid/util/StatsLog;->write(II)I

    .line 558
    :cond_3a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_43

    if-eqz p1, :cond_43

    move v0, v1

    goto :goto_44

    :cond_43
    move v0, v2

    .line 559
    :goto_44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 560
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v3, :cond_55

    .line 561
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p2, :cond_51

    if-nez p1, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 563
    :cond_55
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardOccluded(Z)V

    .line 566
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v1, :cond_61

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_61
    if-eqz p2, :cond_76

    if-nez p1, :cond_76

    .line 571
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz p2, :cond_76

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p2

    if-nez p2, :cond_76

    .line 572
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateKeyguardUnoccluding()V

    .line 576
    :cond_76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->onKeyguardOccludedChange(Z)V

    return-void
.end method

.method public setPulsing(Z)V
    .registers 3

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eq v0, p1, :cond_9

    .line 524
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_9
    return-void
.end method

.method public setReceiveVoiceAction(Z)V
    .registers 2

    .line 1126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mReceiveVoiceAction:Z

    return-void
.end method

.method protected shouldDestroyViewOnReset()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .registers 1

    .line 956
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p0

    return p0
.end method

.method public shouldDismissOnMenuPressed()Z
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result p0

    return p0
.end method

.method public shouldSubtleWindowAnimationsForUnlock()Z
    .registers 1

    .line 964
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result p0

    return p0
.end method

.method public show(Landroid/os/Bundle;)V
    .registers 6

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardShowing(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 356
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v3

    .line 355
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    const/16 p0, 0x3e

    const/4 p1, 0x2

    .line 358
    invoke-static {p0, p1}, Landroid/util/StatsLog;->write(II)I

    return-void
.end method

.method public showBouncer(Z)V
    .registers 4

    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_a

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    .line 410
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1002
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mReceiveVoiceAction:Z

    if-eqz v0, :cond_1f

    .line 369
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 370
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mReceiveVoiceAction:Z

    goto :goto_32

    .line 375
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    if-eqz p1, :cond_32

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDestroyViewOnReset()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    .line 381
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 594
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onBouncerPreHideAnimation()V

    goto :goto_18

    :cond_13
    if-eqz p1, :cond_18

    .line 596
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 598
    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->blockExpansionForCurrentTouch()V

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method protected updateNavigationBarVisibility(Z)V
    .registers 6

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_22

    .line 904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_38

    .line 908
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_38

    .line 912
    :cond_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 913
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method protected updateStates()V
    .registers 11

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    .line 841
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 842
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 843
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v3

    .line 844
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 845
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const/4 v7, 0x0

    if-nez v4, :cond_24

    if-eqz v1, :cond_24

    if-eqz v6, :cond_22

    goto :goto_24

    :cond_22
    move v8, v7

    goto :goto_25

    :cond_24
    :goto_24
    move v8, v5

    .line 847
    :goto_25
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v9, :cond_34

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_34

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v9, :cond_32

    goto :goto_34

    :cond_32
    move v9, v7

    goto :goto_35

    :cond_34
    :goto_34
    move v9, v5

    :goto_35
    if-ne v8, v9, :cond_3b

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_54

    :cond_3b
    if-nez v4, :cond_4b

    if-eqz v1, :cond_4b

    if-eqz v6, :cond_42

    goto :goto_4b

    .line 853
    :cond_42
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v9, 0x400000

    or-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_54

    .line 851
    :cond_4b
    :goto_4b
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v9, -0x400001

    and-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 857
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v0

    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v8

    if-ne v0, v8, :cond_62

    .line 859
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_65

    .line 860
    :cond_62
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    .line 863
    :cond_65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v0, :cond_6d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_77

    .line 864
    :cond_6d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBouncerShowing(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBouncerShowing(Z)V

    .line 868
    :cond_77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v1, :cond_83

    if-nez v2, :cond_83

    move v8, v5

    goto :goto_84

    :cond_83
    move v8, v7

    .line 872
    :goto_84
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_8e

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_8e

    move v9, v5

    goto :goto_8f

    :cond_8e
    move v9, v7

    :goto_8f
    if-ne v8, v9, :cond_98

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_96

    goto :goto_98

    :cond_96
    move v8, v7

    goto :goto_a3

    :cond_98
    :goto_98
    if-eqz v1, :cond_9e

    if-nez v2, :cond_9e

    move v8, v5

    goto :goto_9f

    :cond_9e
    move v8, v7

    .line 873
    :goto_9f
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(Z)V

    move v8, v5

    .line 876
    :goto_a3
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v9, :cond_ae

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_ac

    goto :goto_ae

    :cond_ac
    move v5, v8

    goto :goto_b1

    .line 877
    :cond_ae
    :goto_ae
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    :goto_b1
    if-eqz v5, :cond_b6

    .line 883
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintOrFaceRecognitionState()V

    .line 887
    :cond_b6
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 888
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 889
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 890
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 891
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 892
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 893
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    .line 894
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    .line 896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    .line 897
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    .line 898
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardViewManagerStatesUpdated()V

    return-void
.end method
