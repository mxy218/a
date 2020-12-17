.class public Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "ExpandedAnimationController.java"


# instance fields
.field private mAfterCollapse:Ljava/lang/Runnable;

.field private mAfterExpand:Ljava/lang/Runnable;

.field private mAnimatingCollapse:Z

.field private mAnimatingExpand:Z

.field private mBubbleDraggedOutEnough:Z

.field private mBubbleDraggingOut:Landroid/view/View;

.field private mBubblePaddingTop:F

.field private mBubbleSizePx:F

.field private mBubblesMaxRendered:I

.field private mCollapsePoint:Landroid/graphics/PointF;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedViewPadding:I

.field private mIndividualBubbleWithinDismissTarget:Z

.field private mLauncherGridDiff:F

.field private mScreenOrientation:I

.field private mSpringingBubbleToTouch:Z

.field private mStackOffsetPx:F

.field private mStatusBarHeight:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;II)V
    .registers 5

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 104
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateOrientation(ILandroid/graphics/Point;)V

    .line 105
    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 106
    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mLauncherGridDiff:F

    return-void
.end method

.method private getAvailableScreenWidth(Z)F
    .registers 7

    .line 529
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 530
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_3d

    .line 534
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 536
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 537
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    goto :goto_23

    :cond_21
    move v1, v2

    move v3, v1

    :goto_23
    if-eqz p1, :cond_2a

    .line 539
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    if-eqz p1, :cond_31

    .line 540
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    .line 541
    :cond_31
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    .line 542
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    :cond_3d
    return v0
.end method

.method private getRowLeft()F
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    int-to-float v1, v0

    .line 554
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getSpaceBetweenBubbles()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 561
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getAvailableScreenWidth(Z)F

    move-result p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    return p0
.end method

.method private getSpaceBetweenBubbles()F
    .registers 4

    .line 580
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mLauncherGridDiff:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getWidthForDisplayingBubbles()F

    move-result v1

    sub-float/2addr v1, v0

    .line 583
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    int-to-float v2, v0

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method private getWidthForDisplayingBubbles()F
    .registers 4

    const/4 v0, 0x1

    .line 511
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getAvailableScreenWidth(Z)F

    move-result v0

    .line 512
    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mScreenOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 514
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const v1, 0x3f28f5c3  # 0.66f

    mul-float/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_18
    return v0
.end method

.method static synthetic lambda$onActiveControllerForLayout$5(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 4

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 393
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method static synthetic lambda$snapBubbleBack$3(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private startOrUpdatePathAnimation(Z)V
    .registers 4

    if-eqz p1, :cond_8

    .line 163
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$gE2Cl95ubR0Pg2NTtDLGoNhSLoM;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$gE2Cl95ubR0Pg2NTtDLGoNhSLoM;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    goto :goto_d

    .line 173
    :cond_8
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$WjMaDVcvCcyW4ns9Ixw4Q7pkHT4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$WjMaDVcvCcyW4ns9Ixw4Q7pkHT4;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    .line 185
    :goto_d
    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object v0, v1, p1

    .line 234
    invoke-interface {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBubblePositions()V
    .registers 6

    .line 475
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_9

    goto :goto_37

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    .line 479
    :goto_b
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 480
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 484
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-void

    .line 488
    :cond_22
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 490
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 133
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 136
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    return-void
.end method

.method public demagnetizeBubbleTo(FFFF)V
    .registers 7

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 317
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 318
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 319
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 320
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000  # 10000.0f

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissDraggedOutBubble(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 6

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v1, 0x461c4000  # 10000.0f

    .line 282
    invoke-virtual {p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    const v2, 0x3f8ccccd  # 1.1f

    .line 283
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 284
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object p2, v1, v0

    const/4 p2, 0x0

    .line 285
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v0, [Ljava/lang/Runnable;

    .line 286
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public dragBubbleOut(Landroid/view/View;FF)V
    .registers 9

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 252
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v2

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 254
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 255
    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 256
    invoke-virtual {v0, p3, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const v3, 0x461c4000  # 10000.0f

    .line 257
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 258
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_37

    .line 260
    :cond_35
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 264
    :cond_37
    :goto_37
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    if-nez v0, :cond_45

    .line 265
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 266
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 270
    :cond_45
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p1, p2

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_5d

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 271
    :cond_5d
    :goto_5d
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v1, p1, :cond_66

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 273
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    :cond_66
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "ExpandedAnimationController state:"

    .line 371
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isActive:          "

    .line 372
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingExpand:   "

    .line 373
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingCollapse: "

    .line 374
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  bubbleInDismiss:   "

    .line 375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  springingBubble:   "

    .line 376
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 124
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 126
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    return-void
.end method

.method getAnimatedProperties()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 398
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleLeft(I)F
    .registers 4

    int-to-float p1, p1

    .line 499
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getSpaceBetweenBubbles()F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getRowLeft()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method public getDraggedOutBubble()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 292
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedY()F
    .registers 5

    .line 358
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2b

    .line 361
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 362
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 364
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 365
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    int-to-float v1, v0

    .line 362
    :cond_25
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr v2, p0

    return v2

    :cond_2b
    :goto_2b
    return v1
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 3

    .line 418
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p1, 0x3f400000  # 0.75f

    .line 419
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x43480000  # 200.0f

    .line 420
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$0$ExpandedAnimationController()V
    .registers 2

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 167
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$1$ExpandedAnimationController()V
    .registers 2

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 177
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$2$ExpandedAnimationController(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 10

    .line 186
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    if-eqz p1, :cond_2b

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_50

    .line 202
    :cond_2b
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/high16 v3, -0x40800000  # -1.0f

    goto :goto_3c

    :cond_3a
    const/high16 v3, 0x3f800000  # 1.0f

    .line 203
    :goto_3c
    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    int-to-float v5, p2

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    .line 207
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_50
    const/4 v2, 0x0

    if-eqz p1, :cond_5f

    .line 220
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_5f
    if-nez p1, :cond_6f

    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 222
    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p1

    if-eqz p1, :cond_6f

    :cond_6d
    const/4 p1, 0x1

    goto :goto_70

    :cond_6f
    move p1, v2

    :goto_70
    if-eqz p1, :cond_75

    mul-int/lit8 p2, p2, 0xa

    goto :goto_7e

    .line 225
    :cond_75
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    sub-int/2addr p0, p2

    mul-int/lit8 p2, p0, 0xa

    :goto_7e
    const/16 p0, 0xaf

    .line 227
    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-array v0, v2, [Ljava/lang/Runnable;

    .line 228
    invoke-virtual {p3, v1, p0, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->followAnimatedTargetAlongPath(Landroid/graphics/Path;ILandroid/animation/TimeInterpolator;[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    int-to-long p0, p2

    .line 232
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStartDelay(J)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p0, 0x447a0000  # 1000.0f

    .line 233
    invoke-virtual {p3, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$updateYPosition$4$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 3

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public magnetBubbleToDismiss(Landroid/view/View;FFFLjava/lang/Runnable;)V
    .registers 9

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x0

    .line 299
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v2, 0x44bb8000  # 1500.0f

    .line 301
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 v2, 0x3f400000  # 0.75f

    .line 302
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 303
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 304
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p2, p3

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    div-float/2addr p0, p3

    sub-float/2addr p2, p0

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v0, [Ljava/lang/Runnable;

    aput-object p5, p0, v1

    .line 305
    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    .line 306
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .registers 3

    .line 381
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 382
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 383
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    .line 384
    sget v0, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const v0, 0x105020f

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 387
    sget v0, Lcom/android/systemui/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    .line 391
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 392
    sget-object p1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;->INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 393
    invoke-interface {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .registers 6

    .line 427
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x1

    .line 428
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_38

    .line 429
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 430
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_38

    .line 432
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p2

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const/high16 v2, 0x40800000  # 4.0f

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 434
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 437
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_38
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 6

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    .line 447
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 449
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_3a

    :cond_13
    const/4 p1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 451
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000  # 10000.0f

    .line 452
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 453
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    const p3, 0x3f8ccccd  # 1.1f

    .line 454
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 455
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 456
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 460
    :goto_3a
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .registers 4

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 469
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 470
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    :cond_b
    return-void
.end method

.method public onGestureFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public prepareForBubbleDrag(Landroid/view/View;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 241
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 242
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    const p1, 0x46fffe00  # 32767.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public snapBubbleBack(Landroid/view/View;FF)V
    .registers 9

    .line 330
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 334
    invoke-virtual {v1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance p3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$n3D_KDDz_uA6Zea2rmmE2_UxikI;

    invoke-direct {p3, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$n3D_KDDz_uA6Zea2rmmE2_UxikI;-><init>(Landroid/view/View;)V

    aput-object p3, p2, v3

    .line 335
    invoke-virtual {v1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public updateOrientation(ILandroid/graphics/Point;)V
    .registers 3

    .line 145
    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mScreenOrientation:I

    .line 146
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    .line 147
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz p1, :cond_23

    .line 148
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 149
    sget p2, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    const p2, 0x105020f

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    :cond_23
    return-void
.end method

.method public updateYPosition(Ljava/lang/Runnable;)V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_5

    return-void

    .line 352
    :cond_5
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$8QomesE6Zam2GSy9tW1fTh6Elo8;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$8QomesE6Zam2GSy9tW1fTh6Elo8;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object p1, v0, v1

    .line 353
    invoke-interface {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method
