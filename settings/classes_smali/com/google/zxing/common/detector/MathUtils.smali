.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static distance(FFFF)F
    .registers 4

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distance(IIII)F
    .registers 4

    sub-int/2addr p0, p2

    sub-int/2addr p1, p3

    mul-int/2addr p0, p0

    mul-int/2addr p1, p1

    add-int/2addr p0, p1

    int-to-double p0, p0

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static round(F)I
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_8

    const/high16 v0, -0x41000000  # -0.5f

    goto :goto_a

    :cond_8
    const/high16 v0, 0x3f000000  # 0.5f

    :goto_a
    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
