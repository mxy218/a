.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 22

    move/from16 v0, p1

    move/from16 v1, p2

    .line 166
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v1, :cond_91

    shl-int/lit8 v5, v4, 0x3

    const/16 v6, 0x8

    add-int/lit8 v7, p4, -0x8

    if-le v5, v7, :cond_1c

    move v5, v7

    :cond_1c
    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v0, :cond_8e

    shl-int/lit8 v8, v7, 0x3

    add-int/lit8 v9, p3, -0x8

    if-le v8, v9, :cond_26

    move v8, v9

    :cond_26
    mul-int v9, v5, p3

    add-int/2addr v9, v8

    const/16 v8, 0xff

    move v12, v8

    move v13, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_30
    const/16 v14, 0x18

    if-ge v9, v6, :cond_63

    move v15, v10

    const/4 v10, 0x0

    :goto_36
    if-ge v10, v6, :cond_47

    add-int v16, v13, v10

    .line 184
    aget-byte v3, p0, v16

    and-int/2addr v3, v8

    add-int/2addr v15, v3

    if-ge v3, v12, :cond_41

    move v12, v3

    :cond_41
    if-le v3, v11, :cond_44

    move v11, v3

    :cond_44
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    :cond_47
    sub-int v3, v11, v12

    if-le v3, v14, :cond_5d

    :cond_4b
    add-int/lit8 v9, v9, 0x1

    add-int v13, v13, p3

    if-ge v9, v6, :cond_5d

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v6, :cond_4b

    add-int v10, v13, v3

    .line 199
    aget-byte v10, p0, v10

    and-int/2addr v10, v8

    add-int/2addr v15, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_5d
    move v10, v15

    add-int/lit8 v9, v9, 0x1

    add-int v13, v13, p3

    goto :goto_30

    :cond_63
    shr-int/lit8 v3, v10, 0x6

    sub-int/2addr v11, v12

    if-gt v11, v14, :cond_87

    .line 214
    div-int/lit8 v3, v12, 0x2

    if-lez v4, :cond_87

    if-lez v7, :cond_87

    add-int/lit8 v8, v4, -0x1

    .line 224
    aget-object v9, v2, v8

    aget v9, v9, v7

    aget-object v10, v2, v4

    add-int/lit8 v11, v7, -0x1

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aget-object v8, v2, v8

    aget v8, v8, v11

    add-int/2addr v9, v8

    div-int/lit8 v8, v9, 0x4

    if-ge v12, v8, :cond_87

    move v3, v8

    .line 231
    :cond_87
    aget-object v8, v2, v4

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_91
    return-object v2
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 22

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_5a

    shl-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, p4, -0x8

    if-le v4, v5, :cond_f

    move v4, v5

    :cond_f
    move v5, v2

    :goto_10
    if-ge v5, v0, :cond_57

    shl-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, p3, -0x8

    if-le v6, v7, :cond_19

    goto :goto_1a

    :cond_19
    move v7, v6

    :goto_1a
    add-int/lit8 v6, v0, -0x3

    const/4 v8, 0x2

    .line 120
    invoke-static {v5, v8, v6}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v6

    add-int/lit8 v9, v1, -0x3

    .line 121
    invoke-static {v3, v8, v9}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v9

    const/4 v10, -0x2

    move v11, v2

    :goto_29
    if-gt v10, v8, :cond_49

    add-int v12, v9, v10

    .line 124
    aget-object v12, p5, v12

    add-int/lit8 v13, v6, -0x2

    .line 125
    aget v13, v12, v13

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    aget v14, v12, v6

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    add-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 127
    :cond_49
    div-int/lit8 v9, v11, 0x19

    move-object v6, p0

    move v8, v4

    move/from16 v10, p3

    move-object/from16 v11, p6

    .line 128
    invoke-static/range {v6 .. v11}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5a
    return-void
.end method

.method private static cap(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 13

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_6
    const/16 v3, 0x8

    if-ge v0, v3, :cond_23

    move v4, v1

    :goto_b
    if-ge v4, v3, :cond_1f

    add-int v5, v2, v4

    .line 149
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_1c

    add-int v5, p1, v4

    add-int v6, p2, v0

    .line 150
    invoke-virtual {p5, v5, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, p4

    goto :goto_6

    :cond_23
    return-void
.end method


# virtual methods
.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_5

    return-object v0

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v4

    .line 68
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v5

    const/16 v1, 0x28

    if-lt v4, v1, :cond_3d

    if-lt v5, v1, :cond_3d

    .line 70
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v2, v4, 0x7

    if-eqz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    move v2, v0

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v3, v5, 0x7

    if-eqz v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    move v3, v0

    .line 79
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v6

    .line 81
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v7, v0

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_43

    .line 86
    :cond_3d
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_43
    iget-object p0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method
