.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 33
    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    const/4 v0, 0x0

    .line 41
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 42
    aput v0, p0, v1

    const/4 v2, 0x2

    .line 43
    aput v0, p0, v2

    const/4 v2, 0x3

    .line 44
    aput v0, p0, v2

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 46
    aget p2, p2, v1

    move v3, p2

    move p2, v0

    :goto_16
    const/4 v4, 0x4

    if-ge p2, v4, :cond_36

    if-ge v3, v2, :cond_36

    .line 49
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    invoke-static {p1, p0, v3, v4}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 50
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v4, p0

    move v5, v3

    move v3, v0

    :goto_2a
    if-ge v3, v4, :cond_32

    aget v6, p0, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_32
    add-int/lit8 p2, p2, 0x1

    move v3, v5

    goto :goto_16

    .line 56
    :cond_36
    sget-object p2, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v3, v1, p2}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p2

    .line 57
    aget p2, p2, v1

    move v1, p2

    move p2, v0

    :goto_40
    if-ge p2, v4, :cond_5f

    if-ge v1, v2, :cond_5f

    .line 60
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    invoke-static {p1, p0, v1, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 61
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v3, p0

    move v5, v1

    move v1, v0

    :goto_53
    if-ge v1, v3, :cond_5b

    aget v6, p0, v1

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_5b
    add-int/lit8 p2, p2, 0x1

    move v1, v5

    goto :goto_40

    :cond_5f
    return v1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 1

    .line 72
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
