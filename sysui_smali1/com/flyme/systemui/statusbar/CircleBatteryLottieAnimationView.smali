.class public Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "CircleBatteryLottieAnimationView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallbackExt;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgPaintColor:I

.field private mCharging:Z

.field private mChargingColor:I

.field private mCircleBgAlpha:I

.field private mCircleBgUnderDark:I

.field private mCircleBgUnderWhite:I

.field private mCriticalLevelColor:I

.field private mHeight:F

.field private mIsDark:Z

.field private mKeepDpiContext:Landroid/content/Context;

.field private mLevel:F

.field private mLowPowerMode:Z

.field private mLowPowerModeColor:I

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mNormalDarkBgColor:I

.field private mNormalWhiteBgColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPlugged:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0xf77401

    .line 57
    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mNormalWhiteBgColor:I

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mNormalDarkBgColor:I

    const p3, -0xdf2fed

    .line 59
    iput p3, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mChargingColor:I

    const/16 p3, -0x53da

    .line 60
    iput p3, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerModeColor:I

    const p3, -0x9bff1

    .line 61
    iput p3, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCriticalLevelColor:I

    const/high16 p3, -0x1000000

    .line 62
    iput p3, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgUnderWhite:I

    .line 63
    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgUnderDark:I

    const/16 p2, 0x1e

    .line 64
    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgAlpha:I

    .line 65
    iget p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mNormalWhiteBgColor:I

    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    .line 66
    iget p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgUnderWhite:I

    iput p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaintColor:I

    .line 73
    new-instance p2, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;-><init>(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x1

    .line 94
    invoke-static {p1, p2, p2}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    .line 95
    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 97
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->init()V

    .line 98
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->apply()V

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->apply()V

    return-void
.end method

.method private apply()V
    .registers 3

    .line 206
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mIsDark:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgUnderDark:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgUnderWhite:I

    :goto_9
    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaintColor:I

    .line 207
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mIsDark:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mNormalDarkBgColor:I

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mNormalWhiteBgColor:I

    :goto_14
    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    .line 208
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_21

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCharging:Z

    if-eqz v0, :cond_3e

    .line 209
    :cond_21
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerMode:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerModeColor:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    .line 210
    :cond_29
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCharging:Z

    if-eqz v0, :cond_32

    .line 211
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mChargingColor:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    goto :goto_3e

    .line 212
    :cond_32
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    const/high16 v1, 0x41200000  # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3e

    .line 213
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCriticalLevelColor:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    .line 216
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCircleBgAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method private init()V
    .registers 9

    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->stat_sys_circle_battery_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mStrokeWidth:F

    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->stat_sys_circle_battery_rect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mWidth:F

    .line 178
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->stat_sys_circle_battery_rect_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mHeight:F

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    .line 187
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mStrokeWidth:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float v4, v2, v3

    div-float v5, v2, v3

    iget v6, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mWidth:F

    div-float v7, v2, v3

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mHeight:F

    div-float/2addr v2, v3

    sub-float/2addr v7, v2

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mRectF:Landroid/graphics/RectF;

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    .line 200
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "mz_current_power_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a2

    goto :goto_a3

    :cond_a2
    move v1, v2

    :goto_a3
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 5

    .line 103
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onAttachedToWindow()V

    .line 104
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_current_power_mode"

    .line 106
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_27

    .line 110
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 5

    .line 146
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPlugged:Z

    if-ne v0, p2, :cond_f

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCharging:Z

    if-eq v0, p3, :cond_18

    .line 149
    :cond_f
    iput p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    .line 150
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPlugged:Z

    .line 151
    iput-boolean p3, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mCharging:Z

    .line 152
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->apply()V

    :cond_18
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    const/high16 p1, 0x3f000000  # 0.5f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 169
    :goto_9
    iget-boolean p2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mIsDark:Z

    if-eq p1, p2, :cond_12

    .line 170
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mIsDark:Z

    .line 171
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->apply()V

    :cond_12
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 116
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onDetachedFromWindow()V

    .line 117
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mKeepDpiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_20

    .line 120
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 127
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000  # -90.0f

    const/high16 v3, 0x43b40000  # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    const/high16 v1, 0x42b80000  # 92.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1f

    const/high16 v1, 0x42c80000  # 100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1f

    const/high16 v0, 0x42ba0000  # 93.0f

    goto :goto_26

    .line 138
    :cond_1f
    iget v1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mLevel:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_26

    move v0, v2

    .line 141
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000  # -90.0f

    const v1, 0x40666666  # 3.6f

    mul-float v4, v0, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    return-void
.end method
