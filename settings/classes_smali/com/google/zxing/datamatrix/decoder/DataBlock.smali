.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 15

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_c
    if-ge v4, v2, :cond_18

    aget-object v6, v1, v4

    .line 55
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 59
    :cond_18
    new-array v2, v5, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 61
    array-length v4, v1

    move v5, v3

    move v6, v5

    :goto_1d
    if-ge v5, v4, :cond_45

    aget-object v7, v1, v5

    move v8, v6

    move v6, v3

    .line 62
    :goto_23
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v9

    if-ge v6, v9, :cond_41

    .line 63
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v9

    .line 64
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v10

    add-int/2addr v10, v9

    add-int/lit8 v11, v8, 0x1

    .line 65
    new-instance v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v10, v10, [B

    invoke-direct {v12, v9, v10}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v2, v8

    add-int/lit8 v6, v6, 0x1

    move v8, v11

    goto :goto_23

    :cond_41
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1d

    .line 72
    :cond_45
    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v1, v1

    .line 75
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    move v4, v3

    move v5, v4

    :goto_53
    if-ge v4, v0, :cond_6b

    move v7, v5

    move v5, v3

    :goto_57
    if-ge v5, v6, :cond_67

    .line 82
    aget-object v8, v2, v5

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v4

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_57

    :cond_67
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_53

    .line 87
    :cond_6b
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result p1

    const/16 v4, 0x18

    if-ne p1, v4, :cond_75

    const/4 p1, 0x1

    goto :goto_76

    :cond_75
    move p1, v3

    :goto_76
    if-eqz p1, :cond_7b

    const/16 v4, 0x8

    goto :goto_7c

    :cond_7b
    move v4, v6

    :goto_7c
    move v7, v5

    move v5, v3

    :goto_7e
    if-ge v5, v4, :cond_8e

    .line 90
    aget-object v8, v2, v5

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v0

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_7e

    .line 94
    :cond_8e
    aget-object v0, v2, v3

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    :goto_93
    if-ge v1, v0, :cond_b9

    move v4, v3

    :goto_96
    if-ge v4, v6, :cond_b6

    if-eqz p1, :cond_9e

    add-int/lit8 v5, v4, 0x8

    .line 97
    rem-int/2addr v5, v6

    goto :goto_9f

    :cond_9e
    move v5, v4

    :goto_9f
    if-eqz p1, :cond_a7

    const/4 v8, 0x7

    if-le v5, v8, :cond_a7

    add-int/lit8 v8, v1, -0x1

    goto :goto_a8

    :cond_a7
    move v8, v1

    .line 99
    :goto_a8
    aget-object v5, v2, v5

    iget-object v5, v5, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v5, v8

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    goto :goto_96

    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 103
    :cond_b9
    array-length p0, p0

    if-ne v7, p0, :cond_bd

    return-object v2

    .line 104
    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method getCodewords()[B
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object p0
.end method

.method getNumDataCodewords()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return p0
.end method
