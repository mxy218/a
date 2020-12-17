.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 34
    fill-array-data v2, :array_126

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12e

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_136

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_13e

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_146

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14e

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_156

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15e

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_166

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16e

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_176

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17e

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_186

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18e

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_196

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_19e

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a6

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1ae

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1b6

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1be

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1c6

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1ce

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1d6

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1de

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1e6

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1ee

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1f6

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1fe

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_206

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_20e

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_216

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_21e

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    new-array v0, v3, [I

    .line 72
    fill-array-data v0, :array_226

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    :array_126
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_12e
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_136
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_13e
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_146
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_14e
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_156
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_15e
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_166
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_16e
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_176
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_17e
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_186
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_18e
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_196
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_19e
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_1a6
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_1ae
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_1b6
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_1be
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_1c6
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_1ce
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_1d6
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_1de
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_1e6
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_1ee
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1f6
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1fe
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_206
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_20e
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_216
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_21e
    .array-data 4
        0x2bed
        0x1f
    .end array-data

    :array_226
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
        0x3
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    .line 80
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    and-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    .line 82
    iput-byte p1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 3

    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    xor-int/lit16 p0, p0, 0x5412

    xor-int/lit16 p1, p1, 0x5412

    .line 113
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object p0

    return-object p0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 12

    .line 121
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v5, v2

    move v4, v3

    move v3, v5

    :goto_a
    if-ge v3, v1, :cond_36

    aget-object v6, v0, v3

    .line 122
    aget v7, v6, v2

    const/4 v8, 0x1

    if-eq v7, p0, :cond_2e

    if-ne v7, p1, :cond_16

    goto :goto_2e

    .line 127
    :cond_16
    invoke-static {p0, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v9

    if-ge v9, v4, :cond_1f

    .line 129
    aget v5, v6, v8

    move v4, v9

    :cond_1f
    if-eq p0, p1, :cond_2b

    .line 134
    invoke-static {p1, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v7

    if-ge v7, v4, :cond_2b

    .line 136
    aget v4, v6, v8

    move v5, v4

    move v4, v7

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 125
    :cond_2e
    :goto_2e
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget p1, v6, v8

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object p0

    :cond_36
    const/4 p0, 0x3

    if-gt v4, p0, :cond_3f

    .line 144
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {p0, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method static numBitsDiffering(II)I
    .registers 4

    xor-int/2addr p0, p1

    .line 88
    sget-object p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v0, p0, 0xf

    aget v0, p1, v0

    ushr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x14

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1c

    and-int/lit8 p0, p0, 0xf

    aget p0, p1, p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 164
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 167
    :cond_6
    check-cast p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 168
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v0, v2, :cond_15

    iget-byte p0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte p1, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne p0, p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method getDataMask()B
    .registers 1

    .line 154
    iget-byte p0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return p0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte p0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr p0, v0

    return p0
.end method
