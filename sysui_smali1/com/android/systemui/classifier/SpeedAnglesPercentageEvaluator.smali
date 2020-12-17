.class public Lcom/android/systemui/classifier/SpeedAnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "SpeedAnglesPercentageEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .registers 6

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double p0, v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez p0, :cond_b

    move p0, v2

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const-wide v3, 0x3feccccccccccccdL  # 0.9

    cmpg-double v3, v0, v3

    if-gez v3, :cond_16

    add-float/2addr p0, v2

    :cond_16
    const-wide v3, 0x3fe6666666666666L  # 0.7

    cmpg-double v0, v0, v3

    if-gez v0, :cond_20

    add-float/2addr p0, v2

    :cond_20
    return p0
.end method
