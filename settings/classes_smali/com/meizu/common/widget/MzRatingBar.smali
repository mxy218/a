.class public Lcom/meizu/common/widget/MzRatingBar;
.super Landroid/widget/RatingBar;
.source "MzRatingBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private currentIndex:I

.field private hasInitialNum:Z

.field private lastIndex:I

.field private mAnimaotr:Landroid/animation/ValueAnimator;

.field private mBackScales:[F

.field private mDector:Landroid/view/GestureDetector;

.field private mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private mScales:[F

.field private mStarColors:[I

.field private mStarDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleDownTime:I

.field private scaleUpTime:I

.field private starWidth:F

.field private sumTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 57
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_MzRatingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 45
    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 50
    iput-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 112
    new-instance v1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3e4ccccd  # 0.2f

    const v4, 0x3d23d70a  # 0.04f

    const v5, 0x3da3d70a  # 0.08f

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 113
    new-instance v1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/4 v3, 0x0

    const v4, 0x3eb33333  # 0.35f

    const v5, 0x3f0f5c29  # 0.56f

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    .line 114
    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    const/16 v1, 0xdc

    .line 117
    iput v1, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    const/16 v1, 0x118

    .line 118
    iput v1, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    .line 62
    sget-object v1, Lcom/meizu/common/R$styleable;->MzRatingBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    sget p3, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarColors:I

    sget v1, Lcom/meizu/common/R$array;->mc_rating_bar_default_colors:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 65
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    .line 66
    sget p3, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object p3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_64

    .line 68
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/meizu/common/R$drawable;->mz_btn_big_star:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_64
    iget-object p3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result p2

    cmpl-float p2, v3, p2

    const/4 p3, 0x1

    if-eqz p2, :cond_84

    .line 73
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput p2, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 74
    iput-boolean p3, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 76
    :cond_84
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/meizu/common/widget/MzRatingBar;->mDector:Landroid/view/GestureDetector;

    .line 77
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    .line 78
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    .line 79
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->initScales()V

    .line 81
    :try_start_9e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "flymelab_flyme_night_mode"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p3, p1, :cond_ce

    .line 82
    const-class p1, Landroid/graphics/drawable/BitmapDrawable;

    const-string/jumbo p2, "reverseInMzNightMode"

    new-array v1, p3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c6} :catch_c7

    goto :goto_ce

    :catch_c7
    const-string p0, "MzRatingBar"

    const-string p1, "NightMode methods reflected failed!"

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    :goto_ce
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/MzRatingBar;)[F
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/MzRatingBar;)[F
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/MzRatingBar;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/MzRatingBar;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    return p0
.end method

.method private backUpRange(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_e

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private calculateCureentIndex()I
    .registers 3

    .line 301
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getProgressPos()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getProgressPos()I
    .registers 3

    .line 217
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 218
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getScale()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingLeft()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getScale()F
    .registers 2

    .line 223
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    if-lez v0, :cond_e

    .line 224
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private initScales()V
    .registers 4

    const/4 v0, 0x0

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    array-length v2, v1

    if-ge v0, v2, :cond_c

    const/4 v2, 0x0

    .line 92
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private resetBackUp(II)V
    .registers 5

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    :goto_3
    if-ge p1, p2, :cond_d

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mBackScales:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private setEnd(I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_13

    .line 229
    iget-object v1, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    iget v3, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x10

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private startAnimation()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_44

    .line 122
    iget v0, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    .line 123
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/meizu/common/widget/MzRatingBar;->sumTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/MzRatingBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/MzRatingBar$1;-><init>(Lcom/meizu/common/widget/MzRatingBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    :cond_44
    iget-object p0, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getRating()F
    .registers 3

    .line 242
    invoke-super {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    .line 243
    iget-boolean p0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz p0, :cond_9

    goto :goto_10

    :cond_9
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float v0, p0

    :goto_10
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 248
    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    .line 250
    :cond_8
    iget-boolean p1, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz p1, :cond_19

    .line 251
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MzRatingBar;->setEnd(I)V

    .line 253
    :cond_19
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 254
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    .line 255
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->calculateCureentIndex()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 256
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    .line 257
    iput-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 258
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->startAnimation()V

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 153
    :goto_f
    iget-object v3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12d

    iget-object v3, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    if-eqz v3, :cond_12d

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    .line 157
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v5, :cond_2b

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v5

    goto :goto_2e

    :cond_2b
    iget v5, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    int-to-float v5, v5

    :goto_2e
    iget v6, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 158
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_57

    .line 160
    :cond_40
    iget-boolean v4, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-eqz v4, :cond_49

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getRating()F

    move-result v4

    goto :goto_4c

    :cond_49
    iget v4, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    int-to-float v4, v4

    :goto_4c
    iget v5, p0, Lcom/meizu/common/widget/MzRatingBar;->starWidth:F

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_57
    if-nez v0, :cond_5e

    .line 163
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingLeft()I

    move-result v3

    goto :goto_6e

    :cond_5e
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 164
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getPaddingTop()I

    move-result v4

    .line 165
    :goto_72
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v5

    if-ge v1, v5, :cond_12a

    .line 167
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v5, v5

    if-lt v1, v5, :cond_86

    .line 168
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v6, v6

    sub-int/2addr v6, v2

    aget v5, v5, v6

    goto :goto_8a

    .line 170
    :cond_86
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    aget v5, v5, v1

    .line 172
    :goto_8a
    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_b3

    .line 176
    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_ba

    .line 178
    :cond_b3
    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v3, v6

    .line 180
    :goto_ba
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget-boolean v6, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    if-nez v6, :cond_11e

    .line 182
    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    aget v6, v6, v1

    .line 183
    iget v7, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    const/high16 v8, 0x3f800000  # 1.0f

    if-gez v7, :cond_e1

    const v7, 0x3dcccccd  # 0.1f

    .line 184
    iget-object v9, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleUpInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget v10, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    invoke-virtual {v9, v6}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->getInterpolation(F)F

    move-result v6

    const v9, 0x3f6e147a  # 0.92999995f

    mul-float/2addr v6, v9

    add-float/2addr v6, v7

    goto :goto_f6

    .line 186
    :cond_e1
    iget-object v7, p0, Lcom/meizu/common/widget/MzRatingBar;->mScaleDownInt:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    iget v9, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleUpTime:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    iget v9, p0, Lcom/meizu/common/widget/MzRatingBar;->scaleDownTime:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual {v7, v6}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->getInterpolation(F)F

    move-result v6

    const v7, 0x3cf5c28f  # 0.03f

    sub-float v6, v8, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    :goto_f6
    if-eqz v0, :cond_fe

    .line 189
    iget-object v7, p0, Lcom/meizu/common/widget/MzRatingBar;->mScales:[F

    array-length v7, v7

    sub-int/2addr v7, v2

    sub-int/2addr v7, v1

    goto :goto_ff

    :cond_fe
    move v7, v1

    :goto_ff
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v7, v9

    int-to-float v7, v7

    sub-float/2addr v8, v6

    mul-float/2addr v7, v8

    .line 190
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x3f000000  # 0.5f

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    mul-float/2addr v5, v10

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 193
    :cond_11e
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_72

    .line 196
    :cond_12a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_12d
    .catchall {:try_start_1 .. :try_end_12d} :catchall_12f

    .line 198
    :cond_12d
    monitor-exit p0

    return-void

    :catchall_12f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 274
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->calculateCureentIndex()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    .line 275
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iget p2, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    sub-int p3, p1, p2

    if-lez p3, :cond_30

    .line 276
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 277
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    .line 278
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->initScales()V

    .line 279
    iget-object p1, p0, Lcom/meizu/common/widget/MzRatingBar;->mAnimaotr:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 280
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->startAnimation()V

    goto :goto_44

    .line 282
    :cond_30
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MzRatingBar;->backUpRange(I)V

    .line 283
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MzRatingBar;->resetBackUp(II)V

    .line 285
    :goto_44
    iget p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 142
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 143
    iget-object p0, p0, Lcom/meizu/common/widget/MzRatingBar;->mDector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public setRating(F)V
    .registers 5

    .line 235
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/meizu/common/widget/MzRatingBar;->hasInitialNum:Z

    .line 237
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->currentIndex:I

    iput p1, p0, Lcom/meizu/common/widget/MzRatingBar;->lastIndex:I

    return-void
.end method

.method public setStarColors([I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 207
    iput-object p1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    :cond_4
    return-void
.end method
