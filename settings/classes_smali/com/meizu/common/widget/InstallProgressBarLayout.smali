.class public Lcom/meizu/common/widget/InstallProgressBarLayout;
.super Landroid/widget/LinearLayout;
.source "InstallProgressBarLayout.java"


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private final DEFAULT_COLOR:I

.field private final PROPERTY_CANVAS_SCALE:Ljava/lang/String;

.field private mAutoTextChange:Z

.field private mCanvasScale:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCoverTextColor:I

.field private mDensity:F

.field private mDownTime:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mMinScale:F

.field private mProgress:F

.field private mProgressBackColor:I

.field private mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

.field private mProgressColor:I

.field private mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

.field private mPromotionStatusPriceText:Landroid/widget/TextView;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetScale:F

.field private mText:Ljava/lang/String;

.field private mTextPadding:I

.field private mTextSize:I

.field private mTextUnit:Ljava/lang/String;

.field private mUpTime:J

.field private mUseSecondStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    const/high16 v1, 0x3f800000  # 1.0f

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v2, -0x777778

    .line 55
    iput v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v1, 0x3f733333  # 0.95f

    .line 57
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string v1, "canvasScale"

    .line 63
    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v1, 0x80

    .line 65
    iput-wide v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v1, 0x160

    .line 66
    iput-wide v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    const/high16 v1, 0x3f800000  # 1.0f

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v2, -0x777778

    .line 55
    iput v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v1, 0x3f733333  # 0.95f

    .line 57
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string v1, "canvasScale"

    .line 63
    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v1, 0x80

    .line 65
    iput-wide v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v1, 0x160

    .line 66
    iput-wide v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 35
    iput-boolean p3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 49
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v1, -0x777778

    .line 55
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v0, 0x3f733333  # 0.95f

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string v0, "canvasScale"

    .line 63
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v0, 0x80

    .line 65
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v0, 0x160

    .line 66
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 69
    iput-boolean p3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    .line 431
    iget-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    if-nez p1, :cond_12

    .line 432
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutDownAnimator()V

    .line 433
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_12
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 6

    .line 443
    iget-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUseSecondStyle:Z

    if-eqz p1, :cond_5

    return-void

    .line 445
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    .line 446
    iget-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 447
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutUpAnimator()V

    const-wide/16 v2, 0x80

    cmp-long p1, v0, v2

    if-gez p1, :cond_20

    sub-long/2addr v2, v0

    .line 450
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_27

    .line 452
    :cond_20
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 454
    :goto_27
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3ea8f5c3  # 0.33f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 92
    :cond_14
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_1b
    const-string v0, "layout_inflater"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lcom/meizu/common/R$layout;->mc_install_progress_bar_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDensity:F

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 103
    sget-object v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 108
    :cond_9
    sget p2, Lcom/meizu/common/R$id;->round_corner_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/InstallProgressBar;

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    .line 109
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcBackRoundRadius:I

    sget v1, Lcom/meizu/common/R$dimen;->default_round_radius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundRadius(F)V

    .line 110
    sget p2, Lcom/meizu/common/R$id;->round_corner_progress_text:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/InstallProgressBarText;

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    .line 111
    sget p2, Lcom/meizu/common/R$id;->round_corner_promotion_status_price_text:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    .line 112
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcAutoTextChange:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 114
    sget v1, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressSize:I

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    .line 115
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    invoke-virtual {p2, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextSize(I)V

    .line 116
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextCoverProgressColor:I

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 117
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {p2, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    .line 118
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {p2, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextChangeColor(I)V

    .line 119
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 120
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    const-string v1, ""

    if-nez p2, :cond_80

    move-object p2, v1

    :cond_80
    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 121
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 122
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressPadding:I

    const/high16 v2, 0x41200000  # 10.0f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    .line 123
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    invoke-virtual {p2, v0, v0, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressUnit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 125
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    if-nez p2, :cond_a8

    move-object p2, v1

    :cond_a8
    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 127
    sget v0, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 128
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 129
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressBackColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->progress_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBackColor:I

    .line 130
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBackColor:I

    invoke-virtual {p2, v0}, Lcom/meizu/common/widget/InstallProgressBar;->setProgressBackColor(I)V

    .line 131
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcMinProgress:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    .line 132
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Lcom/meizu/common/widget/InstallProgressBar;->setMinProgress(I)V

    .line 133
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupLayoutDownAnimator()V
    .registers 5

    .line 396
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 397
    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "canvasScale"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 399
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_34

    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v1

    .line 400
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3b

    :cond_34
    new-array p0, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v1

    .line 404
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_3b
    return-void
.end method

.method private setupLayoutUpAnimator()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 412
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    const-string v3, "canvasScale"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 414
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_30

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    .line 415
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x160

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_37

    :cond_30
    new-array p0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v2

    .line 419
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 146
    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    goto :goto_26

    .line 157
    :cond_1f
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_26

    .line 151
    :cond_23
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 161
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getCanvasScale()F
    .registers 1

    .line 463
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    return p0
.end method

.method public getProgressText()Lcom/meizu/common/widget/InstallProgressBarText;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    return-object p0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 p0, 0x0

    .line 137
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 176
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    .line 177
    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    .line 178
    iget p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    .line 179
    iget p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    .line 180
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    const p2, -0x777778

    .line 183
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    iget p3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3d

    .line 187
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_3d
    return-void
.end method

.method public setAutoTextChange(Z)V
    .registers 2

    .line 360
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    return-void
.end method

.method protected setCanvasScale(F)V
    .registers 2

    .line 472
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 473
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setClickable(Z)V
    .registers 4

    .line 332
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 333
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    if-eqz p1, :cond_a

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_a
    const/high16 v1, 0x3f000000  # 0.5f

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    if-eqz p1, :cond_16

    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    goto :goto_20

    :cond_16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_20
    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    return-void
.end method

.method public setPromotionTextViewValue(Ljava/lang/CharSequence;)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 351
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    return-void
.end method

.method public setTextProgress(Ljava/lang/CharSequence;)V
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnit(Ljava/lang/String;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    return-void
.end method

.method public setUniformColor(I)V
    .registers 3

    .line 369
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 370
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 371
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    :cond_d
    return-void
.end method
