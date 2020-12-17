.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryListening:Z

.field private mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field private mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

.field private mCameraViewAttached:Z

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mClockKeyguard:Landroid/view/View;

.field private mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

.field private mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private final mEmptyRect:Landroid/graphics/Rect;

.field private mFilterColor:I

.field private mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

.field private mFilterRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mLayoutState:I

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPaddingAnimator:Landroid/animation/ValueAnimator;

.field private mShowClock:Z

.field private mShowPercentAvailable:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusIconArea:Landroid/view/ViewGroup;

.field private mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mSystemIconsBaseMargin:I

.field private mSystemIconsContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mWithAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    .line 115
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 120
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 699
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCameraViewAttached:Z

    .line 700
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWithAnim:Z

    const/4 p1, -0x1

    .line 702
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    .line 125
    const-class p1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    .line 127
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 130
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->actInMzNightMode(I)V

    .line 131
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 132
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWithAnim:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    return-object p0
.end method

.method private animateNextLayoutChange()V
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 503
    :goto_13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .registers 5

    .line 602
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 603
    instance-of p1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz p1, :cond_d

    .line 604
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_d
    return-void
.end method

.method private loadDimens()V
    .registers 3

    .line 220
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    sget v1, Lcom/android/systemui/R$dimen;->system_icons_switcher_hidden_expanded_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 223
    sget v1, Lcom/android/systemui/R$dimen;->system_icons_super_container_avatarless_margin_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsBaseMargin:I

    .line 225
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->display_cutout_margin_consumption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 227
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mShowPercentAvailable:Z

    return-void
.end method

.method private updateCornerCutoutPadding(Landroid/util/Pair;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez v2, :cond_d

    .line 293
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void

    .line 306
    :cond_d
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingStart()I

    move-result v2

    .line 307
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v3

    .line 308
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v4

    .line 309
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    .line 311
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_32

    .line 312
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->stat_sys_clock_and_percent_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3a

    .line 313
    :cond_32
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 315
    :goto_3a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->status_bar_round_padding_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 317
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->status_bar_round_padding_top_keyguard_embedded_camera:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 320
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v10, 0x198

    if-ne v9, v10, :cond_67

    .line 322
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->status_bar_round_padding_top_keyguard_embedded_camera_xhdpi:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_75

    :cond_67
    const/16 v10, 0x21c

    if-ne v9, v10, :cond_75

    .line 325
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/android/systemui/R$dimen;->status_bar_round_padding_bottom_keyguard_embedded_camera_xxxhdpi:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 329
    :cond_75
    :goto_75
    iget-object v9, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_8a

    .line 330
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v9, Lcom/android/systemui/R$dimen;->stat_sys_clock_and_percent_padding:I

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_92

    .line 331
    :cond_8a
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 333
    :goto_92
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCameraViewAttached:Z

    if-eqz v9, :cond_98

    add-int/lit8 p1, p1, 0x6

    .line 337
    :cond_98
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v9, 0x2

    new-array v10, v9, [I

    aput v2, v10, v1

    aput v6, v10, v0

    const-string/jumbo v2, "start"

    .line 338
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v6, v9, [I

    aput v3, v6, v1

    aput v8, v6, v0

    const-string/jumbo v3, "top"

    .line 339
    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v9, [I

    aput v4, v6, v1

    aput p1, v6, v0

    const-string p1, "end"

    .line 340
    invoke-static {p1, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v4, v9, [I

    aput v5, v4, v1

    aput v7, v4, v0

    const-string v5, "bottom"

    .line 341
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 342
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v1

    aput-object v3, v6, v0

    aput-object p1, v6, v9

    const/4 p1, 0x3

    aput-object v4, v6, p1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 343
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x10a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateLayoutConsideringCutout()Z
    .registers 3

    .line 279
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    .line 282
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateCornerCutoutPadding(Landroid/util/Pair;)V

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_18

    goto :goto_1d

    .line 286
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsForCutout(Landroid/view/DisplayCutout;)Z

    move-result p0

    return p0

    .line 284
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    move-result p0

    return p0
.end method

.method private updateLayoutParamsForCutout(Landroid/view/DisplayCutout;)Z
    .registers 7

    .line 383
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 386
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_10

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    .line 392
    :cond_10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/16 v3, 0x30

    .line 393
    invoke-static {p1, v3, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 395
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 398
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 400
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v0, 0xd

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x10

    .line 404
    sget v3, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, -0x1

    .line 408
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return v2
.end method

.method private updateLayoutParamsNoCutout()Z
    .registers 4

    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_7
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    .line 369
    sget v2, Lcom/android/systemui/R$id;->status_icon_area:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, -0x2

    .line 373
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->system_icons_super_container_margin_start:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return v1
.end method

.method private updateSystemIconsLayoutParams()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_15

    .line 259
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsBaseMargin:I

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 261
    :goto_16
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v2, :cond_1c

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 263
    :cond_1c
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_2a

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    return-void
.end method

.method private updateUserSwitcher()V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 430
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    return-void
.end method

.method private updateVisibilities()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v0, :cond_28

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 234
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 236
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3b

    .line 237
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_3b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v0, :cond_3b

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez v0, :cond_54

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->isMultiUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_54

    .line 247
    :cond_4d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public changeCarrierTextToClock(Z)V
    .registers 6

    .line 677
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mShowClock:Z

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    .line 679
    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockKeyguard:Landroid/view/View;

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_18

    move v1, v2

    .line 683
    :cond_18
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "KeyguardStatusBarView:"

    .line 609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBatteryCharging: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardUserSwitcherShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBatteryListening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLayoutState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCarrierTextWidth()I
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 645
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 647
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mzUpdateLayoutConsideringCutout(Z)V
    .registers 2

    .line 688
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCameraViewAttached:Z

    .line 689
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutConsideringCutout()Z

    :cond_b
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutConsideringCutout()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 273
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 275
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 437
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 438
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 439
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 440
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 442
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 443
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 444
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 445
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 4

    .line 473
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eq p1, p3, :cond_9

    .line 474
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 175
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multi_user_avatar_keyguard_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multi_user_switch_width_keyguard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multi_user_switch_keyguard_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->system_icons_super_container_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 197
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->system_icons_keyguard_padding_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 195
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    .line 202
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_carrier_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height_keyguard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 451
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 452
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 453
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 454
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->removeCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 457
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->removeBluetoothController()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 138
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 139
    sget v0, Lcom/android/systemui/R$id;->system_icons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 140
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 141
    sget v0, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/android/systemui/R$id;->keyguard_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 145
    sget v0, Lcom/android/systemui/R$id;->status_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 146
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 150
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 153
    sget v0, Lcom/android/systemui/R$id;->connection_rate:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/ConnectionRateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateController:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    const-string v1, "KeyguardStatusBarRateView"

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->setTAG(Ljava/lang/String;)V

    .line 156
    sget v0, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    .line 157
    sget v0, Lcom/android/systemui/R$id;->battery_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryTextView:Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    const-string v2, "KeyguardStatusBar"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->setBatteryPercentView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFilterRunnable:Ljava/lang/Runnable;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockKeyguard:Landroid/view/View;

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    return-void
.end method

.method public onThemeChanged()V
    .registers 1

    .line 568
    const-class p0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    .line 464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 3

    .line 485
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .registers 3

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz p2, :cond_7

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    .line 495
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutConsideringCutout()Z

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 420
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    .line 421
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz p1, :cond_11

    .line 422
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_16

    .line 424
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_16
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 468
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 545
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_25

    .line 547
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 550
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2b

    .line 552
    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    :goto_2b
    return-void
.end method

.method public updateColors(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 655
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v1, :cond_13

    .line 657
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 660
    :cond_13
    sget v1, Lcom/android/systemui/R$id;->battery_percent:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 661
    sget v1, Lcom/android/systemui/R$id;->battery:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 662
    sget v1, Lcom/android/systemui/R$id;->clock:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 663
    sget v1, Lcom/android/systemui/R$id;->keyguard_clock:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mConnectionRateView:Lcom/flyme/systemui/statusbar/ConnectionRateView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, p1}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 667
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, p1}, Lcom/flyme/systemui/camera/CameraStateController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 671
    :cond_49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockKeyguard:Landroid/view/View;

    if-eqz p1, :cond_58

    .line 672
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mShowClock:Z

    if-eqz p0, :cond_53

    const/4 p0, 0x0

    goto :goto_55

    :cond_53
    const/16 p0, 0x8

    :goto_55
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    return-void
.end method
