.class public Lcom/meizu/common/widget/GradientLayout;
.super Landroid/widget/LinearLayout;
.source "GradientLayout.java"


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private final DEFAULT_COLOR:I

.field private final DISABLED_PAINT_COLOR:I

.field private final MAX_GRADIENT_SCALE:F

.field private final MIN_GRADIENT_SCALE:F

.field private final PROPERTY_CANVAS_ROTATION_Y:Ljava/lang/String;

.field private final PROPERTY_CANVAS_ROTATION_Z:Ljava/lang/String;

.field private final PROPERTY_CANVAS_SCALE:Ljava/lang/String;

.field private final SHAPE_CIRCLE:I

.field private final SHAPE_NORMAL:I

.field private mBackgroundBeGreyWhenDisabled:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCamera:Landroid/graphics/Camera;

.field private mCanvasRotationY:F

.field private mCanvasRotationZ:F

.field private mCanvasScale:F

.field private mCenterEdge:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCornerRadius:I

.field private mDensity:F

.field private mDisableColorAlpha:I

.field private mDisabledPaint:Landroid/graphics/Paint;

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mDrawShader:Z

.field private mEnableDrawBackground:Z

.field private mEnableRotateY:Z

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mGradientScale:F

.field private mHasMultiChild:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsSwipeMode:Z

.field private mIsTouchCanceled:Z

.field private mLastTouchX:F

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mLeftColor:I

.field private mMaxRotationYDegree:F

.field private mMinScale:F

.field private mOnlyDrawShadow:Z

.field private mOutSlop:F

.field private mRadialCenterColor:I

.field private mRadialEdgeColor:I

.field private mRect:Landroid/graphics/RectF;

.field private mRightColor:I

.field private mRotationMatrix:Landroid/graphics/Matrix;

.field private mRotationPivot:F

.field private mShaderPaint:Landroid/graphics/Paint;

.field private mShaderPaintAlpha:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShapeMode:I

.field private mShouldDrawShadow:Z

.field private mTargetScale:F

.field private mTargetYDegree:F

.field private mUpTime:J

.field private mUpTranslate:F

.field private mValidTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GradientLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GradientLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0xff0100

    .line 49
    iput p3, p0, Lcom/meizu/common/widget/GradientLayout;->DEFAULT_COLOR:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->SHAPE_NORMAL:I

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Lcom/meizu/common/widget/GradientLayout;->SHAPE_CIRCLE:I

    const v2, -0x1a1a1b

    .line 52
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->DISABLED_PAINT_COLOR:I

    const/high16 v2, 0x40a00000  # 5.0f

    .line 54
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mMaxRotationYDegree:F

    const v2, 0x3f733333  # 0.95f

    .line 55
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    const/high16 v2, 0x3f800000  # 1.0f

    .line 56
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->MAX_GRADIENT_SCALE:F

    const v3, 0x3dcccccd  # 0.1f

    .line 57
    iput v3, p0, Lcom/meizu/common/widget/GradientLayout;->MIN_GRADIENT_SCALE:F

    const-wide/16 v3, 0x80

    .line 59
    iput-wide v3, p0, Lcom/meizu/common/widget/GradientLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v3, 0x160

    .line 60
    iput-wide v3, p0, Lcom/meizu/common/widget/GradientLayout;->ANIM_UP_DURATION:J

    const-string v3, "canvasScale"

    .line 62
    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-string v3, "canvasRotationY"

    .line 63
    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_ROTATION_Y:Ljava/lang/String;

    const-string v3, "canvasRotationZ"

    .line 64
    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->PROPERTY_CANVAS_ROTATION_Z:Ljava/lang/String;

    .line 66
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    .line 67
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mCamera:Landroid/graphics/Camera;

    .line 68
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x27000000

    .line 72
    iput v3, p0, Lcom/meizu/common/widget/GradientLayout;->mRadialCenterColor:I

    .line 73
    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRadialEdgeColor:I

    const/16 v3, 0x4c

    .line 74
    iput v3, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    .line 77
    iput p3, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 78
    iput p3, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 84
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    .line 85
    iput v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    const/4 p3, 0x0

    .line 86
    iput p3, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    .line 87
    iput p3, p0, Lcom/meizu/common/widget/GradientLayout;->mGradientScale:F

    .line 105
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsSwipeMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 107
    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 108
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    .line 109
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    .line 110
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDrawShader:Z

    .line 111
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 112
    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundBeGreyWhenDisabled:Z

    .line 113
    iput-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    .line 139
    sget-object p3, Lcom/meizu/common/R$styleable;->GradientLayout:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_cd

    .line 141
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcLeftColor:I

    iget p3, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 142
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcRightColor:I

    iget p3, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 143
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcShape:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    .line 144
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcDrawShadow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 145
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcEnableRotateY:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    .line 146
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcOnlyDrawShadow:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 147
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcGreyWhenDisabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundBeGreyWhenDisabled:Z

    .line 148
    sget p2, Lcom/meizu/common/R$styleable;->GradientLayout_mcEnableDrawBackground:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    .line 149
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    :cond_cd
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->init()V

    return-void
.end method

.method private calculateTransform(F)V
    .registers 6

    .line 487
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    sub-float v1, p1, v0

    div-float/2addr v1, v0

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v2, v1, v0

    const/high16 v3, 0x3f800000  # 1.0f

    if-gez v2, :cond_e

    goto :goto_15

    :cond_e
    cmpl-float v0, v1, v3

    if-lez v0, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    .line 494
    :goto_15
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mMaxRotationYDegree:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    .line 496
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_27

    .line 497
    iget p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->setRotationPivot(F)V

    goto :goto_2b

    :cond_27
    const/4 p1, 0x0

    .line 499
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->setRotationPivot(F)V

    :goto_2b
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 5

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getColorWhenAnimating(I)I
    .registers 5

    .line 704
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_9

    return p1

    :cond_9
    sub-float v0, v1, v0

    .line 707
    iget p0, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    const/4 p0, 0x3

    new-array p0, p0, [F

    .line 709
    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    .line 710
    aget v1, p0, p1

    const v2, 0x3d4ccccd  # 0.05f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    aput v1, p0, p1

    const/4 p1, 0x2

    .line 711
    aget v1, p0, p1

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    aput v1, p0, p1

    .line 712
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownTime:J

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDownY:F

    .line 419
    iget p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLastTouchX:F

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTranslate:F

    .line 421
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->calculateTransform(F)V

    .line 436
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->setupLayoutDownAnimator()V

    .line 438
    iget-object p0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .registers 8

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 444
    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mOutSlop:F

    const/4 v3, 0x0

    sub-float v4, v3, v2

    cmpg-float v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_25

    iget v4, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v2, v0, v4

    if-gtz v2, :cond_25

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_27

    .line 446
    :cond_25
    iput-boolean v5, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 448
    :cond_27
    iget-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/meizu/common/widget/GradientLayout;->mHasMultiChild:Z

    if-eqz v1, :cond_4b

    .line 449
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    cmpl-float v1, v0, v2

    if-gtz v1, :cond_49

    :cond_3b
    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mDownX:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterEdge:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_48

    cmpg-float v0, v0, v2

    if-gez v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    :cond_49
    :goto_49
    iput-boolean v5, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    .line 451
    :cond_4b
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-eqz v0, :cond_52

    .line 452
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    :cond_52
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 p1, 0x0

    .line 504
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mIsSwipeMode:Z

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTime:J

    .line 506
    iget-wide v0, p0, Lcom/meizu/common/widget/GradientLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/GradientLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 508
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientLayout;->setupLayoutUpAnimator()V

    const-wide/16 v2, 0x80

    cmp-long p1, v0, v2

    if-gez p1, :cond_1e

    sub-long/2addr v2, v0

    .line 512
    iget-object p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_25

    .line 515
    :cond_1e
    iget-object p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 518
    :goto_25
    iget-object p0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 157
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3ea8f5c3  # 0.33f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 159
    :cond_14
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 162
    :goto_1b
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaintAlpha:I

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout;->mShaderPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    const v1, -0x1a1a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mValidTouchSlop:F

    .line 178
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mValidTouchSlop:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOutSlop:F

    .line 179
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mDensity:F

    return-void
.end method

.method private setRotationPivot(F)V
    .registers 2

    .line 644
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mRotationPivot:F

    return-void
.end method

.method private setupLayoutDownAnimator()V
    .registers 7

    .line 531
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mMinScale:F

    iput v0, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 533
    iget v3, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    const/4 v4, 0x1

    aput v3, v1, v4

    const-string v3, "canvasRotationY"

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v3, v0, [F

    const/high16 v5, 0x3f800000  # 1.0f

    aput v5, v3, v2

    .line 534
    iget v5, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    aput v5, v3, v4

    const-string v5, "canvasScale"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 536
    iget-object v5, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v5, :cond_54

    .line 537
    iget-boolean v5, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v5, :cond_3b

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    .line 538
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_45

    :cond_3b
    new-array v0, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    .line 540
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 542
    :goto_45
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    iget-object p0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_69

    .line 545
    :cond_54
    iget-boolean p0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz p0, :cond_62

    new-array p0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p0, v2

    aput-object v3, p0, v4

    .line 546
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_69

    :cond_62
    new-array p0, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p0, v2

    .line 548
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_69
    return-void
.end method

.method private setupLayoutUpAnimator()V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 556
    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetYDegree:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string v4, "canvasRotationY"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    .line 557
    iget v5, p0, Lcom/meizu/common/widget/GradientLayout;->mTargetScale:F

    aput v5, v4, v3

    const/high16 v5, 0x3f800000  # 1.0f

    aput v5, v4, v2

    const-string v5, "canvasScale"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 559
    iget-object v5, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v5, :cond_50

    .line 560
    iget-boolean v5, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz v5, :cond_37

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    .line 561
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_41

    :cond_37
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v0, v3

    .line 563
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 565
    :goto_41
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 566
    iget-object p0, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x160

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_65

    .line 568
    :cond_50
    iget-boolean p0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    if-eqz p0, :cond_5e

    new-array p0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p0, v3

    aput-object v4, p0, v2

    .line 569
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_65

    :cond_5e
    new-array p0, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, p0, v3

    .line 571
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_65
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/GradientLayout;->getColorWhenAnimating(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    .line 291
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 293
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    iget v2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 302
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    if-eqz v0, :cond_46

    .line 303
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->drawBackground(Landroid/graphics/Canvas;)V

    goto :goto_46

    .line 306
    :cond_37
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableDrawBackground:Z

    if-eqz v0, :cond_46

    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/meizu/common/widget/GradientLayout;->mDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 311
    :cond_46
    :goto_46
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 375
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    if-eqz v0, :cond_9

    .line 376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 379
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    return v1

    .line 382
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_33

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    goto :goto_36

    .line 390
    :cond_20
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_36

    .line 391
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_36

    .line 397
    :cond_28
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_2f

    .line 398
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    :cond_2f
    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mIsTouchCanceled:Z

    goto :goto_36

    .line 386
    :cond_33
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GradientLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 403
    :cond_36
    :goto_36
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getCanvasRotationY()F
    .registers 1

    .line 626
    iget p0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationY:F

    return p0
.end method

.method protected getCanvasRotationZ()F
    .registers 1

    .line 635
    iget p0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationZ:F

    return p0
.end method

.method protected getCanvasScale()F
    .registers 1

    .line 617
    iget p0, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    return p0
.end method

.method public getDisableColorAlpha()I
    .registers 1

    .line 678
    iget p0, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    return p0
.end method

.method public getEnableRotateY()Z
    .registers 1

    .line 657
    iget-boolean p0, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 275
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 211
    iget-object p3, p0, Lcom/meizu/common/widget/GradientLayout;->mRect:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 212
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    .line 213
    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    .line 214
    iget p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterX:F

    .line 215
    iget p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLayoutHeight:I

    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    iput p2, p0, Lcom/meizu/common/widget/GradientLayout;->mCenterY:F

    .line 216
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCornerRadius:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 409
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    if-eqz v0, :cond_9

    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method protected setCanvasRotationY(F)V
    .registers 2

    .line 630
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationY:F

    .line 631
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected setCanvasRotationZ(F)V
    .registers 2

    .line 639
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasRotationZ:F

    .line 640
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected setCanvasScale(F)V
    .registers 2

    .line 621
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mCanvasScale:F

    .line 622
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDisableColorAlpha(I)V
    .registers 3

    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-le p1, v0, :cond_7

    goto :goto_9

    .line 690
    :cond_7
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mDisableColorAlpha:I

    :cond_9
    :goto_9
    return-void
.end method

.method public setEnableRotateY(Z)V
    .registers 2

    .line 653
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mEnableRotateY:Z

    return-void
.end method

.method public setLeftColor(I)V
    .registers 3

    .line 583
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mLeftColor:I

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method public setOnlyDrawShadow(Z)V
    .registers 2

    .line 698
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mOnlyDrawShadow:Z

    .line 699
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    if-nez p1, :cond_6

    .line 205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 203
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Orientation must be HORIZONTAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRightColor(I)V
    .registers 2

    .line 590
    iput p1, p0, Lcom/meizu/common/widget/GradientLayout;->mRightColor:I

    .line 591
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method public setShouldDrawShadow(Z)V
    .registers 2

    .line 670
    iput-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    .line 671
    iget-boolean p1, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_d

    .line 672
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientLayout;->setupShadowDrawable()V

    .line 674
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setupShadowDrawable()V
    .registers 4

    .line 183
    iget-boolean v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShouldDrawShadow:Z

    if-eqz v0, :cond_47

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2a

    .line 185
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1d

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$drawable;->mc_gradient_layout_circle_shadow:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 188
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$drawable;->mc_gradient_layout_shadow:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 191
    :cond_2a
    iget v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShapeMode:I

    if-ne v0, v2, :cond_3b

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_circle_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 194
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_gradient_layout_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GradientLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_47
    :goto_47
    return-void
.end method
