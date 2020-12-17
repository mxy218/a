.class public Lcom/android/systemui/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .registers 4

    if-nez p1, :cond_5

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_5
    const p1, 0x3dcccccd  # 0.1f

    :goto_8
    cmpl-float p0, p0, p1

    const/4 p1, 0x0

    if-ltz p0, :cond_12

    float-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    add-double/2addr p0, v0

    double-to-float p1, p0

    :cond_12
    return p1
.end method
