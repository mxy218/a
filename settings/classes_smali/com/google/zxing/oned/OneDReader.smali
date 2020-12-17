.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    .line 107
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    shr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1f

    .line 110
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move v7, v6

    goto :goto_20

    :cond_1f
    move v7, v5

    :goto_20
    if-eqz v7, :cond_25

    const/16 v8, 0x8

    goto :goto_26

    :cond_25
    const/4 v8, 0x5

    :goto_26
    shr-int v8, v2, v8

    .line 111
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v7, :cond_30

    move v7, v2

    goto :goto_32

    :cond_30
    const/16 v7, 0xf

    :goto_32
    move-object v9, v0

    move v0, v5

    :goto_34
    if-ge v0, v7, :cond_e9

    add-int/lit8 v10, v0, 0x1

    .line 122
    div-int/lit8 v11, v10, 0x2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_40

    move v0, v6

    goto :goto_41

    :cond_40
    move v0, v5

    :goto_41
    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    neg-int v11, v11

    :goto_45
    mul-int/2addr v11, v8

    add-int/2addr v11, v4

    if-ltz v11, :cond_e9

    if-ge v11, v2, :cond_e9

    move-object/from16 v0, p1

    .line 132
    :try_start_4d
    invoke-virtual {v0, v11, v3}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3
    :try_end_51
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4d .. :try_end_51} :catch_dd

    move-object v12, v9

    move v9, v5

    :goto_53
    const/4 v13, 0x2

    if-ge v9, v13, :cond_d6

    if-ne v9, v6, :cond_75

    .line 141
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz v12, :cond_75

    .line 146
    sget-object v13, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 147
    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    invoke-interface {v13, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v12, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v13

    :cond_75
    move-object/from16 v13, p0

    .line 155
    :try_start_77
    invoke-virtual {v13, v11, v3, v12}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v14

    if-ne v9, v6, :cond_c8

    .line 159
    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;
    :try_end_7f
    .catch Lcom/google/zxing/ReaderException; {:try_start_77 .. :try_end_7f} :catch_c9

    const/16 v16, 0xb4

    :try_start_81
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v15, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v14}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz v6, :cond_c8

    .line 163
    new-instance v15, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v1

    aget-object v16, v6, v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16
    :try_end_97
    .catch Lcom/google/zxing/ReaderException; {:try_start_81 .. :try_end_97} :catch_c4

    sub-float v16, v0, v16

    const/high16 v17, 0x3f800000  # 1.0f

    move/from16 v18, v1

    sub-float v1, v16, v17

    :try_start_9f
    aget-object v16, v6, v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-direct {v15, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v15, v6, v1

    .line 164
    new-instance v5, Lcom/google/zxing/ResultPoint;
    :try_end_ad
    .catch Lcom/google/zxing/ReaderException; {:try_start_9f .. :try_end_ad} :catch_c6

    const/4 v15, 0x1

    :try_start_ae
    aget-object v16, v6, v15

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    sub-float v0, v0, v16

    sub-float v0, v0, v17

    aget-object v16, v6, v15

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v6, v15
    :try_end_c3
    .catch Lcom/google/zxing/ReaderException; {:try_start_ae .. :try_end_c3} :catch_cc

    goto :goto_c8

    :catch_c4
    move/from16 v18, v1

    :catch_c6
    const/4 v15, 0x1

    goto :goto_cc

    :cond_c8
    :goto_c8
    return-object v14

    :catch_c9
    move/from16 v18, v1

    move v15, v6

    :catch_cc
    :goto_cc
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move v6, v15

    move/from16 v1, v18

    const/4 v5, 0x0

    goto/16 :goto_53

    :cond_d6
    move-object/from16 v13, p0

    move/from16 v18, v1

    move v15, v6

    move-object v9, v12

    goto :goto_e2

    :catch_dd
    move-object/from16 v13, p0

    move/from16 v18, v1

    move v15, v6

    :goto_e2
    move v0, v10

    move v6, v15

    move/from16 v1, v18

    const/4 v5, 0x0

    goto/16 :goto_34

    .line 174
    :cond_e9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static patternMatchVariance([I[IF)F
    .registers 12

    .line 253
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_5
    if-ge v2, v0, :cond_10

    .line 257
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 258
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/high16 v2, 0x7f800000  # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_15

    return v2

    :cond_15
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float/2addr p2, v4

    const/4 v5, 0x0

    :goto_1b
    if-ge v1, v0, :cond_35

    .line 271
    aget v6, p0, v1

    .line 272
    aget v7, p1, v1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2a

    sub-float/2addr v6, v7

    goto :goto_2c

    :cond_2a
    sub-float v6, v7, v6

    :goto_2c
    cmpl-float v7, v6, p2

    if-lez v7, :cond_31

    return v2

    :cond_31
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_35
    div-float/2addr v5, v3

    return v5
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    array-length v0, p2

    const/4 v1, 0x0

    .line 194
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_3e

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move v5, v1

    :goto_12
    if-ge p1, v2, :cond_30

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_21

    .line 204
    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_2d

    :cond_21
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_26

    goto :goto_30

    .line 210
    :cond_26
    aput v4, p2, v5

    if-nez v3, :cond_2c

    move v3, v4

    goto :goto_2d

    :cond_2c
    move v3, v1

    :goto_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_30
    :goto_30
    if-eq v5, v0, :cond_3d

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_38

    if-ne p1, v2, :cond_38

    goto :goto_3d

    .line 219
    :cond_38
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_3d
    :goto_3d
    return-void

    .line 197
    :cond_3e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 226
    array-length v0, p2

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    :cond_5
    :goto_5
    const/4 v2, 0x1

    if-lez p1, :cond_1a

    if-ltz v0, :cond_1a

    add-int/lit8 p1, p1, -0x1

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eq v3, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_5

    :cond_18
    const/4 v1, 0x0

    goto :goto_5

    :cond_1a
    if-gez v0, :cond_21

    add-int/2addr p1, v2

    .line 237
    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void

    .line 235
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_4
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    if-eqz p2, :cond_12

    .line 56
    sget-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    if-eqz p2, :cond_20

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    const/4 p0, 0x0

    throw p0

    .line 79
    :cond_20
    throw p0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .registers 1

    return-void
.end method
