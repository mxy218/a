.class public Lcom/android/systemui/classifier/AnglesVarianceEvaluator;
.super Ljava/lang/Object;
.source "AnglesVarianceEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .registers 6

    float-to-double p0, p0

    const-wide v0, 0x3fc999999999999aL  # 0.2

    cmpl-double v0, p0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-wide v2, 0x3fd999999999999aL  # 0.4

    cmpl-double v2, p0, v2

    if-lez v2, :cond_19

    add-float/2addr v0, v1

    :cond_19
    const-wide v2, 0x3fe999999999999aL  # 0.8

    cmpl-double v2, p0, v2

    if-lez v2, :cond_23

    add-float/2addr v0, v1

    :cond_23
    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    cmpl-double p0, p0, v2

    if-lez p0, :cond_2a

    add-float/2addr v0, v1

    :cond_2a
    return v0
.end method
