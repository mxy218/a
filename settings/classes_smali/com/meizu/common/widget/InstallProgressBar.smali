.class public Lcom/meizu/common/widget/InstallProgressBar;
.super Landroid/view/View;
.source "InstallProgressBar.java"


# instance fields
.field private mMaxProgress:I

.field private mMinProgress:I

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:F

.field private mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mUseSecondStyle:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000  # -1.0f

    .line 35
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000  # -1.0f

    .line 35
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    .line 53
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    return-void
.end method

.method private static FloatEquals(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    .line 174
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private drawHorizontalProgress(Landroid/graphics/Canvas;Z)V
    .registers 5

    if-eqz p2, :cond_8

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    goto :goto_18

    .line 89
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getProgress()F

    move-result p2

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMaxProgress()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 92
    :goto_18
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V
    .registers 10

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 98
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 p0, 0x1

    if-nez p2, :cond_4

    move p2, p0

    :cond_4
    if-nez p3, :cond_7

    goto :goto_8

    :cond_7
    move p0, p3

    .line 145
    :goto_8
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getOpacity()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_12

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_12
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 147
    :goto_14
    invoke-static {p2, p0, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 148
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1, v1, v1, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object p3
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getProgressAnimator(F)Landroid/animation/ObjectAnimator;
    .registers 10

    .line 156
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    cmpg-float v1, p1, v0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "Progress"

    if-gez v1, :cond_1d

    new-array v0, v6, [F

    const/4 v1, 0x0

    aput v1, v0, v5

    aput p1, v0, v4

    .line 157
    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2b

    :cond_1d
    new-array v1, v6, [F

    aput v0, v1, v5

    aput p1, v1, v4

    .line 160
    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2b
    return-object p0
.end method

.method private init()V
    .registers 5

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    const/16 v1, 0x64

    .line 58
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    .line 60
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 61
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v0, [I

    sget v3, Lcom/meizu/common/R$drawable;->mc_round_button_normal:I

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 65
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v0, [I

    sget v3, Lcom/meizu/common/R$drawable;->mc_button_normal:I

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 69
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v0, v0, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_install_progress_bg_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 74
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .registers 1

    .line 248
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    return p0
.end method

.method public getMinProgress()I
    .registers 1

    .line 252
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    return p0
.end method

.method public getProgress()F
    .registers 1

    .line 244
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V

    .line 124
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_18

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    goto :goto_1c

    :cond_18
    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    :goto_1c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    if-eq p1, p2, :cond_10

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 106
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 108
    :cond_10
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3f

    .line 109
    iget-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mUseSecondStyle:Z

    if-eqz p1, :cond_29

    .line 110
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    goto :goto_39

    .line 112
    :cond_29
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 114
    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    .line 116
    :cond_3f
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_53

    .line 117
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    :cond_53
    return-void
.end method

.method public declared-synchronized setAnimProgress(F)V
    .registers 2

    monitor-enter p0

    .line 232
    :try_start_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->getProgressAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 233
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 234
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxProgress(I)V
    .registers 2

    .line 256
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    return-void
.end method

.method public setMinProgress(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    move p1, v0

    .line 220
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    .line 221
    iget p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float p1, p1

    .line 224
    :cond_11
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    invoke-static {p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->FloatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 225
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_20

    .line 228
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBackColor(I)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 200
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 202
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_39

    .line 204
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_29

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    :cond_29
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mSecondProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 209
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3c
    return-void
.end method

.method public setRoundBtnColor(I)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 185
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_39

    .line 189
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_29

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_29
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/StateListDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 194
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3c
    return-void
.end method

.method public setRoundRadius(F)V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 81
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method
