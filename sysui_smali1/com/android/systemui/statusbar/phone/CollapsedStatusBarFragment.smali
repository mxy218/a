.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field private mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

.field private mCenteredIconArea:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

.field private mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mOperatorNameFrame:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSubscriptionsChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 451
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSubscriptionsChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/CommandQueue;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .registers 6

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    if-nez p3, :cond_11

    .line 348
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 353
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 354
    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 356
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 357
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;-><init>(Landroid/view/View;I)V

    .line 358
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x4

    .line 365
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .registers 5

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p2, :cond_13

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 378
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 379
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x140

    .line 380
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 381
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x32

    .line 382
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 390
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 392
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 393
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 394
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5a
    return-void
.end method

.method private clockHiddenMode()I
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 314
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/16 p0, 0x8

    return p0
.end method

.method private initEmergencyCryptkeeperText()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->emergency_cryptkeeper_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_17

    .line 403
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 405
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_2a

    :cond_1f
    if-eqz v0, :cond_2a

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private initOperatorName()V
    .registers 3

    .line 413
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showOperatorNameInStatusBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->operator_name:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 415
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    :cond_1c
    return-void
.end method

.method static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .registers 2

    .line 358
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 286
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsForBouncer()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .registers 8

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->headsUpShouldBeVisible()Z

    move-result v0

    const/high16 v1, 0x800000

    if-eqz v0, :cond_b

    or-int/2addr p1, v1

    .line 245
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isLaunchTransitionFadingAway()Z

    move-result v2

    const/high16 v3, 0x20000

    const/high16 v4, 0x100000

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 246
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v2

    if-nez v2, :cond_33

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 248
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    if-nez v0, :cond_33

    :cond_30
    or-int/2addr p1, v3

    or-int/2addr p1, v4

    or-int/2addr p1, v1

    .line 256
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_4b

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v2, :cond_4b

    .line 257
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_42

    or-int/2addr p1, v3

    .line 260
    :cond_42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4b

    or-int/2addr p1, v4

    .line 267
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 268
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_62

    const/high16 v0, 0x900000

    or-int/2addr p1, v0

    .line 273
    :cond_62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result p0

    if-eqz p0, :cond_6e

    or-int p0, p1, v4

    or-int p1, p0, v1

    :cond_6e
    return p1
.end method

.method public disable(IIIZ)V
    .registers 6

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_b

    return-void

    .line 208
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 209
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    xor-int/2addr p2, p1

    .line 211
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/high16 p3, 0x100000

    and-int v0, p2, p3

    if-eqz v0, :cond_2a

    and-int/2addr p3, p1

    if-eqz p3, :cond_24

    .line 214
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 215
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    goto :goto_2a

    .line 217
    :cond_24
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 218
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    :cond_2a
    :goto_2a
    const/high16 p3, 0x20000

    and-int v0, p2, p3

    if-eqz v0, :cond_3a

    and-int/2addr p3, p1

    if-eqz p3, :cond_37

    .line 223
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    goto :goto_3a

    .line 225
    :cond_37
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    :cond_3a
    :goto_3a
    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-nez p2, :cond_4b

    .line 230
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v0

    if-eq p2, v0, :cond_55

    :cond_4b
    and-int/2addr p1, p3

    if-eqz p1, :cond_52

    .line 232
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideClock(Z)V

    goto :goto_55

    .line 234
    :cond_52
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method public hideClock(Z)V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public hideOperatorName(Z)V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 332
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 189
    :cond_25
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getCenteredNotificationAreaView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    :cond_4f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 95
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 96
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 97
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 100
    const-class p1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSubscriptionsChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V

    .line 104
    const-class p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 111
    sget p0, Lcom/android/systemui/R$layout;->status_bar:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .registers 3

    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 166
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 172
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->removeCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSubscriptionsChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V

    .line 175
    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->removeBluetoothController()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 4

    .line 431
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "panel_state"

    .line 146
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 3

    .line 421
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 422
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getCarrierTextWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 426
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_1b

    const-string v0, "panel_state"

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    .line 119
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 122
    :cond_1b
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setShouldLog(Z)V

    .line 124
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOperatorName()V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->connection_rate:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/ConnectionRateView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {p1, p2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    const-string p2, "StatusBarRateView"

    invoke-virtual {p1, p2}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->setTAG(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    .line 136
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->battery_percent:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    const-string p2, "StatusBar"

    invoke-virtual {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->setBatteryPercentView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public showClock(Z)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showNotificationIconArea(Z)V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showOperatorName(Z)V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method public showSystemIconArea(Z)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method
