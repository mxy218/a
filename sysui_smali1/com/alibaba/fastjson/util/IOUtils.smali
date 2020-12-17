.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;
    }
.end annotation


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 45
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    const-string v0, "UTF-8"

    .line 47
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 49
    fill-array-data v0, :array_1f4

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 52
    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    const/4 v1, 0x0

    move v2, v1

    .line 54
    :goto_20
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4a

    const/16 v4, 0x41

    if-lt v2, v4, :cond_31

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_31

    .line 56
    aput-boolean v5, v3, v2

    goto :goto_46

    :cond_31
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3e

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_3e

    .line 58
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v5, v3, v2

    goto :goto_46

    :cond_3e
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_46

    .line 60
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v5, v3, v2

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_20

    :cond_4a
    new-array v2, v0, [Z

    .line 65
    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    move v2, v1

    .line 68
    :goto_4f
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_85

    const/16 v4, 0x41

    if-lt v2, v4, :cond_5f

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_5f

    .line 70
    aput-boolean v5, v3, v2

    goto :goto_81

    :cond_5f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_6c

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_6c

    .line 72
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v2

    goto :goto_81

    :cond_6c
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_75

    .line 74
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v2

    goto :goto_81

    :cond_75
    const/16 v3, 0x30

    if-lt v2, v3, :cond_81

    const/16 v3, 0x39

    if-gt v2, v3, :cond_81

    .line 76
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v2

    :cond_81
    :goto_81
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_4f

    .line 83
    :cond_85
    :try_start_85
    new-instance v2, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;

    invoke-direct {v2}, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/IOUtils$PropertiesInitializer;->autoConfig()V
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8d

    :catchall_8d
    const/16 v2, 0xa1

    new-array v3, v2, [B

    .line 130
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    new-array v3, v2, [B

    .line 131
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    new-array v3, v2, [Z

    .line 132
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    new-array v3, v2, [Z

    .line 133
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    const/16 v3, 0x5d

    new-array v3, v3, [C

    .line 135
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 137
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v4, 0x4

    aput-byte v4, v3, v1

    .line 138
    aput-byte v4, v3, v5

    const/4 v6, 0x2

    .line 139
    aput-byte v4, v3, v6

    const/4 v7, 0x3

    .line 140
    aput-byte v4, v3, v7

    .line 141
    aput-byte v4, v3, v4

    const/4 v8, 0x5

    .line 142
    aput-byte v4, v3, v8

    const/4 v9, 0x6

    .line 143
    aput-byte v4, v3, v9

    const/4 v10, 0x7

    .line 144
    aput-byte v4, v3, v10

    const/16 v11, 0x8

    .line 145
    aput-byte v5, v3, v11

    const/16 v12, 0x9

    .line 146
    aput-byte v5, v3, v12

    const/16 v13, 0xa

    .line 147
    aput-byte v5, v3, v13

    const/16 v14, 0xb

    .line 148
    aput-byte v4, v3, v14

    const/16 v15, 0xc

    .line 149
    aput-byte v5, v3, v15

    const/16 v15, 0xd

    .line 150
    aput-byte v5, v3, v15

    const/16 v15, 0x22

    .line 151
    aput-byte v5, v3, v15

    const/16 v15, 0x5c

    .line 152
    aput-byte v5, v3, v15

    .line 154
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v1

    .line 155
    aput-byte v4, v3, v5

    .line 156
    aput-byte v4, v3, v6

    .line 157
    aput-byte v4, v3, v7

    .line 158
    aput-byte v4, v3, v4

    .line 159
    aput-byte v4, v3, v8

    .line 160
    aput-byte v4, v3, v9

    .line 161
    aput-byte v4, v3, v10

    .line 162
    aput-byte v5, v3, v11

    .line 163
    aput-byte v5, v3, v12

    .line 164
    aput-byte v5, v3, v13

    .line 165
    aput-byte v4, v3, v14

    const/16 v16, 0xc

    .line 166
    aput-byte v5, v3, v16

    const/16 v16, 0xd

    .line 167
    aput-byte v5, v3, v16

    .line 168
    aput-byte v5, v3, v15

    const/16 v16, 0x27

    .line 169
    aput-byte v5, v3, v16

    const/16 v3, 0xe

    :goto_107
    const/16 v0, 0x1f

    if-gt v3, v0, :cond_116

    .line 172
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v0, v3

    .line 173
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    :cond_116
    const/16 v0, 0x7f

    :goto_118
    const/16 v3, 0xa0

    if-ge v0, v3, :cond_127

    .line 177
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v3, v0

    .line 178
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_127
    move v0, v1

    :goto_128
    if-ge v0, v2, :cond_14b

    .line 182
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v17, v17, v0

    if-eqz v17, :cond_135

    move/from16 v17, v5

    goto :goto_137

    :cond_135
    move/from16 v17, v1

    :goto_137
    aput-boolean v17, v3, v0

    .line 183
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v17, v17, v0

    if-eqz v17, :cond_144

    move/from16 v17, v5

    goto :goto_146

    :cond_144
    move/from16 v17, v1

    :goto_146
    aput-boolean v17, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    .line 186
    :cond_14b
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v2, 0x31

    .line 187
    aput-char v2, v0, v5

    const/16 v2, 0x32

    .line 188
    aput-char v2, v0, v6

    const/16 v2, 0x33

    .line 189
    aput-char v2, v0, v7

    const/16 v2, 0x34

    .line 190
    aput-char v2, v0, v4

    const/16 v2, 0x35

    .line 191
    aput-char v2, v0, v8

    const/16 v2, 0x36

    .line 192
    aput-char v2, v0, v9

    const/16 v2, 0x37

    .line 193
    aput-char v2, v0, v10

    const/16 v2, 0x62

    .line 194
    aput-char v2, v0, v11

    const/16 v2, 0x74

    .line 195
    aput-char v2, v0, v12

    const/16 v2, 0x6e

    .line 196
    aput-char v2, v0, v13

    const/16 v2, 0x76

    .line 197
    aput-char v2, v0, v14

    const/16 v2, 0xc

    const/16 v3, 0x66

    .line 198
    aput-char v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x72

    .line 199
    aput-char v3, v0, v2

    const/16 v2, 0x22

    const/16 v3, 0x22

    .line 200
    aput-char v3, v0, v2

    const/16 v2, 0x27

    const/16 v3, 0x27

    .line 201
    aput-char v3, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    .line 202
    aput-char v3, v0, v2

    .line 203
    aput-char v15, v0, v15

    const/16 v0, 0x60

    new-array v0, v0, [C

    .line 206
    fill-array-data v0, :array_208

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 347
    fill-array-data v0, :array_26c

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 350
    fill-array-data v0, :array_294

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 356
    fill-array-data v0, :array_2fc

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    new-array v0, v13, [I

    .line 362
    fill-array-data v0, :array_364

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 401
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 402
    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 404
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 405
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v0, v0

    move v2, v1

    :goto_1e0
    if-ge v2, v0, :cond_1ed

    .line 406
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e0

    .line 407
    :cond_1ed
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void

    :array_1f4
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_208
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_26c
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_294
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_2fc
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
    .end array-data

    :array_364
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 216
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 4

    const/4 v0, 0x1

    .line 375
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_e

    .line 378
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 381
    :cond_e
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 384
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_1b
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 389
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "utf8 decode error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 15

    .line 544
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    :cond_a
    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_1e

    .line 552
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    if-lez v2, :cond_2f

    .line 556
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2f

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 560
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_44

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_42

    const/4 v4, 0x2

    goto :goto_45

    :cond_42
    move v4, v6

    goto :goto_45

    :cond_44
    move v4, v1

    :goto_45
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_5a

    .line 562
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_57

    div-int/lit8 v0, v5, 0x4e

    goto :goto_58

    :cond_57
    move v0, v1

    :goto_58
    shl-int/2addr v0, v6

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 565
    new-array v7, v5, [B

    .line 569
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    move v10, v1

    move v9, v3

    move v3, v10

    :goto_6a
    if-ge v3, v8, :cond_be

    .line 571
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget v9, v11, v9

    shl-int/lit8 v9, v9, 0x12

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v9, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v9, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .line 572
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v11, v3, 0x1

    shr-int/lit8 v12, v9, 0x10

    int-to-byte v12, v12

    .line 575
    aput-byte v12, v7, v3

    add-int/lit8 v3, v11, 0x1

    shr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    .line 576
    aput-byte v12, v7, v11

    add-int/lit8 v11, v3, 0x1

    int-to-byte v9, v9

    .line 577
    aput-byte v9, v7, v3

    if-lez v0, :cond_bb

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_bb

    add-int/lit8 v13, v13, 0x2

    move v10, v1

    :cond_bb
    move v9, v13

    move v3, v11

    goto :goto_6a

    :cond_be
    if-ge v3, v5, :cond_e7

    move v0, v1

    :goto_c1
    sub-int v8, v2, v4

    if-gt v9, v8, :cond_d8

    .line 590
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget v8, v8, v9

    mul-int/lit8 v9, v0, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v8, v9

    or-int/2addr v1, v8

    add-int/2addr v0, v6

    move v9, v10

    goto :goto_c1

    :cond_d8
    const/16 p0, 0x10

    :goto_da
    if-ge v3, v5, :cond_e7

    add-int/lit8 v0, v3, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 593
    aput-byte v2, v7, v3

    add-int/lit8 p0, p0, -0x8

    move v3, v0

    goto :goto_da

    :cond_e7
    return-object v7
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_19

    .line 485
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_19

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_19
    :goto_19
    if-lez v1, :cond_28

    .line 489
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 493
    :cond_28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3c

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3a

    const/4 v3, 0x2

    goto :goto_3d

    :cond_3a
    move v3, v2

    goto :goto_3d

    :cond_3c
    move v3, v0

    :goto_3d
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_52

    .line 495
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_4f

    div-int/lit8 p2, v4, 0x4e

    goto :goto_50

    :cond_4f
    move p2, v0

    :goto_50
    shl-int/2addr p2, v2

    goto :goto_53

    :cond_52
    move p2, v0

    :goto_53
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 498
    new-array v5, v4, [B

    .line 502
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, p1

    move p1, v0

    move v8, p1

    :goto_62
    if-ge p1, v6, :cond_b6

    .line 504
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v7, v9, v7

    shl-int/lit8 v7, v7, 0x12

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v7, v9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v9, v9, v11

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v9, p1, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    .line 507
    aput-byte v10, v5, p1

    add-int/lit8 p1, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    .line 508
    aput-byte v10, v5, v9

    add-int/lit8 v9, p1, 0x1

    int-to-byte v7, v7

    .line 509
    aput-byte v7, v5, p1

    if-lez p2, :cond_b3

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_b3

    add-int/lit8 v11, v11, 0x2

    move v8, v0

    :cond_b3
    move v7, v11

    move p1, v9

    goto :goto_62

    :cond_b6
    if-ge p1, v4, :cond_df

    move p2, v0

    :goto_b9
    sub-int v6, v1, v3

    if-gt v7, v6, :cond_d0

    .line 522
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    mul-int/lit8 v7, p2, 0x6

    rsub-int/lit8 v7, v7, 0x12

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    add-int/2addr p2, v2

    move v7, v8

    goto :goto_b9

    :cond_d0
    const/16 p0, 0x10

    :goto_d2
    if-ge p1, v4, :cond_df

    add-int/lit8 p2, p1, 0x1

    shr-int v1, v0, p0

    int-to-byte v1, v1

    .line 525
    aput-byte v1, v5, p1

    add-int/lit8 p0, p0, -0x8

    move p1, p2

    goto :goto_d2

    :cond_df
    return-object v5
.end method

.method public static decodeBase64([CII)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_17

    .line 430
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v4, p0, p1

    aget v3, v3, v4

    if-gez v3, :cond_17

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_17
    :goto_17
    if-lez v1, :cond_24

    .line 434
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v4, p0, v1

    aget v3, v3, v4

    if-gez v3, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 438
    :cond_24
    aget-char v3, p0, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_34

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ne v3, v4, :cond_32

    const/4 v3, 0x2

    goto :goto_35

    :cond_32
    move v3, v2

    goto :goto_35

    :cond_34
    move v3, v0

    :goto_35
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_48

    .line 440
    aget-char p2, p0, v5

    const/16 v5, 0xd

    if-ne p2, v5, :cond_45

    div-int/lit8 p2, v4, 0x4e

    goto :goto_46

    :cond_45
    move p2, v0

    :goto_46
    shl-int/2addr p2, v2

    goto :goto_49

    :cond_48
    move p2, v0

    :goto_49
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 443
    new-array v5, v4, [B

    .line 447
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, p1

    move p1, v0

    move v8, p1

    :goto_58
    if-ge p1, v6, :cond_9e

    .line 449
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v7, 0x1

    aget-char v7, p0, v7

    aget v7, v9, v7

    shl-int/lit8 v7, v7, 0x12

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v7, v10

    add-int/lit8 v10, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v7, v11

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v9, v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v9, p1, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    .line 452
    aput-byte v10, v5, p1

    add-int/lit8 p1, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    .line 453
    aput-byte v10, v5, v9

    add-int/lit8 v9, p1, 0x1

    int-to-byte v7, v7

    .line 454
    aput-byte v7, v5, p1

    if-lez p2, :cond_9b

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_9b

    add-int/lit8 v11, v11, 0x2

    move v8, v0

    :cond_9b
    move v7, v11

    move p1, v9

    goto :goto_58

    :cond_9e
    if-ge p1, v4, :cond_c5

    move p2, v0

    :goto_a1
    sub-int v6, v1, v3

    if-gt v7, v6, :cond_b6

    .line 467
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v8, v7, 0x1

    aget-char v7, p0, v7

    aget v6, v6, v7

    mul-int/lit8 v7, p2, 0x6

    rsub-int/lit8 v7, v7, 0x12

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    add-int/2addr p2, v2

    move v7, v8

    goto :goto_a1

    :cond_b6
    const/16 p0, 0x10

    :goto_b8
    if-ge p1, v4, :cond_c5

    add-int/lit8 p2, p1, 0x1

    shr-int v1, v0, p0

    int-to-byte v1, v1

    .line 470
    aput-byte v1, v5, p1

    add-int/lit8 p0, p0, -0x8

    move p1, p2

    goto :goto_b8

    :cond_c5
    return-object v5
.end method

.method public static decodeUTF8([BII[C)I
    .registers 12

    add-int v0, p1, p2

    .line 662
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_1a

    .line 665
    aget-byte v2, p0, p1

    if-ltz v2, :cond_1a

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 666
    aget-byte p1, p0, p1

    int-to-char p1, p1

    aput-char p1, p3, v1

    move v1, v2

    move p1, v3

    goto :goto_8

    :cond_1a
    :goto_1a
    if-ge p1, v0, :cond_d0

    add-int/lit8 p2, p1, 0x1

    .line 669
    aget-byte p1, p0, p1

    if-ltz p1, :cond_2a

    add-int/lit8 v2, v1, 0x1

    int-to-char p1, p1

    .line 672
    aput-char p1, p3, v1

    move p1, p2

    move v1, v2

    goto :goto_1a

    :cond_2a
    shr-int/lit8 v2, p1, 0x5

    const/4 v3, -0x2

    const/16 v4, 0x80

    const/4 v5, -0x1

    if-ne v2, v3, :cond_4f

    and-int/lit8 v2, p1, 0x1e

    if-eqz v2, :cond_4f

    if-ge p2, v0, :cond_4e

    add-int/lit8 v2, p2, 0x1

    .line 676
    aget-byte p2, p0, p2

    and-int/lit16 v3, p2, 0xc0

    if-eq v3, v4, :cond_41

    return v5

    :cond_41
    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p1, p2

    xor-int/lit16 p1, p1, 0xf80

    int-to-char p1, p1

    .line 680
    aput-char p1, p3, v1

    move p1, v2

    move v1, v3

    goto :goto_1a

    :cond_4e
    return v5

    :cond_4f
    shr-int/lit8 v2, p1, 0x4

    if-ne v2, v3, :cond_88

    add-int/lit8 v2, p2, 0x1

    if-ge v2, v0, :cond_87

    .line 690
    aget-byte p2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 691
    aget-byte v2, p0, v2

    const/16 v6, -0x20

    if-ne p1, v6, :cond_65

    and-int/lit16 v6, p2, 0xe0

    if-eq v6, v4, :cond_87

    :cond_65
    and-int/lit16 v6, p2, 0xc0

    if-ne v6, v4, :cond_87

    and-int/lit16 v6, v2, 0xc0

    if-eq v6, v4, :cond_6e

    goto :goto_87

    :cond_6e
    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 p2, p2, 0x6

    xor-int/2addr p1, p2

    const p2, -0x1e080

    xor-int/2addr p2, v2

    xor-int/2addr p1, p2

    int-to-char p1, p1

    .line 703
    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_80

    return v5

    :cond_80
    add-int/lit8 p2, v1, 0x1

    .line 706
    aput-char p1, p3, v1

    move v1, p2

    move p1, v3

    goto :goto_1a

    :cond_87
    :goto_87
    return v5

    :cond_88
    shr-int/lit8 v2, p1, 0x3

    if-ne v2, v3, :cond_cf

    add-int/lit8 v2, p2, 0x2

    if-ge v2, v0, :cond_cf

    add-int/lit8 v2, p2, 0x1

    .line 715
    aget-byte p2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 716
    aget-byte v2, p0, v2

    add-int/lit8 v6, v3, 0x1

    .line 717
    aget-byte v3, p0, v3

    shl-int/lit8 p1, p1, 0x12

    shl-int/lit8 v7, p2, 0xc

    xor-int/2addr p1, v7

    shl-int/lit8 v7, v2, 0x6

    xor-int/2addr p1, v7

    const v7, 0x381f80

    xor-int/2addr v7, v3

    xor-int/2addr p1, v7

    and-int/lit16 p2, p2, 0xc0

    if-ne p2, v4, :cond_cf

    and-int/lit16 p2, v2, 0xc0

    if-ne p2, v4, :cond_cf

    and-int/lit16 p2, v3, 0xc0

    if-ne p2, v4, :cond_cf

    .line 729
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result p2

    if-nez p2, :cond_bc

    goto :goto_cf

    :cond_bc
    add-int/lit8 p2, v1, 0x1

    .line 732
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v2

    aput-char v2, p3, v1

    add-int/lit8 v1, p2, 0x1

    .line 733
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result p1

    aput-char p1, p3, p2

    move p1, v6

    goto/16 :goto_1a

    :cond_cf
    :goto_cf
    return v5

    :cond_d0
    return v1
.end method

.method public static encodeUTF8([CII[B)I
    .registers 13

    add-int v0, p1, p2

    .line 602
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    add-int/2addr p2, v1

    :goto_9
    const/16 v2, 0x80

    if-ge v1, p2, :cond_1d

    .line 605
    aget-char v3, p0, p1

    if-ge v3, v2, :cond_1d

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 606
    aget-char p1, p0, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v1

    move v1, v2

    move p1, v3

    goto :goto_9

    :cond_1d
    :goto_1d
    if-ge p1, v0, :cond_d8

    add-int/lit8 p2, p1, 0x1

    .line 610
    aget-char p1, p0, p1

    if-ge p1, v2, :cond_2d

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    .line 613
    aput-byte p1, p3, v1

    :goto_2a
    move p1, p2

    move v1, v3

    goto :goto_1d

    :cond_2d
    const/16 v3, 0x800

    if-ge p1, v3, :cond_44

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 616
    aput-byte v4, p3, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 617
    aput-byte p1, p3, v3

    :goto_42
    move p1, p2

    goto :goto_1d

    :cond_44
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt p1, v3, :cond_bc

    const v3, 0xe000

    if-ge p1, v3, :cond_bc

    add-int/lit8 v3, p2, -0x1

    .line 621
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    const-string v6, "encodeUTF8 error"

    const/4 v7, 0x1

    if-eqz v5, :cond_7c

    sub-int v5, v0, v3

    const/4 v8, 0x2

    if-ge v5, v8, :cond_62

    const/4 p1, -0x1

    goto :goto_82

    :cond_62
    add-int/lit8 v3, v3, 0x1

    .line 625
    aget-char v3, p0, v3

    .line 626
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 627
    invoke-static {p1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    goto :goto_82

    .line 629
    :cond_71
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/nio/charset/MalformedInputException;

    invoke-direct {p1, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {p0, v6, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 633
    :cond_7c
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_b1

    :goto_82
    if-gez p1, :cond_89

    add-int/lit8 p1, v1, 0x1

    .line 641
    aput-byte v4, p3, v1

    goto :goto_af

    :cond_89
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 643
    aput-byte v5, p3, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v5, p1, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 644
    aput-byte v5, p3, v3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 645
    aput-byte v4, p3, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 646
    aput-byte p1, p3, v3

    add-int/lit8 p2, p2, 0x1

    move p1, v1

    :goto_af
    move v1, p1

    goto :goto_42

    .line 634
    :cond_b1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/nio/charset/MalformedInputException;

    invoke-direct {p1, v7}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {p0, v6, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_bc
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 651
    aput-byte v5, p3, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 652
    aput-byte v4, p3, v3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 653
    aput-byte p1, p3, v1

    goto/16 :goto_2a

    :cond_d8
    return v1
.end method

.method public static firstIdentifier(C)Z
    .registers 3

    .line 394
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_b

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static getChars(BI[C)V
    .registers 7

    if-gez p0, :cond_6

    const/16 v0, 0x2d

    neg-int p0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const v1, 0xcccd

    mul-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 335
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    if-nez v1, :cond_24

    if-eqz v0, :cond_23

    add-int/lit8 p1, p1, -0x1

    .line 340
    aput-char v0, p2, p1

    :cond_23
    return-void

    :cond_24
    move p0, v1

    goto :goto_7
.end method

.method public static getChars(II[C)V
    .registers 7

    if-gez p0, :cond_6

    const/16 v0, 0x2d

    neg-int p0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_28

    .line 297
    div-int/lit8 v1, p0, 0x64

    shl-int/lit8 v2, v1, 0x6

    shl-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 301
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v2, v2, p0

    aput-char v2, p2, p1

    add-int/lit8 p1, p1, -0x1

    .line 302
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    move p0, v1

    goto :goto_7

    :cond_28
    :goto_28
    const v1, 0xcccd

    mul-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 310
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    if-nez v1, :cond_45

    if-eqz v0, :cond_44

    add-int/lit8 p1, p1, -0x1

    .line 315
    aput-char v0, p2, p1

    :cond_44
    return-void

    :cond_45
    move p0, v1

    goto :goto_28
.end method

.method public static getChars(JI[C)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_a

    const/16 v0, 0x2d

    neg-long p0, p0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    if-lez v1, :cond_35

    const-wide/16 v1, 0x64

    .line 246
    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p0, p0

    add-int/lit8 p2, p2, -0x1

    .line 250
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char p1, p1, p0

    aput-char p1, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 251
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, p1, p0

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_b

    :cond_35
    long-to-int p0, p0

    :goto_36
    const/high16 p1, 0x10000

    if-lt p0, p1, :cond_57

    .line 258
    div-int/lit8 p1, p0, 0x64

    shl-int/lit8 v1, p1, 0x6

    shl-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    .line 262
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v1, v1, p0

    aput-char v1, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 263
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, v1, p0

    aput-char p0, p3, p2

    move p0, p1

    goto :goto_36

    :cond_57
    :goto_57
    const p1, 0xcccd

    mul-int/2addr p1, p0

    ushr-int/lit8 p1, p1, 0x13

    shl-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    .line 271
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p0, v1, p0

    aput-char p0, p3, p2

    if-nez p1, :cond_74

    if-eqz v0, :cond_73

    add-int/lit8 p2, p2, -0x1

    .line 276
    aput-char v0, p3, p2

    :cond_73
    return-void

    :cond_74
    move p0, p1

    goto :goto_57
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_e

    .line 105
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static isIdent(C)Z
    .registers 3

    .line 398
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_b

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static loadPropertiesFromFile()V
    .registers 2

    .line 109
    new-instance v0, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_15

    .line 122
    :try_start_d
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public static stringSize(I)I
    .registers 3

    const/4 v0, 0x0

    .line 367
    :goto_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static stringSize(J)I
    .registers 8

    const/4 v0, 0x1

    const-wide/16 v1, 0xa

    move-wide v3, v1

    :goto_4
    const/16 v5, 0x13

    if-ge v0, v5, :cond_11

    cmp-long v5, p0, v3

    if-gez v5, :cond_d

    return v0

    :cond_d
    mul-long/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return v5
.end method
