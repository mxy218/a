.class public Lcom/android/systemui/classifier/EndPointRatioEvaluator;
.super Ljava/lang/Object;
.source "EndPointRatioEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .registers 6

    float-to-double v0, p0

    const-wide v2, 0x3feb333333333333L  # 0.85

    cmpg-double p0, v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez p0, :cond_e

    move p0, v2

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide/high16 v3, 0x3fe8000000000000L  # 0.75

    cmpg-double v3, v0, v3

    if-gez v3, :cond_16

    add-float/2addr p0, v2

    :cond_16
    const-wide v3, 0x3fe4cccccccccccdL  # 0.65

    cmpg-double v3, v0, v3

    if-gez v3, :cond_20

    add-float/2addr p0, v2

    :cond_20
    const-wide v3, 0x3fe199999999999aL  # 0.55

    cmpg-double v3, v0, v3

    if-gez v3, :cond_2a

    add-float/2addr p0, v2

    :cond_2a
    const-wide v3, 0x3fdccccccccccccdL  # 0.45

    cmpg-double v3, v0, v3

    if-gez v3, :cond_34

    add-float/2addr p0, v2

    :cond_34
    const-wide v3, 0x3fd6666666666666L  # 0.35

    cmpg-double v0, v0, v3

    if-gez v0, :cond_3e

    add-float/2addr p0, v2

    :cond_3e
    return p0
.end method
