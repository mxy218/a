.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 7
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

    .line 61
    new-instance p0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 65
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2
    :try_end_13
    .catch Lcom/google/zxing/NotFoundException; {:try_start_b .. :try_end_13} :catch_2b
    .catch Lcom/google/zxing/FormatException; {:try_start_b .. :try_end_13} :catch_25

    .line 67
    :try_start_13
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v3}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_1c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_13 .. :try_end_1c} :catch_23
    .catch Lcom/google/zxing/FormatException; {:try_start_13 .. :try_end_1c} :catch_21

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2f

    :catch_21
    move-exception v1

    goto :goto_27

    :catch_23
    move-exception v1

    goto :goto_2d

    :catch_25
    move-exception v1

    move-object v2, v0

    :goto_27
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2f

    :catch_2b
    move-exception v1

    move-object v2, v0

    :goto_2d
    move-object v3, v2

    move-object v2, v0

    :goto_2f
    if-nez v0, :cond_4c

    const/4 v0, 0x1

    .line 75
    :try_start_32
    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 77
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_43
    .catch Lcom/google/zxing/NotFoundException; {:try_start_32 .. :try_end_43} :catch_44
    .catch Lcom/google/zxing/FormatException; {:try_start_32 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception p0

    if-nez v1, :cond_4b

    if-eqz v2, :cond_4a

    .line 83
    throw v2

    .line 85
    :cond_4a
    throw p0

    .line 80
    :cond_4b
    throw v1

    :cond_4c
    :goto_4c
    if-eqz p2, :cond_63

    .line 90
    sget-object p0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultPointCallback;

    if-eqz p0, :cond_63

    .line 92
    array-length p2, v3

    :goto_59
    if-ge p1, p2, :cond_63

    aget-object v1, v3, p1

    .line 93
    invoke-interface {p0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    .line 98
    :cond_63
    new-instance p0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object p2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 100
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 102
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 104
    :cond_7d
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 106
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_88
    return-object p0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
