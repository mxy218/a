.class public final Lcom/android/systemui/doze/util/BurnInHelperKt;
.super Ljava/lang/Object;
.source "BurnInHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u001a \u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001XT¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001XT¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001XT¢\u0006\u0002\n\u0000¨\u0006\u000c"
    }
    d2 = {
        "BURN_IN_PREVENTION_PERIOD_X",
        "",
        "BURN_IN_PREVENTION_PERIOD_Y",
        "MILLIS_PER_MINUTES",
        "getBurnInOffset",
        "",
        "amplitude",
        "xAxis",
        "",
        "zigzag",
        "x",
        "period",
        "name"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final getBurnInOffset(IZ)I
    .registers 4

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x476a6000  # 60000.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    if-eqz p1, :cond_f

    const/high16 p1, 0x42a60000  # 83.0f

    goto :goto_12

    :cond_f
    const p1, 0x44024000  # 521.0f

    :goto_12
    invoke-static {v0, p0, p1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->zigzag(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static final zigzag(FFF)F
    .registers 4

    rem-float/2addr p0, p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    div-float/2addr p0, p2

    const/4 p2, 0x1

    int-to-float p2, p2

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_c

    goto :goto_e

    :cond_c
    sub-float p0, v0, p0

    :goto_e
    const/4 p2, 0x0

    .line 50
    invoke-static {p2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
