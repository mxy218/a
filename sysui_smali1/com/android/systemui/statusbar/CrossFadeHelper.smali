.class public Lcom/android/systemui/statusbar/CrossFadeHelper;
.super Ljava/lang/Object;
.source "CrossFadeHelper.java"


# direct methods
.method public static fadeIn(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0xd2

    const/4 v2, 0x0

    .line 113
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;F)V
    .registers 3

    const/4 v0, 0x1

    .line 134
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;FZ)V
    .registers 5

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eqz p2, :cond_18

    .line 154
    invoke-static {p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->mapToFadeDuration(F)F

    move-result p1

    .line 156
    :cond_18
    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 158
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->updateLayerType(Landroid/view/View;F)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;JI)V
    .registers 6

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    :cond_16
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 125
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4f

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_4f
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;F)V
    .registers 3

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;FZ)V
    .registers 6

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x4

    if-nez v1, :cond_12

    .line 79
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 80
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_22

    .line 84
    invoke-static {p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->mapToFadeDuration(F)F

    move-result p1

    .line 86
    :cond_22
    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float/2addr v0, p1

    invoke-interface {p2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->updateLayerType(Landroid/view/View;F)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V
    .registers 7

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/CrossFadeHelper$1;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper$1;-><init>(Ljava/lang/Runnable;Landroid/view/View;)V

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_34
    return-void
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    const-wide/16 v0, 0xd2

    const/4 v2, 0x0

    .line 36
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    return-void
.end method

.method private static mapToFadeDuration(F)F
    .registers 2

    const v0, 0x3f155555

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 95
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static updateLayerType(Landroid/view/View;F)V
    .registers 5

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_27

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_27

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-eq p1, v2, :cond_41

    .line 101
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 102
    sget p1, Lcom/android/systemui/R$id;->cross_fade_layer_type_changed_tag:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_41

    .line 104
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-ne p1, v2, :cond_41

    sget p1, Lcom/android/systemui/R$id;->cross_fade_layer_type_changed_tag:I

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 106
    sget p1, Lcom/android/systemui/R$id;->cross_fade_layer_type_changed_tag:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_41

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_41
    :goto_41
    return-void
.end method
