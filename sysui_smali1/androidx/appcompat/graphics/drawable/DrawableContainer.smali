.class Landroidx/appcompat/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastIndex:I

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 71
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 75
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 491
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v0, :cond_b

    .line 492
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 497
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 499
    :try_start_17
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_26

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_26

    .line 500
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_34

    .line 504
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4e

    .line 506
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_41

    .line 507
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_41
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4e

    .line 510
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 514
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 515
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 516
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 517
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7f

    .line 519
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 521
    :cond_7f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8c

    .line 522
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 524
    :cond_8c
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 525
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a1

    if-eqz v0, :cond_a1

    .line 526
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_a1
    .catchall {:try_start_17 .. :try_end_a1} :catchall_ab

    .line 530
    :cond_a1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_ab
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private needsMirroring()Z
    .registers 3

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 103
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .registers 2
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_3

    goto :goto_9

    .line 1204
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_9
    if-nez p1, :cond_d

    const/16 p1, 0xa0

    :cond_d
    return p1
.end method


# virtual methods
.method animate(Z)V
    .registers 15

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 538
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_36

    .line 539
    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_38

    cmp-long v11, v9, v1

    if-gtz v11, :cond_22

    .line 541
    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 542
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_38

    :cond_22
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v9, v9

    .line 544
    iget-object v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v9, v10

    rsub-int v9, v9, 0xff

    .line 546
    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_39

    .line 551
    :cond_36
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    :cond_38
    :goto_38
    move v3, v6

    .line 553
    :goto_39
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_64

    .line 554
    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_66

    cmp-long v12, v10, v1

    if-gtz v12, :cond_53

    .line 556
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 558
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 559
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_66

    :cond_53
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    .line 561
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    .line 563
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_67

    .line 568
    :cond_64
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    :cond_66
    :goto_66
    move v0, v3

    :goto_67
    if-eqz p1, :cond_73

    if-eqz v0, :cond_73

    .line 571
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_73
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2
    .param p1  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 595
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .registers 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 601
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method clearMutated()V
    .registers 2

    .line 636
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_7
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_e

    .line 91
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method public getAlpha()I
    .registers 1

    .line 154
    iget p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    return p0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 97
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 606
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 607
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 608
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 578
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getCurrentIndex()I
    .registers 1

    .line 414
    iget p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return p0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    .line 297
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 299
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_b
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 342
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 343
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result p0

    return p0

    .line 345
    :cond_f
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, -0x1

    :goto_19
    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 334
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 335
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result p0

    return p0

    .line 337
    :cond_f
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, -0x1

    :goto_19
    return p0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 358
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result p0

    return p0

    .line 361
    :cond_f
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 350
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result p0

    return p0

    .line 353
    :cond_f
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public getOpacity()I
    .registers 2

    .line 405
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 406
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result p0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, -0x2

    :goto_13
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 2
    .param p1  # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 132
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 133
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_7
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_29

    :cond_1a
    const/4 v0, 0x0

    goto :goto_29

    .line 114
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_29

    .line 117
    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 120
    :goto_29
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result p0

    if-eqz p0, :cond_37

    .line 121
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 122
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 123
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 124
    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_37
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 369
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_7

    .line 370
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 372
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 373
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 1

    .line 244
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return p0
.end method

.method public jumpToCurrentState()V
    .registers 7

    .line 250
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 251
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 256
    :goto_11
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    .line 257
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 258
    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v2, :cond_23

    .line 259
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    :cond_23
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2e

    .line 263
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    move v0, v1

    .line 266
    :cond_2e
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    .line 267
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    move v0, v1

    :cond_37
    if-eqz v0, :cond_3c

    .line 271
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3c
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 616
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 617
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 619
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    :cond_17
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 218
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_7
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_e

    .line 222
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 3

    .line 329
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result p0

    return p0
.end method

.method protected onLevelChange(I)Z
    .registers 3

    .line 316
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 317
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 319
    :cond_9
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_12

    .line 320
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method protected onStateChange([I)Z
    .registers 3

    .line 305
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 306
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 308
    :cond_9
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_12

    .line 309
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 380
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method selectDrawable(I)Z
    .registers 10

    .line 427
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 430
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v0, :cond_35

    .line 437
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 438
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 440
    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 441
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 442
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 443
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_3c

    .line 445
    :cond_2e
    iput-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 447
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_3c

    .line 449
    :cond_35
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    .line 450
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3c
    :goto_3c
    if-ltz p1, :cond_5c

    .line 452
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v1, :cond_5c

    .line 453
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 455
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-eqz v0, :cond_60

    .line 457
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez p1, :cond_58

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 458
    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 460
    :cond_58
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_60

    .line 463
    :cond_5c
    iput-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 464
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 466
    :cond_60
    :goto_60
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long p1, v0, v6

    const/4 v0, 0x1

    if-nez p1, :cond_6d

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long p1, v1, v6

    if-eqz p1, :cond_7f

    .line 467
    :cond_6d
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_79

    .line 468
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_7c

    .line 476
    :cond_79
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 479
    :goto_7c
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 481
    :cond_7f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v0
.end method

.method public setAlpha(I)V
    .registers 7

    .line 139
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_21

    :cond_8
    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 141
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 142
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 143
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 144
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 4

    .line 233
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v1, p1, :cond_11

    .line 234
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 235
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_11

    .line 236
    iget-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    :cond_11
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 169
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 170
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_12

    .line 171
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 172
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_12

    .line 173
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    .line 1152
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1154
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_13

    .line 1155
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1156
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13

    .line 1157
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    const/4 p1, -0x1

    .line 1162
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastIndex:I

    const/4 p1, 0x0

    .line 1163
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDither(Z)V
    .registers 4

    .line 159
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v1, p1, :cond_11

    .line 160
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 161
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_11

    .line 162
    iget-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_11
    return-void
.end method

.method public setHotspot(FF)V
    .registers 3

    .line 277
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 278
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 284
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 287
    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    :goto_f
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_16

    .line 290
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 180
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 181
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_10

    .line 182
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 183
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_10
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 190
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_10

    .line 191
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 393
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 394
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 395
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 397
    :cond_b
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_12

    .line 398
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_12
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 386
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .registers 2

    .line 589
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    return-void
.end method
