.class public Lcom/flyme/systemui/qs/SwapAnimationController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwapAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;,
        Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
    }
.end annotation


# instance fields
.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mFirstAnimator:Landroid/animation/ValueAnimator;

.field private mFirstView:Landroid/view/View;

.field private mFirstViewX:Landroid/animation/PropertyValuesHolder;

.field private mFirstViewY:Landroid/animation/PropertyValuesHolder;

.field private mSecondAnimator:Landroid/animation/ValueAnimator;

.field private mSecondView:Landroid/view/View;

.field private mSecondViewX:Landroid/animation/PropertyValuesHolder;

.field private mSecondViewY:Landroid/animation/PropertyValuesHolder;

.field private mSwapAnimator:Landroid/animation/Animator;

.field private mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 45
    iput-wide v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    return-void
.end method

.method private createAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 12

    .line 79
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    .line 80
    invoke-direct {p0, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 81
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 82
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    const/4 p1, 0x2

    new-array v1, p1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v4, v0

    const/4 v5, 0x1

    aput v4, v1, v5

    const-string/jumbo v4, "translationX"

    .line 84
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    new-array v6, p1, [F

    aput v2, v6, v3

    int-to-float v7, p2

    aput v7, v6, v5

    const-string/jumbo v7, "translationY"

    .line 85
    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    new-array v8, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v3

    aput-object v6, v8, v5

    .line 86
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    .line 87
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, p1, [F

    aput v2, v6, v3

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v6, v5

    .line 90
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    new-array v4, p1, [F

    aput v2, v4, v3

    neg-int p2, p2

    int-to-float p2, p2

    aput p2, v4, v5

    .line 91
    invoke-static {v7, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    new-array v2, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    aput-object p2, v2, v5

    .line 92
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    .line 93
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v1, p1, v3

    aput-object p2, p1, v5

    .line 97
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 98
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    invoke-interface {p0, p1}, Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;->getSwappableChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private updateAnimatorValues(Landroid/view/View;Landroid/view/View;)V
    .registers 12

    .line 103
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    .line 104
    invoke-direct {p0, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 105
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 106
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    .line 108
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v5, v0

    const/4 v6, 0x1

    aput v5, v2, v6

    invoke-virtual {p1, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 109
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    aput v3, v2, v4

    int-to-float v5, p2

    aput v5, v2, v6

    invoke-virtual {p1, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 110
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    iget-wide v7, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    aput v3, v2, v4

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v2, v6

    invoke-virtual {p1, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 113
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    new-array v0, v1, [F

    aput v3, v0, v4

    neg-int p2, p2

    int-to-float p2, p2

    aput p2, v0, v6

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 114
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    if-nez v0, :cond_f

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    .line 146
    :cond_f
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAnimator()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    .line 72
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 151
    iget-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    if-eqz p1, :cond_22

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;

    .line 154
    iget-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    iget-object v2, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;->onSwapEnd(Landroid/view/View;Landroid/view/View;)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "translationY"

    const-string/jumbo v2, "translationX"

    if-ne p1, v0, :cond_29

    .line 162
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4b

    .line 164
    :cond_29
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_4b

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 166
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setDuration(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    .line 133
    iget-wide v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_e

    .line 134
    iput-wide p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    :cond_e
    return-void

    .line 131
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid argument:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swap(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/SwapAnimationController;->cancelAnimator()V

    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    .line 60
    iput-object p2, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_11

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->createAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    .line 66
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->updateAnimatorValues(Landroid/view/View;Landroid/view/View;)V

    .line 67
    iget-object p0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
