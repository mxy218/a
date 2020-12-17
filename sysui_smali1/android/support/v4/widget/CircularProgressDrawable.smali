.class public Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$Ring;,
        Landroid/support/v4/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 97
    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 137
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 139
    new-instance p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 140
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    sget-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColors([I)V

    const/high16 p1, 0x40200000  # 2.5f

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 143
    invoke-direct {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CircularProgressDrawable;->applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .registers 1

    .line 66
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .registers 2

    .line 66
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p0
.end method

.method static synthetic access$302(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z
    .registers 2

    .line 66
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p1
.end method

.method private applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .registers 7

    .line 513
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    .line 514
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p0

    const v0, 0x3f4ccccd  # 0.8f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 516
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v0

    .line 517
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    const v2, 0x3c23d70a  # 0.01f

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 519
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 520
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 521
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    .line 522
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    .line 523
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .registers 11

    .line 530
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_8

    .line 531
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    goto :goto_5d

    :cond_8
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_10

    if-eqz p3, :cond_5d

    .line 535
    :cond_10
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p3

    const/high16 v1, 0x3f000000  # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a  # 0.01f

    const v4, 0x3f4a3d71  # 0.79f

    if-gez v2, :cond_33

    div-float v0, p1, v1

    .line 540
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 541
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 542
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_46

    :cond_33
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    .line 545
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    add-float/2addr v1, v4

    .line 546
    sget-object v5, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 547
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    :goto_46
    const v2, 0x3e570a3c  # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    const/high16 v2, 0x43580000  # 216.0f

    .line 552
    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v3

    mul-float/2addr p1, v2

    .line 554
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 555
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 556
    invoke-virtual {p2, p3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 557
    invoke-direct {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private evaluateColorChange(FII)I
    .registers 9

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v2, p0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x18

    sub-int/2addr v3, v0

    int-to-float v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private setRotation(F)V
    .registers 2

    .line 422
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    return-void
.end method

.method private setSizeParameters(FFFF)V
    .registers 6

    .line 149
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 150
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 151
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    .line 153
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-float/2addr p1, p0

    .line 154
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    const/4 p1, 0x0

    .line 155
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    mul-float/2addr p3, p0

    mul-float/2addr p4, p0

    .line 156
    invoke-virtual {v0, p3, p4}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    return-void
.end method

.method private setupAnimators()V
    .registers 4

    .line 562
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 563
    fill-array-data v1, :array_2c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 564
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 573
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 574
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 575
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    iput-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .registers 5

    const/high16 v0, 0x3f400000  # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1a

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000  # 0.25f

    div-float/2addr p1, v0

    .line 498
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 499
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 497
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_21

    .line 501
    :cond_1a
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    :goto_21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 397
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 399
    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 400
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    .line 412
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 436
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .registers 3

    .line 278
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 298
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setProgressRotation(F)V
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 349
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .registers 4

    .line 328
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 329
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 330
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    .line 190
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .registers 5

    if-nez p1, :cond_e

    const/high16 p1, 0x41300000  # 11.0f

    const/high16 v0, 0x40400000  # 3.0f

    const/high16 v1, 0x41400000  # 12.0f

    const/high16 v2, 0x40c00000  # 6.0f

    .line 167
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_19

    :cond_e
    const/high16 p1, 0x40f00000  # 7.5f

    const/high16 v0, 0x40200000  # 2.5f

    const/high16 v1, 0x41200000  # 10.0f

    const/high16 v2, 0x40a00000  # 5.0f

    .line 170
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 172
    :goto_19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .registers 4

    .line 444
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 445
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 447
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    .line 449
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 450
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_41

    .line 452
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 453
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 454
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 455
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_41
    return-void
.end method

.method public stop()V
    .registers 3

    .line 464
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    .line 466
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 469
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method