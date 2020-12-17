.class public Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;
.super Landroid/widget/FrameLayout;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;,
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;,
        Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
    }
.end annotation


# instance fields
.field protected mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mEndActionForProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 303
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 5

    .line 482
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz p3, :cond_26

    if-nez p4, :cond_26

    .line 487
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_21

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 488
    invoke-direct {p0, p4, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V

    goto :goto_11

    .line 491
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildAdded(Landroid/view/View;I)V

    :cond_26
    return-void
.end method

.method private getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 3

    .line 501
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method private getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 3

    .line 507
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method protected static getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;
    .registers 2

    .line 460
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "TRANSLATION_X"

    return-object p0

    .line 462
    :cond_b
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "TRANSLATION_Y"

    return-object p0

    .line 464
    :cond_16
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SCALE_X"

    return-object p0

    .line 466
    :cond_21
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "SCALE_Y"

    return-object p0

    .line 468
    :cond_2c
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "ALPHA"

    return-object p0

    :cond_37
    const-string p0, "Unknown animation property."

    return-object p0
.end method

.method private getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I
    .registers 2

    .line 548
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 549
    sget p0, Lcom/android/systemui/R$id;->translation_x_dynamicanimation_tag:I

    return p0

    .line 550
    :cond_b
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 551
    sget p0, Lcom/android/systemui/R$id;->translation_y_dynamicanimation_tag:I

    return p0

    .line 552
    :cond_16
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 553
    sget p0, Lcom/android/systemui/R$id;->scale_x_dynamicanimation_tag:I

    return p0

    .line 554
    :cond_21
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 555
    sget p0, Lcom/android/systemui/R$id;->scale_y_dynamicanimation_tag:I

    return p0

    .line 556
    :cond_2c
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 557
    sget p0, Lcom/android/systemui/R$id;->alpha_dynamicanimation_tag:I

    return p0

    :cond_37
    const/4 p0, -0x1

    return p0
.end method

.method private getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 512
    sget p0, Lcom/android/systemui/R$id;->target_animator_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V
    .registers 5

    .line 525
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 526
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$zwbjiGEsnfRdNGFmqcdzTxp4TUg;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$zwbjiGEsnfRdNGFmqcdzTxp4TUg;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 542
    new-instance v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 543
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    invoke-virtual {p2, p0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setUpAnimationsForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .registers 4

    const/4 v0, 0x0

    .line 517
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 518
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public varargs arePropertiesAnimating([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 371
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 372
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return v0
.end method

.method public varargs arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z
    .registers 10

    .line 383
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 384
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_3b

    aget-object v4, p2, v3

    .line 385
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_19

    .line 386
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_19

    return v6

    .line 393
    :cond_19
    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v4, v6

    :goto_2d
    if-eqz v4, :cond_38

    if-eqz v0, :cond_38

    .line 396
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_38

    return v6

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_3b
    return v2
.end method

.method protected canReceivePointerEvents()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public cancelAllAnimations()V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-nez v0, :cond_5

    return-void

    .line 411
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    return-void
.end method

.method public varargs cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .registers 7

    .line 416
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 420
    :goto_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 421
    array-length v2, p1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1f

    aget-object v4, p1, v3

    .line 422
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 424
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method public cancelAnimationsOnView(Landroid/view/View;)V
    .registers 4

    .line 434
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getTargetAnimatorFromView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 436
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 440
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 441
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_13

    :cond_27
    return-void
.end method

.method protected isActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)Z
    .registers 2

    .line 446
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected isFirstChildXLeftOfCenter(F)Z
    .registers 4

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    .line 452
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public synthetic lambda$removeView$0$PhysicsAnimationLayout(Landroid/view/View;)V
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpAnimationForChild$1$PhysicsAnimationLayout(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 6

    .line 527
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 528
    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I

    move-result p3

    const/4 p5, -0x1

    if-eq p3, p5, :cond_24

    if-gez p1, :cond_10

    goto :goto_24

    .line 534
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result p1

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p5

    if-ge p3, p5, :cond_24

    .line 536
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getAnimationAtIndex(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    add-float/2addr p4, p1

    .line 537
    invoke-virtual {p0, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_24
    :goto_24
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz v0, :cond_19

    .line 331
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 335
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addTransientView(Landroid/view/View;I)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    new-instance v2, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$VGQ81KsCYiJ-C0alb-wfA2McXCU;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_1c

    .line 348
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_1c
    return-void
.end method

.method public removeViewAt(I)V
    .registers 2

    .line 354
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public reorderView(Landroid/view/View;I)V
    .registers 6

    .line 359
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-eqz p0, :cond_16

    .line 365
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->onChildReordered(Landroid/view/View;II)V

    :cond_16
    return-void
.end method

.method public setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V
    .registers 3

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 314
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 315
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V

    .line 318
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 319
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setUpAnimationsForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    goto :goto_19

    :cond_29
    return-void
.end method
