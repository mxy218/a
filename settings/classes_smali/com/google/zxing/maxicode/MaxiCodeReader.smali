.class public final Lcom/google/zxing/maxicode/MaxiCodeReader;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/maxicode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    .line 40
    sput-object v0, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/maxicode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I

    move-result-object v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    .line 107
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 108
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 109
    aget v5, v0, v4

    const/4 v6, 0x3

    .line 110
    aget v0, v0, v6

    .line 113
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    const/16 v7, 0x21

    const/16 v8, 0x1e

    invoke-direct {v6, v8, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v9, v1

    :goto_1c
    if-ge v9, v7, :cond_43

    mul-int v10, v9, v0

    .line 115
    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v10, v3

    move v11, v1

    :goto_26
    if-ge v11, v8, :cond_40

    mul-int v12, v11, v5

    .line 117
    div-int/lit8 v13, v5, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int/2addr v13, v5

    div-int/2addr v13, v4

    add-int/2addr v12, v13

    div-int/2addr v12, v8

    add-int/2addr v12, v2

    .line 118
    invoke-virtual {p0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 119
    invoke-virtual {v6, v11, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3d
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_43
    return-object v6

    .line 104
    :cond_44
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 6
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
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-eqz p2, :cond_35

    .line 69
    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/maxicode/MaxiCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 71
    iget-object p0, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    .line 76
    sget-object p1, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 77
    new-instance p2, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 81
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, p1, p0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_34
    return-object p2

    .line 73
    :cond_35
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
