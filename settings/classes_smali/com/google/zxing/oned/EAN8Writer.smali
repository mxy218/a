.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 46
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can only encode EAN_8, but got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 8

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_55

    const/16 p0, 0x43

    new-array p0, p0, [Z

    .line 66
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v0, v1

    move v3, v0

    move v0, v1

    :goto_17
    const/4 v4, 0x3

    if-gt v0, v4, :cond_2f

    add-int/lit8 v4, v0, 0x1

    .line 69
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v0, v5, v0

    invoke-static {p0, v3, v0, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v4

    goto :goto_17

    .line 73
    :cond_2f
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {p0, v3, v0, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x4

    :goto_37
    const/4 v1, 0x7

    if-gt v0, v1, :cond_4f

    add-int/lit8 v1, v0, 0x1

    .line 76
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v0, v4, v0

    invoke-static {p0, v3, v0, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v1

    goto :goto_37

    .line 79
    :cond_4f
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v3, p1, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object p0

    .line 59
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested contents should be 8 digits long, but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
