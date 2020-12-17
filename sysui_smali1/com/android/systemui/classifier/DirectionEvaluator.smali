.class public Lcom/android/systemui/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method public static evaluate(FFI)F
    .registers 8

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-wide/16 v2, 0x0

    const/high16 v4, 0x40b00000  # 5.5f

    if-eqz p2, :cond_4e

    if-eq p2, v1, :cond_4b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4e

    const/4 v1, 0x4

    if-eq p2, v1, :cond_43

    const/4 v1, 0x5

    if-eq p2, v1, :cond_38

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2d

    const/16 p0, 0x8

    if-eq p2, p0, :cond_43

    const/16 p0, 0x9

    if-eq p2, p0, :cond_4e

    goto :goto_56

    :cond_2d
    float-to-double v0, p0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_56

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-lez p0, :cond_56

    return v4

    :cond_38
    float-to-double v0, p0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_56

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-lez p0, :cond_56

    return v4

    :cond_43
    if-eqz v0, :cond_4a

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-ltz p0, :cond_56

    :cond_4a
    return v4

    :cond_4b
    if-eqz v0, :cond_56

    return v4

    :cond_4e
    if-eqz v0, :cond_58

    float-to-double p0, p1

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_56

    goto :goto_58

    :cond_56
    :goto_56
    const/4 p0, 0x0

    return p0

    :cond_58
    :goto_58
    return v4
.end method
