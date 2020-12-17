.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
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
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .registers 14

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v0, v1, :cond_b7

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p2

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_1f

    aget-object v4, p2, v2

    .line 63
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 67
    :cond_1f
    new-array v0, v3, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    .line 69
    array-length v2, p2

    move v3, v1

    move v4, v3

    :goto_24
    if-ge v3, v2, :cond_4c

    aget-object v5, p2, v3

    move v6, v4

    move v4, v1

    .line 70
    :goto_2a
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_48

    .line 71
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v7

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v8

    add-int/2addr v8, v7

    add-int/lit8 v9, v6, 0x1

    .line 73
    new-instance v10, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v8, v8, [B

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v10, v0, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_2a

    :cond_48
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_24

    .line 79
    :cond_4c
    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p2, p2

    .line 80
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_54
    if-ltz v2, :cond_61

    .line 82
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v3, v3

    if-ne v3, p2, :cond_5e

    goto :goto_61

    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_54

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v1

    move v3, p1

    :goto_6a
    if-ge p1, p2, :cond_82

    move v5, v3

    move v3, v1

    :goto_6e
    if-ge v3, v4, :cond_7e

    .line 96
    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v6, p1

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_6e

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    move v3, v5

    goto :goto_6a

    :cond_82
    move p1, v2

    :goto_83
    if-ge p1, v4, :cond_93

    .line 101
    aget-object v5, v0, p1

    iget-object v5, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v5, p2

    add-int/lit8 p1, p1, 0x1

    move v3, v6

    goto :goto_83

    .line 104
    :cond_93
    aget-object p1, v0, v1

    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p1, p1

    :goto_98
    if-ge p2, p1, :cond_b6

    move v5, v3

    move v3, v1

    :goto_9c
    if-ge v3, v4, :cond_b2

    if-ge v3, v2, :cond_a2

    move v6, p2

    goto :goto_a4

    :cond_a2
    add-int/lit8 v6, p2, 0x1

    .line 108
    :goto_a4
    aget-object v7, v0, v3

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_9c

    :cond_b2
    add-int/lit8 p2, p2, 0x1

    move v3, v5

    goto :goto_98

    :cond_b6
    return-object v0

    .line 52
    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method getCodewords()[B
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object p0
.end method

.method getNumDataCodewords()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return p0
.end method
