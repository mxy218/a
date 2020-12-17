.class public Lcom/android/systemui/classifier/EndPointLengthEvaluator;
.super Ljava/lang/Object;
.source "EndPointLengthEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .registers 8

    float-to-double v0, p0

    const-wide v2, 0x3fa999999999999aL  # 0.05

    cmpg-double p0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    const/4 v4, 0x0

    if-gez p0, :cond_10

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_10
    const-wide v5, 0x3fb999999999999aL  # 0.1

    cmpg-double p0, v0, v5

    if-gez p0, :cond_1c

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_1c
    const-wide v5, 0x3fc999999999999aL  # 0.2

    cmpg-double p0, v0, v5

    if-gez p0, :cond_28

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_28
    const-wide v5, 0x3fd3333333333333L  # 0.3

    cmpg-double p0, v0, v5

    if-gez p0, :cond_34

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_34
    const-wide v5, 0x3fd999999999999aL  # 0.4

    cmpg-double p0, v0, v5

    if-gez p0, :cond_40

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_40
    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    cmpg-double p0, v0, v5

    if-gez p0, :cond_49

    float-to-double v0, v4

    add-double/2addr v0, v2

    double-to-float v4, v0

    :cond_49
    return v4
.end method
