.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "\r\n"

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0xff

    new-array v1, v0, [B

    .line 102
    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 103
    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_20

    .line 108
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    const/16 v0, 0x5a

    :goto_22
    const/16 v2, 0x41

    if-lt v0, v2, :cond_30

    .line 111
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_30
    const/16 v0, 0x7a

    :goto_32
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_43

    .line 114
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_43
    const/16 v0, 0x39

    :goto_45
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_56

    .line 117
    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    .line 120
    :cond_56
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v4, 0x3e

    const/16 v5, 0x2b

    aput-byte v4, v0, v5

    const/16 v6, 0x3f

    const/16 v7, 0x2f

    .line 121
    aput-byte v6, v0, v7

    move v0, v1

    :goto_65
    const/16 v8, 0x19

    if-gt v0, v8, :cond_73

    .line 124
    sget-object v8, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v9, v0, 0x41

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_73
    move v0, v1

    :goto_74
    const/16 v8, 0x33

    if-gt v2, v8, :cond_84

    .line 128
    sget-object v8, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v9, v0, 0x61

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_84
    :goto_84
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_94

    .line 132
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 135
    :cond_94
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v0, v4

    .line 136
    aput-byte v7, v0, v6

    return-void
.end method

.method public static encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x0

    .line 183
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .registers 20

    move-object/from16 v0, p0

    .line 238
    array-length v1, v0

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 239
    rem-int/lit8 v3, v1, 0x18

    .line 240
    div-int/lit8 v1, v1, 0x18

    if-eqz v3, :cond_11

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x4

    goto :goto_13

    :cond_11
    mul-int/lit8 v4, v1, 0x4

    :goto_13
    if-eqz p1, :cond_2c

    .line 259
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v6, v6

    if-nez v6, :cond_1c

    const/4 v6, 0x0

    goto :goto_26

    :cond_1c
    int-to-float v6, v4

    const/high16 v7, 0x42980000  # 76.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 260
    :goto_26
    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v7, v7

    mul-int/2addr v7, v6

    add-int/2addr v4, v7

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    .line 263
    :goto_2d
    new-array v7, v4, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x4c

    :goto_34
    if-ge v9, v1, :cond_aa

    mul-int/lit8 v13, v9, 0x3

    .line 276
    aget-byte v14, v0, v13

    add-int/lit8 v15, v13, 0x1

    .line 277
    aget-byte v15, v0, v15

    add-int/lit8 v13, v13, 0x2

    .line 278
    aget-byte v13, v0, v13

    and-int/lit8 v2, v15, 0xf

    int-to-byte v2, v2

    and-int/lit8 v8, v14, 0x3

    int-to-byte v8, v8

    and-int/lit8 v16, v14, -0x80

    shr-int/lit8 v14, v14, 0x2

    if-nez v16, :cond_4f

    goto :goto_51

    :cond_4f
    xor-int/lit16 v14, v14, 0xc0

    :goto_51
    int-to-byte v14, v14

    and-int/lit8 v16, v15, -0x80

    shr-int/lit8 v15, v15, 0x4

    if-nez v16, :cond_59

    goto :goto_5b

    :cond_59
    xor-int/lit16 v15, v15, 0xf0

    :goto_5b
    int-to-byte v15, v15

    and-int/lit8 v16, v13, -0x80

    shr-int/lit8 v5, v13, 0x6

    if-nez v16, :cond_63

    goto :goto_65

    :cond_63
    xor-int/lit16 v5, v5, 0xfc

    :goto_65
    int-to-byte v5, v5

    .line 292
    sget-object v17, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v14, v17, v14

    aput-byte v14, v7, v10

    add-int/lit8 v14, v10, 0x1

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v8, v15

    .line 296
    aget-byte v8, v17, v8

    aput-byte v8, v7, v14

    add-int/lit8 v8, v10, 0x2

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v5

    .line 298
    aget-byte v2, v17, v2

    aput-byte v2, v7, v8

    add-int/lit8 v2, v10, 0x3

    and-int/lit8 v5, v13, 0x3f

    .line 300
    aget-byte v5, v17, v5

    aput-byte v5, v7, v2

    add-int/lit8 v10, v10, 0x4

    if-eqz p1, :cond_a3

    if-ne v10, v12, :cond_a3

    .line 308
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v11, 0x1

    const/16 v5, 0x4c

    mul-int/2addr v2, v5

    .line 315
    sget-object v8, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v12, v8

    mul-int/2addr v12, v11

    add-int/2addr v2, v12

    .line 318
    array-length v8, v8

    add-int/2addr v10, v8

    move v12, v2

    goto :goto_a5

    :cond_a3
    const/16 v5, 0x4c

    :goto_a5
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x8

    goto :goto_34

    :cond_aa
    mul-int/lit8 v9, v9, 0x3

    const/16 v1, 0x3d

    const/16 v2, 0x8

    if-ne v3, v2, :cond_d8

    .line 327
    aget-byte v0, v0, v9

    and-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    and-int/lit8 v3, v0, -0x80

    shr-int/lit8 v0, v0, 0x2

    if-nez v3, :cond_be

    goto :goto_c0

    :cond_be
    xor-int/lit16 v0, v0, 0xc0

    :goto_c0
    int-to-byte v0, v0

    .line 333
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v0, v3, v0

    aput-byte v0, v7, v10

    add-int/lit8 v0, v10, 0x1

    shl-int/lit8 v2, v2, 0x4

    .line 334
    aget-byte v2, v3, v2

    aput-byte v2, v7, v0

    add-int/lit8 v0, v10, 0x2

    .line 335
    aput-byte v1, v7, v0

    add-int/lit8 v10, v10, 0x3

    .line 336
    aput-byte v1, v7, v10

    goto :goto_117

    :cond_d8
    const/16 v2, 0x10

    if-ne v3, v2, :cond_117

    .line 339
    aget-byte v2, v0, v9

    add-int/lit8 v9, v9, 0x1

    .line 340
    aget-byte v0, v0, v9

    and-int/lit8 v3, v0, 0xf

    int-to-byte v3, v3

    and-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    and-int/lit8 v8, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v8, :cond_ef

    goto :goto_f1

    :cond_ef
    xor-int/lit16 v2, v2, 0xc0

    :goto_f1
    int-to-byte v2, v2

    and-int/lit8 v8, v0, -0x80

    shr-int/lit8 v0, v0, 0x4

    if-nez v8, :cond_f9

    goto :goto_fb

    :cond_f9
    xor-int/lit16 v0, v0, 0xf0

    :goto_fb
    int-to-byte v0, v0

    .line 349
    sget-object v8, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v2, v8, v2

    aput-byte v2, v7, v10

    add-int/lit8 v2, v10, 0x1

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v0, v5

    .line 350
    aget-byte v0, v8, v0

    aput-byte v0, v7, v2

    add-int/lit8 v0, v10, 0x2

    shl-int/lit8 v2, v3, 0x2

    .line 352
    aget-byte v2, v8, v2

    aput-byte v2, v7, v0

    add-int/lit8 v10, v10, 0x3

    .line 353
    aput-byte v1, v7, v10

    :cond_117
    :goto_117
    if-eqz p1, :cond_124

    if-ge v11, v6, :cond_124

    .line 359
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v1, v0

    sub-int/2addr v4, v1

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_124
    return-object v7
.end method
