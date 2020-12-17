.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .registers 11

    .line 107
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    move v3, p3

    move p1, v1

    move p3, p1

    :goto_6
    if-ge p1, v0, :cond_21

    aget v4, p2, p1

    move v5, v2

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_16

    add-int/lit8 v6, v5, 0x1

    .line 109
    aput-boolean v3, p0, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_c

    :cond_16
    add-int/2addr p3, v4

    if-nez v3, :cond_1c

    const/4 v2, 0x1

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    add-int/lit8 p1, p1, 0x1

    move v2, v5

    goto :goto_6

    :cond_21
    return p3
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .registers 9

    .line 78
    array-length v0, p0

    add-int/2addr p3, v0

    .line 81
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 82
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 84
    div-int p3, p1, p3

    mul-int v1, v0, p3

    sub-int v1, p1, v1

    .line 85
    div-int/lit8 v1, v1, 0x2

    .line 87
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    move v3, v1

    move v1, p1

    :goto_1b
    if-ge v1, v0, :cond_28

    .line 89
    aget-boolean v4, p0, v1

    if-eqz v4, :cond_24

    .line 90
    invoke-virtual {v2, v3, p1, p3, p2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p3

    goto :goto_1b

    :cond_28
    return-object v2
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

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_46

    if-ltz p3, :cond_27

    if-ltz p4, :cond_27

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result p2

    if-eqz p5, :cond_1e

    .line 64
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    if-eqz p5, :cond_1e

    .line 66
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 70
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object p0

    .line 71
    invoke-static {p0, p3, p4, p2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 58
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Negative size is not allowed. Input: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found empty contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method
