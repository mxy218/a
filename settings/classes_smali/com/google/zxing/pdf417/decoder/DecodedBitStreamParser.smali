.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    .line 67
    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    .line 72
    fill-array-data v0, :array_68

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v0, "ISO-8859-1"

    .line 77
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 85
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 87
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 89
    :goto_33
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_45

    add-int/lit8 v3, v1, -0x1

    .line 90
    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_45
    return-void

    :array_46
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_68
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 25

    move/from16 v0, p0

    .line 448
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const-wide/16 v6, 0x384

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x385

    const/16 v11, 0x384

    const/4 v15, 0x0

    if-ne v0, v10, :cond_9e

    new-array v0, v8, [I

    add-int/lit8 v16, p3, 0x1

    .line 456
    aget v17, p1, p3

    move v13, v15

    move/from16 v12, v16

    move/from16 v14, v17

    const-wide/16 v18, 0x0

    move/from16 v17, v13

    .line 457
    :goto_2a
    aget v8, p1, v15

    if-ge v12, v8, :cond_86

    if-nez v13, :cond_86

    add-int/lit8 v8, v17, 0x1

    .line 458
    aput v14, v0, v17

    mul-long v18, v18, v6

    int-to-long v6, v14

    add-long v18, v18, v6

    add-int/lit8 v6, v12, 0x1

    .line 461
    aget v14, p1, v12

    if-eq v14, v11, :cond_7a

    if-eq v14, v10, :cond_7a

    if-eq v14, v5, :cond_7a

    if-eq v14, v9, :cond_7a

    if-eq v14, v4, :cond_7a

    if-eq v14, v3, :cond_7a

    if-ne v14, v2, :cond_4c

    goto :goto_7a

    .line 473
    :cond_4c
    rem-int/lit8 v7, v8, 0x5

    if-nez v7, :cond_70

    if-lez v8, :cond_70

    move v7, v15

    :goto_53
    const/4 v8, 0x6

    if-ge v7, v8, :cond_68

    rsub-int/lit8 v8, v7, 0x5

    mul-int/lit8 v8, v8, 0x8

    shr-long v2, v18, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 477
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_53

    :cond_68
    move v12, v6

    move/from16 v17, v15

    const-wide/16 v6, 0x384

    const-wide/16 v18, 0x0

    goto :goto_2a

    :cond_70
    move v12, v6

    move/from16 v17, v8

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    goto :goto_2a

    :cond_7a
    :goto_7a
    add-int/lit8 v12, v6, -0x1

    move/from16 v17, v8

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    const/4 v13, 0x1

    goto :goto_2a

    .line 486
    :cond_86
    aget v2, p1, v15

    if-ne v12, v2, :cond_91

    if-ge v14, v11, :cond_91

    add-int/lit8 v2, v17, 0x1

    .line 487
    aput v14, v0, v17

    goto :goto_93

    :cond_91
    move/from16 v2, v17

    :goto_93
    if-ge v15, v2, :cond_101

    .line 494
    aget v3, v0, v15

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_93

    :cond_9e
    if-ne v0, v9, :cond_ff

    move/from16 v0, p3

    move v2, v15

    move v14, v2

    const-wide/16 v6, 0x0

    .line 503
    :goto_a6
    aget v3, p1, v15

    if-ge v0, v3, :cond_fd

    if-nez v14, :cond_fd

    add-int/lit8 v3, v0, 0x1

    .line 504
    aget v0, p1, v0

    if-ge v0, v11, :cond_bf

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v12, 0x384

    mul-long/2addr v6, v12

    int-to-long v12, v0

    add-long/2addr v6, v12

    move v0, v3

    const/16 v8, 0x39b

    const/16 v12, 0x39a

    goto :goto_dc

    :cond_bf
    if-eq v0, v11, :cond_d4

    if-eq v0, v10, :cond_d4

    if-eq v0, v5, :cond_d4

    if-eq v0, v9, :cond_d4

    if-eq v0, v4, :cond_d4

    const/16 v8, 0x39b

    const/16 v12, 0x39a

    if-eq v0, v8, :cond_d8

    if-ne v0, v12, :cond_d2

    goto :goto_d8

    :cond_d2
    move v0, v3

    goto :goto_dc

    :cond_d4
    const/16 v8, 0x39b

    const/16 v12, 0x39a

    :cond_d8
    :goto_d8
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    const/4 v14, 0x1

    .line 521
    :goto_dc
    rem-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_fa

    if-lez v2, :cond_fa

    move v2, v15

    const/4 v3, 0x6

    :goto_e4
    if-ge v2, v3, :cond_f7

    rsub-int/lit8 v13, v2, 0x5

    mul-int/lit8 v13, v13, 0x8

    shr-long v3, v6, v13

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 525
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    const/16 v4, 0x3a0

    goto :goto_e4

    :cond_f7
    move v2, v15

    const-wide/16 v6, 0x0

    :cond_fa
    const/16 v4, 0x3a0

    goto :goto_a6

    :cond_fd
    move v12, v0

    goto :goto_101

    :cond_ff
    move/from16 v12, p3

    .line 532
    :cond_101
    :goto_101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v12
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    .line 104
    aget v3, p0, v3

    .line 105
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_12
    const/4 v5, 0x0

    .line 106
    aget v5, p0, v5

    if-ge v2, v5, :cond_74

    const/16 v5, 0x391

    if-eq v3, v5, :cond_5b

    packed-switch v3, :pswitch_data_8e

    packed-switch v3, :pswitch_data_98

    add-int/lit8 v2, v2, -0x1

    .line 146
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 135
    :pswitch_28  #0x3a0
    invoke-static {p0, v2, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_64

    :pswitch_2d  #0x39f
    add-int/lit8 v1, v2, 0x1

    .line 122
    aget v2, p0, v2

    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_64

    :pswitch_41  #0x39e
    add-int/lit8 v2, v2, 0x2

    goto :goto_64

    :pswitch_44  #0x39d
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 140
    :pswitch_47  #0x39a, 0x39b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 119
    :pswitch_4c  #0x386
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 113
    :pswitch_51  #0x385, 0x39c
    invoke-static {v3, p0, v1, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    .line 109
    :pswitch_56  #0x384
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_64

    :cond_5b
    add-int/lit8 v3, v2, 0x1

    .line 116
    aget v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 149
    :goto_64
    array-length v3, p0

    if-ge v2, v3, :cond_6f

    add-int/lit8 v3, v2, 0x1

    .line 150
    aget v2, p0, v2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_12

    .line 152
    :cond_6f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 155
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_88

    .line 158
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 156
    :cond_88
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_8e
    .packed-switch 0x384
        :pswitch_56  #00000384
        :pswitch_51  #00000385
        :pswitch_4c  #00000386
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x39a
        :pswitch_47  #0000039a
        :pswitch_47  #0000039b
        :pswitch_51  #0000039c
        :pswitch_44  #0000039d
        :pswitch_41  #0000039e
        :pswitch_2d  #0000039f
        :pswitch_28  #000003a0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 630
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_5
    const/4 v3, 0x1

    if-ge v0, p1, :cond_21

    .line 632
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 634
    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_32

    .line 638
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 636
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 165
    aget v2, p0, v1

    if-gt v0, v2, :cond_7a

    const/4 v0, 0x2

    new-array v2, v0, [I

    move v3, p1

    move p1, v1

    :goto_c
    if-ge p1, v0, :cond_17

    .line 171
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 173
    :cond_17
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne p1, v2, :cond_70

    add-int/lit8 v0, v0, 0x1

    .line 182
    aget p1, p0, v1

    sub-int/2addr p1, v0

    new-array p1, p1, [I

    move v2, v1

    move v5, v2

    .line 186
    :goto_44
    aget v6, p0, v1

    if-ge v0, v6, :cond_68

    if-nez v2, :cond_68

    add-int/lit8 v6, v0, 0x1

    .line 187
    aget v0, p0, v0

    const/16 v7, 0x384

    if-ge v0, v7, :cond_59

    add-int/lit8 v7, v5, 0x1

    .line 189
    aput v0, p1, v5

    move v0, v6

    move v5, v7

    goto :goto_44

    :cond_59
    if-ne v0, v3, :cond_63

    .line 193
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v6, 0x1

    move v2, v4

    move v0, v6

    goto :goto_44

    .line 198
    :cond_63
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 203
    :cond_68
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_79

    .line 204
    :cond_70
    aget p0, p0, v0

    if-ne p0, v3, :cond_79

    .line 205
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v0, v0, 0x1

    :cond_79
    :goto_79
    return v0

    .line 167
    :cond_7a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    .line 294
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    move/from16 v1, p2

    :goto_a
    if-ge v3, v1, :cond_107

    .line 298
    aget v6, p0, v3

    .line 300
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    const/16 v10, 0x20

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_108

    goto/16 :goto_fd

    :pswitch_29  #0x6
    if-ge v6, v13, :cond_30

    .line 409
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v4, v6

    goto :goto_4a

    :cond_30
    if-ne v6, v13, :cond_36

    .line 412
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_36
    if-ne v6, v11, :cond_3f

    .line 416
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_3f
    if-ne v6, v12, :cond_59

    .line 418
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :pswitch_45  #0x5
    if-ge v6, v14, :cond_4e

    add-int/lit8 v6, v6, 0x41

    int-to-char v4, v6

    :goto_4a
    move v6, v4

    :goto_4b
    move-object v4, v5

    goto/16 :goto_fe

    :cond_4e
    if-ne v6, v14, :cond_53

    move-object v4, v5

    goto/16 :goto_df

    :cond_53
    if-ne v6, v12, :cond_59

    .line 400
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_59
    :goto_59
    move v6, v2

    goto :goto_4b

    :pswitch_5b  #0x4
    if-ge v6, v13, :cond_63

    .line 379
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v6, v7, v6

    goto/16 :goto_fe

    :cond_63
    if-ne v6, v13, :cond_69

    .line 382
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_69
    if-ne v6, v11, :cond_73

    .line 384
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_fd

    :cond_73
    if-ne v6, v12, :cond_fd

    .line 386
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :pswitch_79  #0x3
    const/16 v7, 0x19

    if-ge v6, v7, :cond_83

    .line 354
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v6, v7, v6

    goto/16 :goto_fe

    :cond_83
    if-ne v6, v7, :cond_89

    .line 357
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_89
    if-ne v6, v14, :cond_8d

    goto/16 :goto_df

    :cond_8d
    if-ne v6, v9, :cond_93

    .line 361
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_93
    if-ne v6, v8, :cond_99

    .line 363
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :cond_99
    if-ne v6, v13, :cond_9e

    .line 367
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ba

    :cond_9e
    if-ne v6, v11, :cond_a8

    .line 369
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_fd

    :cond_a8
    if-ne v6, v12, :cond_fd

    .line 371
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_fd

    :pswitch_ae  #0x2
    if-ge v6, v14, :cond_b3

    add-int/lit8 v6, v6, 0x61

    goto :goto_db

    :cond_b3
    if-ne v6, v14, :cond_b6

    goto :goto_df

    :cond_b6
    if-ne v6, v9, :cond_bf

    .line 335
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_ba
    move v6, v2

    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    goto :goto_fe

    :cond_bf
    if-ne v6, v8, :cond_c4

    .line 337
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_fd

    :cond_c4
    if-ne v6, v13, :cond_c9

    .line 341
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ba

    :cond_c9
    if-ne v6, v11, :cond_d2

    .line 344
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fd

    :cond_d2
    if-ne v6, v12, :cond_fd

    .line 346
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_fd

    :pswitch_d7  #0x1
    if-ge v6, v14, :cond_dd

    add-int/lit8 v6, v6, 0x41

    :goto_db
    int-to-char v6, v6

    goto :goto_fe

    :cond_dd
    if-ne v6, v14, :cond_e1

    :goto_df
    move v6, v10

    goto :goto_fe

    :cond_e1
    if-ne v6, v9, :cond_e6

    .line 310
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_fd

    :cond_e6
    if-ne v6, v8, :cond_eb

    .line 312
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_fd

    :cond_eb
    if-ne v6, v13, :cond_f0

    .line 316
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ba

    :cond_f0
    if-ne v6, v11, :cond_f9

    .line 318
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fd

    :cond_f9
    if-ne v6, v12, :cond_fd

    .line 320
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :cond_fd
    :goto_fd
    move v6, v2

    :goto_fe
    if-eqz v6, :cond_103

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_103
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_107
    return-void

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_d7  #00000001
        :pswitch_ae  #00000002
        :pswitch_79  #00000003
        :pswitch_5b  #00000004
        :pswitch_45  #00000005
        :pswitch_29  #00000006
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 550
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4f

    if-nez v2, :cond_4f

    add-int/lit8 v4, p1, 0x1

    .line 551
    aget p1, p0, p1

    .line 552
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    move v2, v6

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    .line 556
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_20
    if-eq p1, v5, :cond_36

    const/16 v5, 0x385

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    move v2, v6

    .line 569
    :cond_39
    :goto_39
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_43

    const/16 v5, 0x386

    if-eq p1, v5, :cond_43

    if-eqz v2, :cond_4d

    :cond_43
    if-lez v3, :cond_4d

    .line 577
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_4d
    move p1, v4

    goto :goto_7

    :cond_4f
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 11

    const/4 v0, 0x0

    .line 224
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 226
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move v3, v0

    move v4, v3

    .line 230
    :goto_11
    aget v5, p0, v0

    if-ge p1, v5, :cond_52

    if-nez v3, :cond_52

    add-int/lit8 v5, p1, 0x1

    .line 231
    aget p1, p0, p1

    const/16 v6, 0x384

    if-ge p1, v6, :cond_2c

    .line 233
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 234
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_3a

    :cond_2c
    const/16 v7, 0x391

    if-eq p1, v7, :cond_47

    const/16 v7, 0x3a0

    if-eq p1, v7, :cond_42

    packed-switch p1, :pswitch_data_56

    packed-switch p1, :pswitch_data_60

    :goto_3a
    move p1, v5

    goto :goto_11

    :pswitch_3c  #0x384
    add-int/lit8 p1, v4, 0x1

    .line 240
    aput v6, v1, v4

    move v4, p1

    goto :goto_3a

    :cond_42
    :pswitch_42  #0x385, 0x386, 0x39a, 0x39b, 0x39c
    add-int/lit8 v5, v5, -0x1

    const/4 p1, 0x1

    move v3, p1

    goto :goto_3a

    .line 258
    :cond_47
    aput v7, v1, v4

    add-int/lit8 p1, v5, 0x1

    .line 259
    aget v5, p0, v5

    .line 260
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 266
    :cond_52
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_56
    .packed-switch 0x384
        :pswitch_3c  #00000384
        :pswitch_42  #00000385
        :pswitch_42  #00000386
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x39a
        :pswitch_42  #0000039a
        :pswitch_42  #0000039b
        :pswitch_42  #0000039c
    .end packed-switch
.end method
