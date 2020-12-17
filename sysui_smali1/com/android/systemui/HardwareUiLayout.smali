.class public Lcom/android/systemui/HardwareUiLayout;
.super Lcom/android/systemui/MultiListLayout;
.source "HardwareUiLayout.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mCollapse:Z

.field private mDivision:Landroid/view/View;

.field private mEdgeBleed:Z

.field private mEndPoint:I

.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mList:Landroid/view/ViewGroup;

.field private mListBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mOldHeight:I

.field private mRotatedBackground:Z

.field private mRoundedDivider:Z

.field private mSeparatedView:Landroid/view/ViewGroup;

.field private mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mSwapOrientation:Z

.field private final mTmp2:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 47
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    .line 534
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    return-void
.end method

.method private animateChild(II)V
    .registers 3

    return-void
.end method

.method private getAnimationDistance()F
    .registers 2

    .line 547
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_panel_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getEdgePadding()I
    .registers 2

    .line 145
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->edge_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private rotateGravityLeft(I)I
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const p1, 0x800033

    .line 341
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    .line 342
    invoke-static {p1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p1, p1, 0x70

    and-int/lit8 p0, p0, 0x7

    const/16 v0, 0x10

    const/16 v1, 0x50

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_21

    if-eq p0, v2, :cond_1e

    move p0, v1

    goto :goto_22

    :cond_1e
    const/16 p0, 0x30

    goto :goto_22

    :cond_21
    move p0, v0

    :goto_22
    if-eq p1, v0, :cond_2b

    if-eq p1, v1, :cond_29

    or-int/lit8 p0, p0, 0x3

    goto :goto_2c

    :cond_29
    or-int/2addr p0, v2

    goto :goto_2c

    :cond_2b
    or-int/2addr p0, v3

    :goto_2c
    return p0
.end method

.method private rotateGravityRight(I)I
    .registers 6

    .line 288
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    .line 289
    invoke-static {p1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p1, p1, 0x70

    and-int/lit8 p0, p0, 0x7

    const/16 v0, 0x50

    const/16 v1, 0x10

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_19

    const/16 p0, 0x30

    goto :goto_1c

    :cond_19
    move p0, v0

    goto :goto_1c

    :cond_1b
    move p0, v1

    :goto_1c
    if-eq p1, v1, :cond_25

    if-eq p1, v0, :cond_22

    or-int/2addr p0, v2

    goto :goto_26

    :cond_22
    or-int/lit8 p0, p0, 0x3

    goto :goto_26

    :cond_25
    or-int/2addr p0, v3

    :goto_26
    return p0
.end method

.method private rotateLeft()V
    .registers 3

    .line 321
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 323
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 326
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 327
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 331
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private rotateLeft(Landroid/view/View;)V
    .registers 6

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 374
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 379
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private rotateRight()V
    .registers 3

    .line 263
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 265
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 269
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 273
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private rotateRight(Landroid/view/View;)V
    .registers 6

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 383
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 386
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 388
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setCutPoint(I)V
    .registers 6

    .line 463
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareBgDrawable;->getCutPoint()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 465
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_49

    if-nez v0, :cond_15

    goto :goto_49

    .line 469
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_21

    .line 470
    iget v2, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    if-ne v2, p1, :cond_1e

    return-void

    .line 473
    :cond_1e
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 475
    :cond_21
    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    .line 476
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string p1, "cutPoint"

    invoke-static {v1, p1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    .line 477
    iget-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    if-eqz p1, :cond_43

    .line 478
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 479
    iput-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    .line 481
    :cond_43
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 466
    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/HardwareBgDrawable;->setCutPoint(I)V

    return-void
.end method

.method private swapDimens(Landroid/view/View;)V
    .registers 4

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 280
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private swapLeftAndTop(Landroid/view/View;)V
    .registers 6

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 392
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 395
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 397
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateEdgeMargin(I)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    iget v3, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-ne v3, v2, :cond_13

    .line 122
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1a

    :cond_13
    if-ne v3, v1, :cond_18

    .line 124
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1a

    .line 126
    :cond_18
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 128
    :goto_1a
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3c

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    iget v3, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-ne v3, v2, :cond_30

    .line 134
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_37

    :cond_30
    if-ne v3, v1, :cond_35

    .line 136
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_37

    .line 138
    :cond_35
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 140
    :goto_37
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    return-void
.end method

.method private updatePaddingAndGravityIfTooTall()V
    .registers 7

    .line 493
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 495
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_59

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    .line 511
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 512
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_33

    .line 513
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_34

    :cond_33
    move v0, v4

    .line 514
    :goto_34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v5, 0x15

    goto :goto_76

    .line 504
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 505
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_51

    .line 506
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_52

    :cond_51
    move v0, v4

    .line 507
    :goto_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v5, 0x51

    goto :goto_76

    .line 497
    :cond_59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 498
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_6f

    .line 499
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_70

    :cond_6f
    move v0, v4

    .line 500
    :goto_70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v5, 0x31

    :goto_76
    add-int/2addr v2, v3

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_80

    .line 520
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 521
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_80
    return-void
.end method

.method private updatePosition()V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_50

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    xor-int/lit8 v0, v0, 0x1

    .line 450
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 451
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    goto :goto_3b

    .line 452
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 453
    :goto_3b
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v2, v0

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 454
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    .line 456
    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    goto :goto_59

    .line 458
    :cond_50
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    :goto_59
    return-void
.end method

.method private updateRotation()V
    .registers 3

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 182
    iget v1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-eq v0, v1, :cond_11

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 184
    iput v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    :cond_11
    return-void
.end method

.method private updateSettings()V
    .registers 6

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sysui_hwui_edge_bleed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sysui_hwui_rounded_divider"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v0, :cond_33

    goto :goto_37

    :cond_33
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v1

    :goto_37
    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 108
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 109
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v2, v3

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6d

    .line 112
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_6d
    return-void
.end method


# virtual methods
.method public getAnimationOffsetX()F
    .registers 2

    .line 553
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_d

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationOffsetY()F
    .registers 3

    .line 561
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 565
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    return p0

    .line 563
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method protected getListView()Landroid/view/ViewGroup;
    .registers 2

    const v0, 0x102000a

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .registers 1

    .line 527
    invoke-super {p0}, Landroid/widget/LinearLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    return-object p0
.end method

.method protected getSeparatedView()Landroid/view/ViewGroup;
    .registers 2

    .line 74
    sget v0, Lcom/android/systemui/R$id;->separated_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public synthetic lambda$new$5$HardwareUiLayout(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 6

    .line 535
    iget-boolean v0, p0, Lcom/android/systemui/MultiListLayout;->mHasOutsideTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    goto :goto_2b

    :cond_a
    const/4 v0, 0x1

    .line 540
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 542
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    .line 543
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr v3, p0

    .line 542
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 536
    :cond_2b
    :goto_2b
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public synthetic lambda$onLayout$2$HardwareUiLayout()V
    .registers 1

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public synthetic lambda$onMeasure$0$HardwareUiLayout()V
    .registers 1

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePaddingAndGravityIfTooTall()V

    return-void
.end method

.method public synthetic lambda$onMeasure$1$HardwareUiLayout()V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 86
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_hwui_edge_bleed"

    const-string/jumbo v2, "sysui_hwui_rounded_divider"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 94
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 402
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 404
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez p1, :cond_41

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_40

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    .line 154
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    .line 156
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_31

    :cond_2d
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result p1

    :goto_31
    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    goto :goto_41

    :cond_40
    return-void

    .line 167
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 168
    iget p2, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    if-eq p1, p2, :cond_4e

    .line 169
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V

    .line 172
    :cond_4e
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$e7QpWmSxwKfxOfM1Q3hNoq7i9r0;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$e7QpWmSxwKfxOfM1Q3hNoq7i9r0;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 173
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    return-void
.end method

.method public onUpdateList()V
    .registers 5

    .line 247
    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->onUpdateList()V

    const/4 v0, 0x0

    .line 249
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 251
    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->shouldBeSeparated(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1d

    .line 255
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 257
    :goto_1d
    iget-object v2, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2a
    return-void
.end method

.method protected rotate(II)V
    .registers 7

    .line 193
    invoke-super {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;->rotate(II)V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 197
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    return-void

    :cond_f
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1a

    if-ne p2, v1, :cond_16

    goto :goto_1a

    .line 203
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft()V

    goto :goto_1d

    .line 201
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight()V

    .line 205
    :goto_1d
    iget-object v3, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v3

    if-eqz v3, :cond_3d

    if-eq p1, v1, :cond_38

    if-ne p2, v1, :cond_2a

    goto :goto_38

    :cond_2a
    if-ne p1, v2, :cond_32

    .line 211
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    goto :goto_3d

    .line 213
    :cond_32
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    goto :goto_3d

    .line 209
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapLeftAndTop(Landroid/view/View;)V

    :cond_3d
    :goto_3d
    if-eqz p2, :cond_6a

    .line 217
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_94

    .line 218
    iput-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 219
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v2}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 220
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v2}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/LinearLayout;

    .line 222
    iget-boolean p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz p2, :cond_5f

    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    :cond_5f
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    goto :goto_94

    .line 230
    :cond_6a
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_94

    .line 231
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 232
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/LinearLayout;

    .line 235
    iget-boolean p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz p2, :cond_8a

    .line 236
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 239
    :cond_8a
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    :cond_94
    :goto_94
    return-void
.end method
