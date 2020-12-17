.class public Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;
.super Ljava/lang/Object;
.source "ColorAnimUtils.java"


# direct methods
.method public static getColor(Landroid/animation/ValueAnimator;)I
    .registers 5

    const-string v0, "alpha"

    .line 30
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "red"

    .line 31
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "blue"

    .line 32
    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "green"

    .line 33
    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 34
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static ofColor(II)Landroid/animation/ValueAnimator;
    .registers 4

    .line 12
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;->ofColor(IIII)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofColor(IIII)Landroid/animation/ValueAnimator;
    .registers 10

    .line 20
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    const-string p3, "alpha"

    .line 21
    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v2, v1, [I

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, p2

    const-string v4, "red"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v4, v1, [I

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    aput v5, v4, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    aput v5, v4, p2

    const-string v5, "blue"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v1, [I

    .line 24
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    aput p0, v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p0

    aput p0, v5, p2

    const-string p0, "green"

    invoke-static {p0, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, p1, v3

    aput-object v2, p1, p2

    aput-object v4, p1, v1

    const/4 p2, 0x3

    aput-object p0, p1, p2

    .line 25
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method
