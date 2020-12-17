.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 p2, p2, 0x2

    sub-int p1, p3, p2

    .line 62
    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 63
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int p1, p4, p2

    .line 64
    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 65
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz p1, :cond_36

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz p1, :cond_36

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget p2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge p1, p2, :cond_36

    iget p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge p1, p0, :cond_36

    return-void

    .line 67
    :cond_36
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 15

    .line 290
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 291
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    .line 292
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 293
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    .line 294
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 295
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p3

    .line 296
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 297
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    .line 299
    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float p0, p0

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr p0, v4

    cmpg-float p0, v0, p0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/high16 v9, 0x3f800000  # 1.0f

    if-gez p0, :cond_58

    new-array p0, v8, [Lcom/google/zxing/ResultPoint;

    .line 300
    new-instance v8, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v3, v9

    add-float/2addr p4, v9

    invoke-direct {v8, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, p0, v7

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v9

    add-float/2addr p2, v9

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, p0, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v9

    sub-float/2addr p3, v9

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v9

    sub-float/2addr p1, v9

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v4

    return-object p0

    :cond_58
    new-array p0, v8, [Lcom/google/zxing/ResultPoint;

    .line 306
    new-instance v8, Lcom/google/zxing/ResultPoint;

    add-float/2addr v3, v9

    add-float/2addr p4, v9

    invoke-direct {v8, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, p0, v7

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v9

    sub-float/2addr p2, v9

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, p0, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v9

    add-float/2addr p3, v9

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v9

    sub-float/2addr p1, v9

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v4

    return-object p0
.end method

.method private containsBlackPoint(IIIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p4, :cond_11

    :goto_3
    if-gt p1, p2, :cond_1f

    .line 327
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_e

    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    :goto_11
    if-gt p1, p2, :cond_1f

    .line 333
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .registers 10

    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_31

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 258
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    .line 259
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 260
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 261
    new-instance p0, Lcom/google/zxing/ResultPoint;

    int-to-float p1, v3

    int-to-float p2, v2

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v0

    move v6, v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v0, v5

    :goto_11
    if-eqz v0, :cond_8b

    move v12, v4

    move v0, v5

    :cond_15
    :goto_15
    if-nez v0, :cond_19

    if-nez v6, :cond_2d

    .line 108
    :cond_19
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v0, :cond_2d

    .line 109
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v1, v1, 0x1

    move v6, v5

    move v12, v6

    goto :goto_15

    :cond_28
    if-nez v6, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 119
    :cond_2d
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v0, :cond_34

    :goto_31
    move v4, v5

    goto/16 :goto_8b

    :cond_34
    move v0, v5

    :cond_35
    :goto_35
    if-nez v0, :cond_39

    if-nez v8, :cond_4d

    .line 128
    :cond_39
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v3, v0, :cond_4d

    .line 129
    invoke-direct {p0, v7, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_48

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    move v12, v8

    goto :goto_35

    :cond_48
    if-nez v8, :cond_35

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 139
    :cond_4d
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v0, :cond_52

    goto :goto_31

    :cond_52
    move v0, v5

    :cond_53
    :goto_53
    if-nez v0, :cond_57

    if-nez v9, :cond_69

    :cond_57
    if-ltz v7, :cond_69

    .line 149
    invoke-direct {p0, v2, v3, v7, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_64

    add-int/lit8 v7, v7, -0x1

    move v9, v5

    move v12, v9

    goto :goto_53

    :cond_64
    if-nez v9, :cond_53

    add-int/lit8 v7, v7, -0x1

    goto :goto_53

    :cond_69
    if-gez v7, :cond_6c

    goto :goto_31

    :cond_6c
    move v0, v5

    :cond_6d
    :goto_6d
    if-nez v0, :cond_71

    if-nez v11, :cond_83

    :cond_71
    if-ltz v2, :cond_83

    .line 169
    invoke-direct {p0, v7, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_7e

    add-int/lit8 v2, v2, -0x1

    move v11, v5

    move v12, v11

    goto :goto_6d

    :cond_7e
    if-nez v11, :cond_6d

    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    :cond_83
    if-gez v2, :cond_86

    goto :goto_31

    :cond_86
    if-eqz v12, :cond_89

    move v10, v5

    :cond_89
    move v0, v12

    goto :goto_11

    :cond_8b
    :goto_8b
    if-nez v4, :cond_109

    if-eqz v10, :cond_109

    sub-int v0, v1, v7

    const/4 v4, 0x0

    move-object v8, v4

    move v6, v5

    :goto_94
    if-ge v6, v0, :cond_a8

    int-to-float v8, v7

    sub-int v9, v3, v6

    int-to-float v9, v9

    add-int v10, v7, v6

    int-to-float v10, v10

    int-to-float v11, v3

    .line 196
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_a5

    goto :goto_a8

    :cond_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_a8
    :goto_a8
    if-eqz v8, :cond_104

    move-object v9, v4

    move v6, v5

    :goto_ac
    if-ge v6, v0, :cond_c0

    int-to-float v9, v7

    add-int v10, v2, v6

    int-to-float v10, v10

    add-int v11, v7, v6

    int-to-float v11, v11

    int-to-float v12, v2

    .line 209
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_bd

    goto :goto_c0

    :cond_bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    :cond_c0
    :goto_c0
    if-eqz v9, :cond_ff

    move-object v7, v4

    move v6, v5

    :goto_c4
    if-ge v6, v0, :cond_d8

    int-to-float v7, v1

    add-int v10, v2, v6

    int-to-float v10, v10

    sub-int v11, v1, v6

    int-to-float v11, v11

    int-to-float v12, v2

    .line 222
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_d5

    goto :goto_d8

    :cond_d5
    add-int/lit8 v6, v6, 0x1

    goto :goto_c4

    :cond_d8
    :goto_d8
    if-eqz v7, :cond_fa

    :goto_da
    if-ge v5, v0, :cond_ee

    int-to-float v2, v1

    sub-int v4, v3, v5

    int-to-float v4, v4

    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v10, v3

    .line 235
    invoke-direct {p0, v2, v4, v6, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    if-eqz v4, :cond_eb

    goto :goto_ee

    :cond_eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_da

    :cond_ee
    :goto_ee
    if-eqz v4, :cond_f5

    .line 245
    invoke-direct {p0, v4, v8, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    return-object p0

    .line 242
    :cond_f5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 229
    :cond_fa
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_ff
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 203
    :cond_104
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 248
    :cond_109
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
