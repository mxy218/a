.class public Lcom/meizu/common/widget/SkipPosSeekBar;
.super Landroid/widget/SeekBar;
.source "SkipPosSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;,
        Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;,
        Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mInitialTouchX:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrag:Z

.field private mOffset:F

.field private mProcess:I

.field private mScaledTouchSlop:I

.field private mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

.field protected rate:I

.field protected realMax:I

.field protected realProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    .line 270
    iput-boolean p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SkipPosSeekBar;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SkipPosSeekBar;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/SkipPosSeekBar;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SkipPosSeekBar;)Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    return-object p0
.end method

.method private init()V
    .registers 6

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const v2, 0x3e9eb852  # 0.31f

    const v3, 0x3eae147b  # 0.34f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_20

    .line 108
    :cond_19
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_20
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mScaledTouchSlop:I

    return-void
.end method

.method private startAnimation(IFFI)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 176
    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$1;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;FFI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    iget-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/meizu/common/widget/SkipPosSeekBar$2;

    invoke-direct {p2, p0}, Lcom/meizu/common/widget/SkipPosSeekBar$2;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    iget-object p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 8

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 309
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    .line 310
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 315
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_40

    .line 316
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_30

    goto :goto_46

    .line 318
    :cond_30
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result p1

    if-ge v0, p1, :cond_37

    goto :goto_59

    :cond_37
    sub-int p1, v1, v0

    .line 321
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    goto :goto_56

    .line 325
    :cond_40
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    if-ge v0, v2, :cond_48

    :goto_46
    move v3, v5

    goto :goto_59

    .line 327
    :cond_48
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_50

    goto :goto_59

    .line 330
    :cond_50
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    :goto_56
    int-to-float v0, v1

    div-float v3, p1, v0

    .line 336
    :goto_59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_69

    .line 337
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_6f

    .line 339
    :cond_69
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    :goto_6f
    int-to-float v0, p1

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    if-eqz p1, :cond_75

    goto :goto_76

    :cond_75
    move p1, v4

    :goto_76
    int-to-float p1, p1

    div-float/2addr v5, p1

    .line 344
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(F)V

    return-void
.end method


# virtual methods
.method public getRealProgress()I
    .registers 1

    .line 265
    iget p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 248
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 249
    const-class p0, Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 349
    check-cast p1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    .line 350
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 351
    iget p1, p1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;->realProgress:I

    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    .line 352
    iget p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 357
    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 358
    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 359
    iget p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    iput p0, v1, Lcom/meizu/common/widget/SkipPosSeekBar$SavedState;->realProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 123
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 124
    iget p2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    div-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 274
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 277
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v3, :cond_38

    const/4 v0, 0x2

    if-eq v2, v0, :cond_23

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1c

    goto :goto_44

    .line 297
    :cond_1c
    iget-boolean v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    if-eqz v0, :cond_44

    .line 298
    iput-boolean v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_44

    .line 284
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_44

    .line 285
    iput-boolean v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_44

    .line 290
    :cond_38
    iget-boolean v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    if-nez v0, :cond_3f

    .line 291
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 293
    :cond_3f
    iput-boolean v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mIsDrag:Z

    goto :goto_44

    .line 280
    :cond_42
    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInitialTouchX:F

    .line 302
    :cond_44
    :goto_44
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method public setAntiAlias(Z)V
    .registers 3

    const/16 v0, 0x14

    if-eqz p1, :cond_19

    .line 135
    iget p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eq p1, v0, :cond_30

    .line 136
    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    .line 137
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    goto :goto_30

    .line 141
    :cond_19
    iget p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    .line 143
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    div-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    div-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 3

    monitor-enter p0

    .line 254
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    :goto_9
    mul-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 255
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 256
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 3

    .line 116
    new-instance v0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    .line 260
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    :goto_9
    mul-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 261
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 262
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSkipAnimationListener(Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    return-void
.end method

.method public setSkipPosMax(I)V
    .registers 4

    .line 233
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    if-eq v0, p1, :cond_34

    .line 235
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 236
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    .line 237
    iget p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 239
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 240
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 241
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    :cond_34
    return-void
.end method

.method public setSkipProgress(F)V
    .registers 3

    .line 171
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->realMax:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(I)V

    return-void
.end method

.method public setSkipProgress(I)V
    .registers 6

    .line 155
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 156
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getRealProgress()I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 159
    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2b
    const v2, 0x3ee38e39

    sub-float v3, v0, p1

    .line 161
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 162
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/meizu/common/widget/SkipPosSeekBar;->startAnimation(IFFI)V

    return-void
.end method
