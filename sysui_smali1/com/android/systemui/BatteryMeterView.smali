.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;,
        Lcom/android/systemui/BatteryMeterView$BatteryPercentMode;
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mCharging:Z

.field private final mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mIgnoreTunerUpdates:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLevel:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private mShowPercentAvailable:Z

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mUseWallpaperTextColors:Z

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800013

    .line 125
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 129
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v1, Lcom/android/systemui/R$color;->meter_background_color:I

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 129
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 131
    sget v1, Lcom/android/systemui/R$styleable;->BatteryMeterView_textAppearance:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 132
    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-direct {v1, p1, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 133
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111002c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    .line 140
    new-instance p2, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 p3, 0x2

    invoke-direct {p2, v0, p3}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setupLayoutTransition()V

    const p2, 0x10406b0

    .line 145
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 147
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 148
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 152
    invoke-virtual {p2, v0, v0, v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 154
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 157
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 159
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 161
    new-instance p1, Lcom/android/systemui/BatteryMeterView$1;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 175
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .registers 2

    .line 70
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .registers 3

    .line 333
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->battery_percentage_view:I

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .registers 6

    .line 420
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 421
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 423
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 424
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 426
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 427
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 428
    sget v4, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 430
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .registers 6

    .line 376
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 377
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_1f

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_21

    .line 380
    :cond_1f
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_21
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .registers 6

    .line 179
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 182
    fill-array-data v2, :array_36

    const-string v3, "alpha"

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 184
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    .line 186
    fill-array-data v1, :array_3e

    invoke-static {v4, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 187
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 188
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 190
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_3e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private subscribeForTunerUpdates()V
    .registers 3

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 234
    :cond_9
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_5

    return-void

    .line 244
    :cond_5
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateColors(III)V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColors(III)V

    .line 452
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 453
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_e

    .line 454
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    return-void
.end method

.method private updatePercentText()V
    .registers 6

    .line 349
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_5

    return-void

    .line 353
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    .line 354
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_1b

    .line 355
    new-instance v1, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_3f

    .line 366
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_3f

    .line 370
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_2a

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_2c

    .line 371
    :cond_2a
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_2c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3f
    return-void
.end method

.method private updateShowPercent()V
    .registers 7

    .line 384
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 386
    :goto_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const-string/jumbo v5, "status_bar_show_battery_percent"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v1

    .line 389
    :cond_1d
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    :cond_28
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-eq v2, v1, :cond_3b

    const/4 v1, 0x3

    if-ne v2, v1, :cond_30

    goto :goto_3b

    :cond_30
    if-eqz v0, :cond_64

    .line 405
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    goto :goto_64

    :cond_3b
    :goto_3b
    if-nez v0, :cond_64

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 393
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    if-eqz v0, :cond_4c

    .line 394
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 396
    :cond_4c
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    :cond_55
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$updatePercentText$0$BatteryMeterView(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_24

    .line 357
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_with_estimate:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 362
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_27
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 6

    .line 295
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 296
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 298
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 299
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 300
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const/4 v4, 0x0

    .line 299
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 301
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 302
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 301
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 4

    .line 320
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    .line 321
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 322
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 323
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 439
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 440
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 441
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 442
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 444
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez p1, :cond_2d

    .line 445
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    :cond_2d
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 311
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    .line 329
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setPowerSaveEnabled(Z)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "icon_blacklist"

    .line 288
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 289
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    :cond_b
    return-void
.end method
