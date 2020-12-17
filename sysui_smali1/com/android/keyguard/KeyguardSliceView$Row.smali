.class public Lcom/android/keyguard/KeyguardSliceView$Row;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private mDarkAmount:F

.field private final mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 437
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 441
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 445
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 446
    new-instance p1, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 9

    .line 451
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 454
    fill-array-data v3, :array_8e

    const-string v4, "left"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v0, [I

    .line 455
    fill-array-data v4, :array_96

    const-string v5, "right"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v4, 0x0

    .line 456
    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 458
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v6, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 459
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v3, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 460
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v7, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6, v7}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v7, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v3, v7}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 464
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v6, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 466
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    new-array v1, v0, [F

    .line 469
    fill-array-data v1, :array_9e

    const-string v2, "alpha"

    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 470
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 471
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    .line 473
    fill-array-data v0, :array_a6

    invoke-static {v4, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 476
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x89

    invoke-virtual {v1, v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 477
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 479
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v6}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-void

    :array_8e
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_9e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_a6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 491
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1d

    .line 493
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 494
    instance-of v4, v3, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    if-eqz v4, :cond_1a

    .line 495
    check-cast v3, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    div-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 498
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 484
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_8

    .line 485
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setDarkAmount(F)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v3

    .line 503
    :goto_a
    iget v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    if-ne v1, v2, :cond_15

    return-void

    .line 507
    :cond_15
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    if-eqz v1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1d

    .line 508
    :cond_1b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;

    :goto_1d
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
