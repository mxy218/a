.class public Lcom/meizu/common/drawble/CircularAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final START_ANGLE_PROPERTY:Ljava/lang/String; = "startAngle"

.field public static final SWEEP_ANGLE_PROPERTY:Ljava/lang/String; = "sweepAngle"


# instance fields
.field private final LOADING_ANIM_DURATION:J

.field private final fBounds:Landroid/graphics/RectF;

.field private mAllowLoading:Z

.field private mBorderWidth:F

.field private mLoadingAnimator:Landroid/animation/Animator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(IF)V
    .registers 5

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x6e0

    .line 24
    iput-wide v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->LOADING_ANIM_DURATION:J

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    .line 44
    iput p2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object p2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->createLoadingAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private createLoadingAnimator()Landroid/animation/Animator;
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000  # -90.0f

    .line 124
    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/high16 v2, 0x43a50000  # 330.0f

    .line 125
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x441d8000  # 630.0f

    .line 126
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/animation/Keyframe;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const-string/jumbo v2, "startAngle"

    .line 127
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v3, [F

    .line 128
    fill-array-data v3, :array_54

    const-string/jumbo v4, "sweepAngle"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    aput-object v3, v1, v0

    .line 129
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x6e0

    .line 140
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-object p0

    nop

    :array_54
    .array-data 4
        0x0
        -0x3d100000  # -120.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 57
    iget-object v1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    iget-object v5, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x2

    return p0
.end method

.method public getStartAngle()F
    .registers 1

    .line 167
    iget p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    return p0
.end method

.method public getSweepAngle()F
    .registers 1

    .line 150
    iget p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    .line 90
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float v3, p0, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 92
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float v3, p0, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 93
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float v3, p0, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 94
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    div-float/2addr p0, v2

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAllowLoading(Z)V
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setIndicatorColor(I)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_7

    .line 195
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    return-void
.end method

.method public setStartAngle(F)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mStartAngle:F

    .line 176
    iget-boolean p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    if-eqz p1, :cond_9

    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    if-lez p1, :cond_1a

    .line 204
    iget v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    float-to-int v0, v0

    if-eq v0, p1, :cond_1a

    int-to-float p1, p1

    .line 205
    iput p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    .line 206
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 207
    iget-object p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1a

    .line 208
    iget p0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mBorderWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1a
    return-void
.end method

.method public setSweepAngle(F)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mSweepAngle:F

    .line 158
    iget-boolean p1, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mAllowLoading:Z

    if-eqz p1, :cond_9

    .line 159
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    .line 103
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mRunning:Z

    .line 113
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
