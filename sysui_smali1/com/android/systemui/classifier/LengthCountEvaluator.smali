.class public Lcom/android/systemui/classifier/LengthCountEvaluator;
.super Ljava/lang/Object;
.source "LengthCountEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .registers 6

    float-to-double v0, p0

    const-wide v2, 0x3fb70a3d70a3d70aL  # 0.09

    cmpg-double p0, v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez p0, :cond_e

    move p0, v2

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide v3, 0x3fa999999999999aL  # 0.05

    cmpg-double v3, v0, v3

    if-gez v3, :cond_19

    add-float/2addr p0, v2

    :cond_19
    const-wide v3, 0x3f947ae147ae147bL  # 0.02

    cmpg-double v3, v0, v3

    if-gez v3, :cond_23

    add-float/2addr p0, v2

    :cond_23
    const-wide v3, 0x3fe3333333333333L  # 0.6

    cmpl-double v3, v0, v3

    if-lez v3, :cond_2d

    add-float/2addr p0, v2

    :cond_2d
    const-wide v3, 0x3feccccccccccccdL  # 0.9

    cmpl-double v3, v0, v3

    if-lez v3, :cond_37

    add-float/2addr p0, v2

    :cond_37
    const-wide v3, 0x3ff3333333333333L  # 1.2

    cmpl-double v0, v0, v3

    if-lez v0, :cond_41

    add-float/2addr p0, v2

    :cond_41
    return p0
.end method
