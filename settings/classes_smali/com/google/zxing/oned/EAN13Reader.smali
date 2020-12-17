.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 68
    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 130
    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_13

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    .line 131
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    const/4 v0, 0x0

    .line 76
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 77
    aput v0, p0, v1

    const/4 v2, 0x2

    .line 78
    aput v0, p0, v2

    const/4 v2, 0x3

    .line 79
    aput v0, p0, v2

    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 81
    aget p2, p2, v1

    move v3, p2

    move p2, v0

    move v4, p2

    :goto_17
    const/4 v5, 0x6

    if-ge p2, v5, :cond_43

    if-ge v3, v2, :cond_43

    .line 86
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, p0, v3, v5}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v5

    .line 87
    rem-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v6, p0

    move v7, v3

    move v3, v0

    :goto_2d
    if-ge v3, v6, :cond_35

    aget v8, p0, v3

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_35
    const/16 v3, 0xa

    if-lt v5, v3, :cond_3f

    rsub-int/lit8 v3, p2, 0x5

    shl-int v3, v1, v3

    or-int/2addr v3, v4

    move v4, v3

    :cond_3f
    add-int/lit8 p2, p2, 0x1

    move v3, v7

    goto :goto_17

    .line 96
    :cond_43
    invoke-static {p3, v4}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object p2, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v3, v1, p2}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p2

    .line 99
    aget p2, p2, v1

    move v1, p2

    move p2, v0

    :goto_50
    if-ge p2, v5, :cond_6f

    if-ge v1, v2, :cond_6f

    .line 102
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    invoke-static {p1, p0, v1, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 103
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v3, p0

    move v4, v1

    move v1, v0

    :goto_63
    if-ge v1, v3, :cond_6b

    aget v6, p0, v1

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_6b
    add-int/lit8 p2, p2, 0x1

    move v1, v4

    goto :goto_50

    :cond_6f
    return v1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 1

    .line 114
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
