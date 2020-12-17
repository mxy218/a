.class public Lcom/android/systemui/bubbles/animation/StackAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "StackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;
    }
.end annotation


# instance fields
.field private mBubbleIconBitmapSize:I

.field private mBubbleOffscreen:I

.field private mBubblePaddingTop:I

.field private mBubbleSize:I

.field private mFirstBubbleSpringingToTouch:Z

.field private mImeHeight:F

.field private mIsMovingFromFlinging:Z

.field private mPreImeY:F

.field private mRestingStackPosition:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStackMovedToStartPosition:Z

.field private mStackOffset:F

.field private mStackPosition:Landroid/graphics/PointF;

.field private mStackPositionAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Landroidx/dynamicanimation/animation/DynamicAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mStackStartingVerticalOffset:I

.field private mStatusBarHeight:F

.field private mWithinDismissTarget:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    const/4 v1, 0x1

    .line 111
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    return-void
.end method

.method private animateInBubble(Landroid/view/View;I)V
    .registers 8

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 810
    :cond_7
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v0

    .line 814
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, p2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 815
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 816
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 817
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 820
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge p2, v2, :cond_4a

    .line 821
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    add-float/2addr v4, v0

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 822
    invoke-virtual {v2, v4, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p2, 0x43480000  # 200.0f

    .line 823
    invoke-virtual {v2, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 824
    invoke-virtual {v2, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 828
    :cond_4a
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 829
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 830
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p2, 0x447a0000  # 1000.0f

    .line 831
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 832
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-le p0, v1, :cond_6a

    const-wide/16 v0, 0x19

    goto :goto_6c

    :cond_6a
    const-wide/16 v0, 0x0

    :goto_6c
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStartDelay(J)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v3, [Ljava/lang/Runnable;

    .line 833
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 844
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_13
    return-void
.end method

.method private getDefaultStartPosition()Landroid/graphics/PointF;
    .registers 4

    .line 795
    new-instance v0, Landroid/graphics/PointF;

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 797
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackStartingVerticalOffset:I

    int-to-float p0, p0

    add-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private isStackPositionSet()Z
    .registers 1

    .line 801
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    return p0
.end method

.method static synthetic lambda$springFirstBubbleWithStackFollowing$2([Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    if-eqz p0, :cond_e

    .line 596
    array-length p1, p0

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_e

    aget-object p3, p0, p2

    .line 597
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method private moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .registers 6

    .line 753
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 754
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->x:F

    goto :goto_19

    .line 755
    :cond_d
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 756
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 759
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_47

    .line 760
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 761
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_47

    .line 762
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result p0

    add-float/2addr p2, p0

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    .line 764
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    :cond_47
    return-void
.end method

.method private moveStackToStartPosition()V
    .registers 3

    .line 730
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$XG5dbVvx6CTopXCQV48uovjmoQo;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$XG5dbVvx6CTopXCQV48uovjmoQo;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setStackPosition(Landroid/graphics/PointF;)V
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 771
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Setting position to (%f, %f)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bubbs.StackCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 775
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 777
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-array v0, v0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v2, v0, v3

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimations()V

    .line 782
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v0

    .line 784
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v1

    .line 786
    :goto_4d
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_74

    .line 787
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    mul-float v6, v5, v0

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 788
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_74
    return-void
.end method


# virtual methods
.method public animateForImeVisibility(Z)V
    .registers 10

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x1

    if-eqz p1, :cond_1a

    .line 411
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_24

    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_24

    .line 412
    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    goto :goto_22

    .line 416
    :cond_1a
    iget v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    cmpl-float p1, v0, v1

    if-lez p1, :cond_24

    .line 418
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    :goto_22
    move v6, v0

    goto :goto_25

    :cond_24
    move v6, v1

    :goto_25
    cmpl-float p1, v6, v1

    if-lez p1, :cond_3d

    .line 423
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 p1, 0x0

    .line 425
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const/high16 p1, 0x43480000  # 200.0f

    .line 426
    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v5, 0x0

    const/4 p1, 0x0

    new-array v7, p1, [Ljava/lang/Runnable;

    move-object v2, p0

    .line 423
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    :cond_3d
    return-void
.end method

.method public cancelStackPositionAnimations()V
    .registers 2

    .line 389
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 390
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 392
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 393
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    return-void
.end method

.method public demagnetizeFromDismissToPoint(FFFF)V
    .registers 14

    const/4 v6, 0x0

    .line 514
    iput-boolean v6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 517
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v7, 0x3f666666  # 0.9f

    .line 520
    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v8, 0x463b8000  # 12000.0f

    .line 521
    invoke-virtual {v2, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-array v5, v6, [Ljava/lang/Runnable;

    move-object v0, p0

    move v3, p3

    move v4, p1

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 524
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 527
    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 528
    invoke-virtual {v2, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-array v5, v6, [Ljava/lang/Runnable;

    move v3, p4

    move v4, p2

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "StackAnimationController state:"

    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isActive:             "

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  restingStackPos:      "

    .line 317
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_1f
    const-string p1, "null"

    :goto_21
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  currentStackPos:      "

    .line 319
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isMovingFromFlinging: "

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  withinDismiss:        "

    .line 321
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  firstBubbleSpringing: "

    .line 322
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public flingStackThenSpringToEdge(FFF)F
    .registers 15

    .line 230
    iget v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleIconBitmapSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v1, :cond_18

    move v1, v6

    goto :goto_19

    :cond_18
    move v1, v7

    :goto_19
    const v8, 0x443b8000  # 750.0f

    if-eqz v1, :cond_23

    cmpg-float v1, p2, v8

    if-gez v1, :cond_2c

    goto :goto_2a

    :cond_23
    const v1, -0x3bc48000  # -750.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2c

    :goto_2a
    move v1, v6

    goto :goto_2d

    :cond_2c
    move v1, v7

    .line 236
    :goto_2d
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v1, :cond_36

    .line 240
    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_38

    :cond_36
    iget v2, v2, Landroid/graphics/RectF;->right:F

    :goto_38
    move v9, v2

    .line 244
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz v2, :cond_87

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_44

    goto :goto_87

    :cond_44
    sub-float v2, v9, p1

    const v3, 0x4113d70a  # 9.24f

    mul-float/2addr v2, v3

    if-eqz v1, :cond_51

    .line 259
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_55

    .line 260
    :cond_51
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_55
    move v2, v0

    .line 262
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x400ccccd  # 2.2f

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 267
    invoke-virtual {v4, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v10, 0x3f59999a  # 0.85f

    .line 268
    invoke-virtual {v4, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 269
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v0, p0

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 271
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 276
    invoke-virtual {v4, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 277
    invoke-virtual {v4, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v5, 0x0

    move v2, p3

    .line 271
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 281
    iput-boolean v7, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 282
    iput-boolean v6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    :cond_87
    :goto_87
    return v9
.end method

.method protected flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V
    .registers 17

    move-object v7, p0

    move-object v8, p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Flinging %s."

    .line 337
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbs.StackCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    .line 341
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;->getValue(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F

    move-result v1

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    .line 344
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 345
    iget v3, v2, Landroid/graphics/RectF;->left:F

    goto :goto_32

    .line 346
    :cond_30
    iget v3, v2, Landroid/graphics/RectF;->top:F

    :goto_32
    move v5, v3

    .line 348
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 349
    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_40

    .line 350
    :cond_3e
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :goto_40
    move v6, v2

    .line 352
    new-instance v9, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v9, p0, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    move v0, p3

    .line 353
    invoke-virtual {v9, p3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move v0, p2

    .line 354
    invoke-virtual {v9, p2}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 363
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 364
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    new-instance v10, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$bZgezj9fblRl_isenTD4ApewvoU;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$bZgezj9fblRl_isenTD4ApewvoU;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V

    .line 366
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 378
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 379
    iget-object v0, v7, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method public getAllowableStackPositionRegion()Landroid/graphics/RectF;
    .registers 8

    .line 439
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    if-eqz v0, :cond_a5

    .line 442
    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    neg-int v2, v2

    .line 445
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 446
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    .line 447
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    goto :goto_25

    :cond_24
    move v4, v5

    .line 444
    :goto_25
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 449
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 450
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    add-int/2addr v2, v3

    .line 454
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 455
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 456
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    goto :goto_4d

    :cond_4c
    move v4, v5

    .line 453
    :goto_4d
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 459
    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    .line 463
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6b

    .line 464
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    int-to-float v4, v4

    goto :goto_6c

    :cond_6b
    move v4, v6

    .line 461
    :goto_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 466
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 467
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 470
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    const/4 v4, 0x1

    cmpl-float v4, p0, v4

    if-lez v4, :cond_8a

    int-to-float v3, v3

    add-float v6, p0, v3

    :cond_8a
    sub-float/2addr v2, v6

    .line 472
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    .line 473
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 474
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    .line 471
    :cond_9d
    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v2, p0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_a5
    return-object v1
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

    .line 610
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .registers 4

    .line 620
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 623
    :cond_11
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    if-eqz p0, :cond_18

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_18
    const/4 p0, -0x1

    return p0

    :cond_1a
    :goto_1a
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .registers 3

    .line 633
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 636
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    if-eqz p1, :cond_e

    return v0

    .line 640
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 641
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    neg-float p0, p0

    goto :goto_20

    :cond_1e
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    :goto_20
    return p0

    :cond_21
    return v0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 3

    .line 650
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const p2, 0x3f666666  # 0.9f

    .line 651
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 652
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    if-eqz p0, :cond_13

    const p0, 0x469c4000  # 20000.0f

    goto :goto_16

    :cond_13
    const p0, 0x463b8000  # 12000.0f

    :goto_16
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p1
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;
    .registers 4

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v1

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz v1, :cond_15

    .line 294
    iget p0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_17

    :cond_15
    iget p0, p0, Landroid/graphics/RectF;->right:F

    :goto_17
    iput p0, v0, Landroid/graphics/PointF;->x:F

    return-object v0
.end method

.method public implodeStack(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Runnable;

    const/high16 v3, 0x3f000000  # 0.5f

    .line 561
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v2, v0, [Ljava/lang/Runnable;

    .line 562
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v2, v0, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 563
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 v2, 0x3f800000  # 1.0f

    .line 564
    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const v2, 0x461c4000  # 10000.0f

    .line 565
    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$nsOO7KNkf7Bcvco8fAAwW0CqLEk;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$nsOO7KNkf7Bcvco8fAAwW0CqLEk;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Ljava/lang/Runnable;)V

    aput-object v3, v2, v0

    .line 566
    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method public isStackOnLeftSide()Z
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_24

    .line 197
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleIconBitmapSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 198
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    :goto_24
    return v1
.end method

.method public synthetic lambda$flingThenSpringFirstBubbleWithStackFollowing$0$StackAnimationController(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 16

    if-nez p7, :cond_2a

    .line 368
    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6}, Landroid/graphics/PointF;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    .line 369
    iget-object p6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    iget-object p7, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p6, p7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz p3, :cond_17

    .line 373
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_1f

    .line 374
    :cond_17
    invoke-static {p5, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :goto_1f
    move v4, p3

    const/4 p3, 0x0

    new-array v5, p3, [Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p9

    .line 371
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method

.method public synthetic lambda$implodeStack$1$StackAnimationController(Ljava/lang/Runnable;)V
    .registers 2

    .line 570
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 571
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    return-void
.end method

.method public synthetic lambda$moveStackToStartPosition$3$StackAnimationController()V
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_8

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 732
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    .line 736
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 740
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateInBubble(Landroid/view/View;I)V

    :cond_25
    return-void
.end method

.method public magnetToDismiss(FFFLjava/lang/Runnable;)V
    .registers 15

    const/4 v6, 0x1

    .line 537
    iput-boolean v6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    const/4 v7, 0x0

    .line 538
    iput-boolean v7, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 540
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v8, 0x3f400000  # 0.75f

    .line 543
    invoke-virtual {v2, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v9, 0x44bb8000  # 1500.0f

    .line 544
    invoke-virtual {v2, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 545
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v0, v3

    iget v4, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleIconBitmapSize:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v4, v0, v4

    new-array v5, v7, [Ljava/lang/Runnable;

    move-object v0, p0

    move v3, p1

    .line 540
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 547
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 550
    invoke-virtual {v2, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 551
    invoke-virtual {v2, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-array v5, v6, [Ljava/lang/Runnable;

    aput-object p4, v5, v7

    move v3, p2

    move v4, p3

    .line 547
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveFirstBubbleWithStackFollowing(FF)V
    .registers 4

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 175
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 176
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    return-void
.end method

.method public moveStackFromTouch(FF)V
    .registers 6

    .line 486
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-eqz v0, :cond_2f

    .line 487
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 488
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 489
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 490
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 493
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_29

    :cond_25
    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    goto :goto_2f

    .line 494
    :cond_29
    :goto_29
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 495
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 503
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    if-nez v0, :cond_3a

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(FF)V

    :cond_3a
    return-void
.end method

.method public moveStackToSimilarPositionAfterRotation(ZF)V
    .registers 6

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v0

    .line 305
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    if-eqz p1, :cond_e

    .line 307
    iget p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_10

    :cond_e
    iget p1, v0, Landroid/graphics/RectF;->right:F

    :goto_10
    mul-float/2addr v1, p2

    .line 308
    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    .line 310
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .registers 3

    .line 701
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 702
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    .line 703
    sget v0, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    .line 704
    sget v0, Lcom/android/systemui/R$dimen;->bubble_icon_bitmap_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleIconBitmapSize:I

    .line 705
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    .line 706
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offscreen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    .line 707
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_starting_offset_y:I

    .line 708
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackStartingVerticalOffset:I

    const v0, 0x105020f

    .line 710
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .registers 5

    .line 658
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    if-eqz v0, :cond_5

    return-void

    .line 662
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 664
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackToStartPosition()V

    goto :goto_23

    .line 665
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_23

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateInBubble(Landroid/view/View;I)V

    :cond_23
    :goto_23
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 6

    .line 675
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result p2

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x0

    .line 677
    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p3, v1, [Ljava/lang/Runnable;

    const v0, 0x3f933333  # 1.15f

    .line 678
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p3, v1, [Ljava/lang/Runnable;

    .line 679
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    const/high16 v0, 0x40800000  # 4.0f

    mul-float/2addr p2, v0

    sub-float/2addr p3, p2

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 680
    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 681
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 684
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4f

    .line 685
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    new-array p2, v1, [Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_51

    .line 688
    :cond_4f
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mWithinDismissTarget:Z

    :goto_51
    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .registers 4

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 695
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    :cond_b
    return-void
.end method

.method public setImeHeight(I)V
    .registers 2

    int-to-float p1, p1

    .line 398
    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    return-void
.end method

.method protected varargs springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V
    .registers 9
    .param p5  # [Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 582
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 587
    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 588
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Springing %s to final position %f."

    .line 586
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbs.StackCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    .line 591
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 593
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$utG_Ji6wVaLsAMlAinJOG0-4Hqc;

    invoke-direct {p2, p5}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$utG_Ji6wVaLsAMlAinJOG0-4Hqc;-><init>([Ljava/lang/Runnable;)V

    .line 594
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 601
    invoke-virtual {v1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 603
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 604
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {v1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public springStack(FF)V
    .registers 18

    .line 208
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v6, 0x443b8000  # 750.0f

    .line 210
    invoke-virtual {v2, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v7, 0x3f59999a  # 0.85f

    .line 211
    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v8, 0x0

    new-array v5, v8, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v4, p1

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 215
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v11, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v11}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 217
    invoke-virtual {v11, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 218
    invoke-virtual {v11, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-array v14, v8, [Ljava/lang/Runnable;

    const/4 v12, 0x0

    move-object v9, p0

    move/from16 v13, p2

    .line 215
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 718
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz p1, :cond_1e

    .line 719
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 720
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    const v0, 0x105020f

    .line 721
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    :cond_1e
    return-void
.end method
