.class public Lcom/android/launcher3/icons/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# instance fields
.field private final NUM_SAMPLES:I

.field private final mTmpHsv:[F

.field private final mTmpHueScoreHistogram:[F

.field private final mTmpPixels:[I

.field private final mTmpRgbScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 28
    iput v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->NUM_SAMPLES:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 29
    iput-object v1, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/16 v1, 0x168

    new-array v1, v1, [F

    .line 30
    iput-object v1, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public findDominantColorByHue(Landroid/graphics/Bitmap;)I
    .registers 3

    const/16 v0, 0x14

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v4, v2, v3

    .line 49
    div-int/2addr v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_19

    move v4, v5

    .line 55
    :cond_19
    iget-object v6, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/4 v7, 0x0

    .line 56
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 61
    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    const/4 v7, -0x1

    .line 65
    iget-object v9, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    const/4 v10, 0x0

    .line 66
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    move v12, v7

    move v7, v10

    move v13, v7

    const/high16 v14, -0x40800000  # -1.0f

    :goto_30
    const/high16 v16, -0x1000000

    if-ge v7, v2, :cond_83

    move/from16 v17, v14

    move v14, v13

    move v13, v12

    move v12, v10

    :goto_39
    if-ge v12, v3, :cond_79

    move-object/from16 v11, p1

    .line 71
    invoke-virtual {v11, v12, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    shr-int/lit8 v15, v19, 0x18

    and-int/lit16 v15, v15, 0xff

    const/16 v5, 0x80

    if-ge v15, v5, :cond_4a

    goto :goto_75

    :cond_4a
    or-int v5, v19, v16

    .line 79
    invoke-static {v5, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 81
    aget v15, v6, v10

    float-to-int v15, v15

    if-ltz v15, :cond_75

    .line 82
    array-length v10, v8

    if-lt v15, v10, :cond_58

    goto :goto_75

    :cond_58
    if-ge v14, v1, :cond_5f

    add-int/lit8 v10, v14, 0x1

    .line 87
    aput v5, v9, v14

    move v14, v10

    :cond_5f
    const/4 v5, 0x1

    .line 89
    aget v10, v6, v5

    const/4 v5, 0x2

    aget v20, v6, v5

    mul-float v10, v10, v20

    .line 90
    aget v5, v8, v15

    add-float/2addr v5, v10

    aput v5, v8, v15

    .line 91
    aget v5, v8, v15

    cmpl-float v5, v5, v17

    if-lez v5, :cond_75

    .line 92
    aget v17, v8, v15

    move v13, v15

    :cond_75
    :goto_75
    add-int/2addr v12, v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_39

    :cond_79
    move-object/from16 v11, p1

    add-int/2addr v7, v4

    move v12, v13

    move v13, v14

    move/from16 v14, v17

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_30

    .line 98
    :cond_83
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    const/high16 v18, -0x40800000  # -1.0f

    :goto_8b
    if-ge v1, v13, :cond_cc

    .line 106
    aget v2, v9, v1

    .line 107
    invoke-static {v2, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x0

    .line 108
    aget v4, v6, v3

    float-to-int v4, v4

    if-ne v4, v12, :cond_c7

    const/4 v4, 0x1

    .line 110
    aget v5, v6, v4

    const/4 v7, 0x2

    .line 111
    aget v8, v6, v7

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    const v11, 0x461c4000  # 10000.0f

    mul-float/2addr v11, v8

    float-to-int v11, v11

    add-int/2addr v10, v11

    mul-float/2addr v5, v8

    .line 115
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-nez v8, :cond_b2

    goto :goto_b7

    .line 116
    :cond_b2
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v5, v8

    .line 117
    :goto_b7
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v8, v5, v18

    if-lez v8, :cond_c9

    move/from16 v16, v2

    move/from16 v18, v5

    goto :goto_c9

    :cond_c7
    const/4 v4, 0x1

    const/4 v7, 0x2

    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_cc
    return v16
.end method
