.class public Lcom/meizu/common/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/meizu/common/widget/Scroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 77
    sput-object v1, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 78
    sput-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v1, v3, :cond_ab

    int-to-float v3, v1

    const/high16 v5, 0x42c80000  # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_2f
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333  # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334  # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 98
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_a3

    .line 102
    sget-object v3, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000  # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    move v3, v4

    :goto_69
    sub-float v6, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 110
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_94

    .line 114
    sget-object v3, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    const v7, 0x3e333333  # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_94
    const v7, 0x3e333333  # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_9d

    move v3, v6

    goto :goto_9e

    :cond_9d
    move v2, v6

    :goto_9e
    const/high16 v7, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_69

    :cond_a3
    cmpl-float v7, v16, v5

    if-lez v7, :cond_a9

    move v3, v6

    goto :goto_2f

    :cond_a9
    move v0, v6

    goto :goto_2f

    .line 116
    :cond_ab
    sget-object v0, Lcom/meizu/common/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/meizu/common/widget/Scroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    const/high16 v0, 0x41000000  # 8.0f

    .line 119
    sput v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidScale:F

    .line 121
    sput v4, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    .line 122
    invoke-static {v4}, Lcom/meizu/common/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float/2addr v4, v0

    sput v4, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method static viscousFluid(F)F
    .registers 5

    .line 476
    sget v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_13

    neg-float v1, p0

    float-to-double v1, v1

    .line 478
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_25

    :cond_13
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 481
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    add-float p0, v0, v1

    .line 484
    :goto_25
    sget v0, Lcom/meizu/common/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v0

    return p0
.end method
