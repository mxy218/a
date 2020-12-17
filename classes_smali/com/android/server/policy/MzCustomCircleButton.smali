.class public Lcom/android/server/policy/MzCustomCircleButton;
.super Landroid/widget/TextView;
.source "MzCustomCircleButton.java"


# instance fields
.field private mCircleCenterX:F

.field private mCircleCenterY:F

.field private mCoverAlpha:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mCustomColor:I

.field private mPaint:Landroid/graphics/Paint;

.field mPressAnimtor:Landroid/animation/ObjectAnimator;

.field private mPressed:Z

.field private mRadius:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCustomColor:I

    .line 31
    iput-boolean v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressed:Z

    .line 35
    iput v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCustomColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    int-to-float v3, v3

    aput v3, v1, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    const-string v0, "coveralpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    .line 59
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    return-void
.end method

.method private inCircleArea(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 127
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 128
    .local v2, "y":F
    iget v3, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterY:F

    sub-float/2addr v3, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v7, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterY:F

    sub-float/2addr v7, v2

    float-to-double v7, v7

    .line 129
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 128
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget v5, p0, Lcom/android/server/policy/MzCustomCircleButton;->mRadius:F

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    return v3
.end method


# virtual methods
.method public getCoverAlpha()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 78
    iget v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterX:F

    iget v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterY:F

    iget v2, p0, Lcom/android/server/policy/MzCustomCircleButton;->mRadius:F

    iget-object v3, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    if-ltz v0, :cond_23

    const/16 v1, 0xff

    if-gt v0, v1, :cond_23

    .line 86
    iget-object v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterX:F

    iget v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterY:F

    iget v2, p0, Lcom/android/server/policy/MzCustomCircleButton;->mRadius:F

    iget-object v3, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"  # Z
    .param p2, "left"  # I
    .param p3, "top"  # I
    .param p4, "right"  # I
    .param p5, "bottom"  # I

    .line 96
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterX:F

    iput v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mRadius:F

    .line 97
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCircleCenterY:F

    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 103
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    goto :goto_1f

    .line 113
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/server/policy/MzCustomCircleButton;->setStatePressed(Z)V

    .line 114
    goto :goto_1f

    .line 106
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzCustomCircleButton;->inCircleArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MzCustomCircleButton;->setStatePressed(Z)V

    .line 108
    return v2

    .line 118
    :cond_1f
    :goto_1f
    return v1
.end method

.method public setCoverAlpha(I)V
    .registers 2
    .param p1, "alpha"  # I

    .line 151
    iput p1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    .line 152
    invoke-virtual {p0}, Lcom/android/server/policy/MzCustomCircleButton;->postInvalidate()V

    .line 153
    return-void
.end method

.method public setCustomColor(I)V
    .registers 4
    .param p1, "color"  # I

    .line 63
    iput p1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCustomColor:I

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCustomColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/policy/MzCustomCircleButton;->postInvalidate()V

    .line 66
    return-void
.end method

.method public setStatePressed(Z)V
    .registers 5
    .param p1, "pressed"  # Z

    .line 133
    iget-boolean v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressed:Z

    if-eq p1, v0, :cond_3f

    .line 134
    iput-boolean p1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressed:Z

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 138
    :cond_15
    if-eqz p1, :cond_20

    .line 139
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzCustomCircleButton;->setCoverAlpha(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/policy/MzCustomCircleButton;->postInvalidate()V

    goto :goto_3f

    .line 142
    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/server/policy/MzCustomCircleButton;->mCoverAlpha:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const-string v1, "coverAlpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    .line 144
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 148
    :cond_3f
    :goto_3f
    return-void
.end method
