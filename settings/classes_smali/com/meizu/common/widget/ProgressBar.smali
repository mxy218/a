.class public Lcom/meizu/common/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ProgressBar$SavedState;,
        Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mBreakPoint:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVertical:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 224
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_ProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 213
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    .line 237
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->initProgressBar()V

    .line 239
    sget-object v1, Lcom/meizu/common/R$styleable;->ProgressBar:[I

    .line 240
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 242
    iput-boolean p3, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 244
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgressDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_2d

    .line 246
    invoke-direct {p0, p4, v0}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 249
    invoke-virtual {p0, p4}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_2d
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDuration:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    .line 255
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinWidth:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    .line 256
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxWidth:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 257
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinHeight:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 258
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxHeight:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 260
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateBehavior:I

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    .line 262
    sget p4, Lcom/meizu/common/R$styleable;->ProgressBar_mcInterpolator:I

    const v1, 0x10a000b

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_77

    .line 266
    invoke-virtual {p0, p1, p4}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 269
    :cond_77
    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcMax:I

    iget p4, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 271
    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgress:I

    iget p4, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 273
    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcSecondaryProgress:I

    iget p4, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 274
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 276
    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 278
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_a7
    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateOnly:I

    iget-boolean p4, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 285
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 287
    iget-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez p1, :cond_c3

    sget p1, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminate:I

    iget-boolean p4, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_c2

    goto :goto_c3

    :cond_c2
    move p3, v0

    :cond_c3
    :goto_c3
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminate(Z)V

    .line 290
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ProgressBar;IIZZ)V
    .registers 5

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/ProgressBar;Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;)Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .registers 8

    monitor-enter p0

    .line 554
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-lez v0, :cond_b

    int-to-float p2, p2

    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 555
    :goto_c
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 559
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1c

    .line 560
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1c
    const v2, 0x461c4000  # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    if-eqz v1, :cond_24

    move-object v0, v1

    .line 564
    :cond_24
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2b

    .line 566
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2b
    if-eqz p4, :cond_35

    const p4, 0x102000d

    if-ne p1, p4, :cond_35

    .line 570
    invoke-virtual {p0, p2, p3}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 572
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initProgressBar()V
    .registers 3

    const/16 v0, 0x64

    .line 363
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 365
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 366
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    .line 367
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    .line 368
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    const/4 v0, 0x1

    .line 369
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    const/16 v0, 0x18

    .line 370
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    const/16 v1, 0x30

    .line 371
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 372
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 373
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .registers 8

    monitor-enter p0

    .line 577
    :try_start_1
    iget-wide v0, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 578
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    goto :goto_29

    .line 581
    :cond_14
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_21

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    .line 585
    iput-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 586
    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    goto :goto_26

    .line 589
    :cond_21
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/meizu/common/widget/ProgressBar;IIZ)V

    .line 591
    :goto_26
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 593
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 299
    instance-of p2, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p2, :cond_41

    .line 300
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    .line 302
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, p2, :cond_2f

    .line 305
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 306
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x102000d

    if-eq v3, v5, :cond_25

    const v5, 0x102000f

    if-ne v3, v5, :cond_23

    goto :goto_25

    :cond_23
    move v3, v1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v3, 0x1

    :goto_26
    invoke-direct {p0, v4, v3}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 310
    :cond_2f
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_34
    if-ge v1, p2, :cond_40

    .line 313
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_40
    return-object p0

    :cond_41
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 333
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_35

    .line 334
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 336
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v2, 0x0

    :goto_17
    const/16 v3, 0x2710

    if-ge v2, v0, :cond_31

    .line 340
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 341
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 342
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 344
    :cond_31
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v1

    :cond_35
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .registers 11

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 882
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    .line 884
    iget-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v4, :cond_51

    instance-of v4, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_51

    .line 887
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 888
    iget-object v4, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, p1

    int-to-float v5, p2

    div-float v6, v4, v5

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_51

    cmpl-float v6, v6, v2

    if-lez v6, :cond_45

    mul-float/2addr v5, v2

    float-to-int p2, v5

    sub-int/2addr p1, p2

    .line 895
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    move v0, p2

    move p2, v3

    goto :goto_53

    :cond_45
    const/high16 p1, 0x3f800000  # 1.0f

    div-float/2addr p1, v2

    mul-float/2addr v4, p1

    float-to-int p1, v4

    sub-int/2addr p2, p1

    .line 900
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    move v1, p1

    move p1, v3

    goto :goto_53

    :cond_51
    move p1, v3

    move p2, p1

    .line 905
    :goto_53
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    :cond_58
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5f

    .line 909
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5f
    return-void
.end method

.method private updateDrawableState()V
    .registers 3

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1006
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1009
    :cond_13
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1010
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_22
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 998
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 999
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 3

    const/16 p0, 0x8

    new-array p0, p0, [F

    .line 323
    fill-array-data p0, :array_e

    .line 324
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v0

    :array_e
    .array-data 4
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
        0x40a00000  # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public declared-synchronized getMax()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 705
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 674
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 691
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .registers 3

    monitor-enter p0

    .line 740
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 741
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 856
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    if-nez v0, :cond_33

    .line 857
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 862
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_33

    .line 865
    :cond_30
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 514
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 515
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 516
    :cond_a
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_11
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1076
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1077
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_a

    .line 1078
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1084
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    .line 1085
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    .line 1087
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_e

    .line 1088
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1090
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v1, :cond_19

    .line 1091
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1095
    :cond_19
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    monitor-enter p0

    .line 923
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 925
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_df

    .line 930
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    :goto_19
    sub-int/2addr v1, v2

    goto :goto_29

    .line 931
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto :goto_19

    .line 932
    :goto_29
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    .line 935
    iget-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    .line 936
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v1, v2

    invoke-direct {v3, v4, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {v5, v4, v2, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_61

    .line 939
    :cond_4d
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 940
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v5, v2, v4, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 942
    :goto_61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 944
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    .line 945
    iget-boolean v6, p0, Lcom/meizu/common/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v6, :cond_9b

    .line 946
    iget-object v6, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v7, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6, v1, v2, v7}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 947
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_e1

    const/4 v2, 0x1

    .line 949
    :try_start_87
    iput-boolean v2, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    const v2, 0x461c4000  # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 950
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_97

    .line 952
    :try_start_91
    iput-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 954
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_9b

    :catchall_97
    move-exception p1

    .line 952
    iput-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 953
    throw p1

    .line 956
    :cond_9b
    :goto_9b
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_ca

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    if-eqz v1, :cond_ca

    .line 957
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 958
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 959
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 962
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 963
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 964
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d0

    .line 967
    :cond_ca
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 971
    :goto_d0
    iget-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz p1, :cond_df

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_df

    .line 972
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 973
    iput-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_df
    .catchall {:try_start_91 .. :try_end_df} :catchall_e1

    .line 976
    :cond_df
    monitor-exit p0

    return-void

    :catchall_e1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1100
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1101
    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1102
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1103
    iget p0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 1139
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1140
    const-class p0, Lcom/meizu/common/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 8

    monitor-enter p0

    .line 980
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 985
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 986
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_29

    :cond_27
    move v0, v1

    move v2, v0

    .line 988
    :goto_29
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 989
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 992
    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 993
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 992
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 994
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZ)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1067
    check-cast p1, Lcom/meizu/common/widget/ProgressBar$SavedState;

    .line 1068
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1070
    iget v0, p1, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 1071
    iget p1, p1, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1056
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1057
    new-instance v1, Lcom/meizu/common/widget/ProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1059
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    iput v0, v1, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    .line 1060
    iget p0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    iput p0, v1, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 872
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 842
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 844
    iget-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_16

    const/16 p1, 0x8

    if-eq p2, p1, :cond_13

    const/4 p1, 0x4

    if-ne p2, p1, :cond_f

    goto :goto_13

    .line 849
    :cond_f
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_16

    .line 847
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    :cond_16
    :goto_16
    return-void
.end method

.method public postInvalidate()V
    .registers 2

    .line 521
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_7

    .line 522
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_7
    return-void
.end method

.method public setBreakPoint(I)V
    .registers 2

    .line 917
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 3

    monitor-enter p0

    .line 397
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_20

    :cond_9
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_20

    .line 398
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_19

    .line 402
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_20

    .line 405
    :cond_19
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 409
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 435
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 437
    :cond_5
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_10

    .line 439
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    :cond_10
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 3

    .line 802
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 812
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected setIsVertical(Z)V
    .registers 2

    .line 1134
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_5

    move p1, v0

    .line 721
    :cond_5
    :try_start_5
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-eq p1, v1, :cond_1c

    .line 722
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 723
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 725
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-le v1, p1, :cond_14

    .line 726
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    :cond_14
    const p1, 0x102000d

    .line 728
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1e

    .line 730
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 607
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 608
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setProgress(IZ)V
    .registers 4

    monitor-enter p0

    .line 611
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    .line 612
    monitor-exit p0

    return-void

    :cond_7
    if-gez p1, :cond_a

    const/4 p1, 0x0

    .line 619
    :cond_a
    :try_start_a
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_10

    .line 620
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 623
    :cond_10
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_1e

    .line 624
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    const p1, 0x102000d

    .line 625
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_20

    .line 627
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 468
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eq p1, v0, :cond_d

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-eqz p1, :cond_20

    .line 476
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 480
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    if-ge v3, v2, :cond_20

    .line 481
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 485
    :cond_20
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    iget-boolean v2, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_2b

    .line 487
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    :cond_2b
    if-eqz v0, :cond_4b

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 493
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    const p1, 0x102000d

    .line 494
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    const p1, 0x102000f

    .line 495
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    :cond_4b
    return-void
.end method

.method public setProgressDrawableResource(I)V
    .registers 4

    .line 1114
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1116
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1117
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-lez p1, :cond_26

    const/4 p1, -0x1

    .line 1121
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    const/4 p1, 0x1

    .line 1122
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_26
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .registers 4

    monitor-enter p0

    .line 642
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    .line 643
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    if-gez p1, :cond_b

    move p1, v0

    .line 650
    :cond_b
    :try_start_b
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-le p1, v1, :cond_11

    .line 651
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 654
    :cond_11
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v1, :cond_1f

    .line 655
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    const p1, 0x102000f

    .line 656
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_21

    .line 658
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVisibility(I)V
    .registers 3

    .line 826
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 827
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    goto :goto_19

    .line 834
    :cond_15
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_1c

    .line 832
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method startAnimation()V
    .registers 4

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 762
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_53

    .line 766
    :cond_14
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1f

    .line 767
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 770
    :cond_1f
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 771
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 773
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 775
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 778
    :goto_53
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    return-void
.end method

.method stopAnimation()V
    .registers 3

    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 786
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 787
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_13

    .line 788
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 791
    :cond_13
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    .line 509
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method
