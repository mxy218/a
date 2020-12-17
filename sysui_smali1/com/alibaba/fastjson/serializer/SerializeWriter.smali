.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeautres:I


# instance fields
.field protected beanToArray:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 140
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .line 68
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-lez p2, :cond_c

    .line 119
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void

    .line 117
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative initial size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 6

    .line 85
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 88
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 90
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz p1, :cond_1a

    .line 91
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_20

    :cond_1a
    const/16 p1, 0x800

    new-array p1, p1, [C

    .line 93
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 97
    :goto_20
    array-length p1, p3

    const/4 v0, 0x0

    :goto_22
    if-ge v0, p1, :cond_2e

    aget-object v1, p3, v0

    .line 98
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 100
    :cond_2e
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 4

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 384
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1a

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 388
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 391
    :cond_1a
    array-length v2, v1

    if-ge v2, v0, :cond_1f

    .line 392
    new-array v1, v0, [B

    .line 395
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result p0

    .line 396
    invoke-virtual {p1, v1, v2, p0}, Ljava/io/OutputStream;->write([BII)V

    return p0
.end method

.method private encodeToUTF8Bytes()[B
    .registers 5

    .line 401
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 402
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1a

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 406
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    :cond_1a
    array-length v2, v1

    if-ge v2, v0, :cond_1f

    .line 410
    new-array v1, v0, [B

    .line 413
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result p0

    .line 414
    new-array v0, p0, [B

    .line 415
    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static isSpecial(CI)Z
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-ne p0, v1, :cond_14

    .line 1578
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    move v0, v2

    :cond_13
    return v0

    :cond_14
    const/16 p1, 0x23

    const/16 v1, 0x5c

    if-le p0, p1, :cond_1d

    if-eq p0, v1, :cond_1d

    return v0

    :cond_1d
    const/16 p1, 0x1f

    if-le p0, p1, :cond_29

    if-eq p0, v1, :cond_29

    const/16 p1, 0x22

    if-ne p0, p1, :cond_28

    goto :goto_29

    :cond_28
    return v0

    :cond_29
    :goto_29
    return v2
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1617
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_8

    .line 1618
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1620
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1774
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 1776
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1777
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 1778
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x5c

    const/16 v8, 0x3a

    const/4 v9, 0x0

    const/16 v10, 0x27

    if-le v4, v6, :cond_6d

    .line 1779
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_6a

    if-nez v3, :cond_2b

    .line 1781
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1782
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1783
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_2b
    move v4, v9

    :goto_2c
    if-ge v4, v3, :cond_3d

    .line 1789
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1790
    array-length v11, v2

    if-ge v6, v11, :cond_3a

    aget-byte v6, v2, v6

    if-eqz v6, :cond_3a

    goto :goto_3e

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3d
    move v5, v9

    :goto_3e
    if-eqz v5, :cond_43

    .line 1797
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_43
    :goto_43
    if-ge v9, v3, :cond_61

    .line 1800
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1801
    array-length v6, v2

    if-ge v4, v6, :cond_5b

    aget-byte v6, v2, v4

    if-eqz v6, :cond_5b

    .line 1802
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1803
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5e

    .line 1805
    :cond_5b
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_61
    if-eqz v5, :cond_66

    .line 1809
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1811
    :cond_66
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 1815
    :cond_6a
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_6d
    if-nez v3, :cond_98

    .line 1819
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x3

    .line 1820
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_7d

    add-int/lit8 v1, v1, 0x3

    .line 1821
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1823
    :cond_7d
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v2

    .line 1824
    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v2

    .line 1825
    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v1, v2

    return-void

    .line 1829
    :cond_98
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v11, v6, v3

    .line 1832
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v9, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1833
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v6

    move v3, v9

    :goto_a5
    if-ge v1, v11, :cond_10f

    .line 1838
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v12, v1

    .line 1839
    array-length v14, v2

    if-ge v13, v14, :cond_10a

    aget-byte v14, v2, v13

    if-eqz v14, :cond_10a

    if-nez v3, :cond_e8

    add-int/lit8 v4, v4, 0x3

    .line 1842
    array-length v3, v12

    if-le v4, v3, :cond_bc

    .line 1843
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1845
    :cond_bc
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1847
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v1, 0x3

    sub-int v15, v11, v1

    sub-int/2addr v15, v5

    invoke-static {v3, v12, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1848
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1849
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v6

    .line 1850
    aput-char v7, v1, v12

    add-int/lit8 v3, v12, 0x1

    .line 1851
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v12, v12, v13

    aput-char v12, v1, v3

    add-int/lit8 v11, v11, 0x2

    .line 1853
    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v12, -0x2

    aput-char v10, v1, v12

    move v14, v3

    move v3, v5

    goto :goto_10b

    :cond_e8
    add-int/lit8 v4, v4, 0x1

    .line 1858
    array-length v12, v12

    if-le v4, v12, :cond_f0

    .line 1859
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1861
    :cond_f0
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1863
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v1, 0x1

    add-int/lit8 v15, v1, 0x2

    sub-int v9, v11, v1

    invoke-static {v12, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1864
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v9, v1

    .line 1865
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v13

    aput-char v1, v9, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_10b

    :cond_10a
    move v14, v1

    :goto_10b
    add-int/lit8 v1, v14, 0x1

    const/4 v9, 0x0

    goto :goto_a5

    .line 1871
    :cond_10f
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v4, v5

    aput-char v8, v0, v4

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 2

    .line 267
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, "null"

    goto :goto_9

    .line 255
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 4

    if-nez p1, :cond_4

    const-string p1, "null"

    .line 261
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_b

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 435
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_17

    .line 436
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_17
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method protected computeFeatures()V
    .registers 5

    .line 153
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 154
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 155
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 156
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_37

    move v0, v1

    goto :goto_38

    :cond_37
    move v0, v2

    :goto_38
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_45

    move v0, v1

    goto :goto_46

    :cond_45
    move v0, v2

    :goto_46
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 159
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_61

    move v0, v1

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 160
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6f

    move v0, v1

    goto :goto_70

    :cond_6f
    move v0, v2

    :goto_70
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 161
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7d

    move v0, v1

    goto :goto_7e

    :cond_7d
    move v0, v2

    :goto_7e
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_94

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    and-int/2addr v0, v3

    if-nez v0, :cond_94

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_94

    goto :goto_95

    :cond_94
    move v1, v2

    :cond_95
    :goto_95
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_9e

    const/16 v0, 0x27

    goto :goto_a0

    :cond_9e
    const/16 v0, 0x22

    :goto_a0
    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 4

    if-eqz p2, :cond_2d

    .line 126
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 128
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, p2, :cond_1c

    .line 129
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p2

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_37

    .line 130
    :cond_1c
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, p2, :cond_37

    .line 131
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p2

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_37

    .line 134
    :cond_2d
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 137
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public expandCapacity(I)V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_c

    goto :goto_d

    :cond_c
    move p1, v0

    .line 249
    :goto_d
    new-array p1, p1, [C

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public flush()V
    .registers 5

    .line 1875
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_5

    return-void

    .line 1880
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 1881
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_15

    .line 1885
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    :catch_15
    move-exception p0

    .line 1883
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBufferLength()I
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p0, p0

    return p0
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 184
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .registers 2

    .line 180
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isNotWriteDefaultValue()Z
    .registers 1

    .line 176
    iget-boolean p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return p0
.end method

.method public isSortField()Z
    .registers 1

    .line 172
    iget-boolean p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return p0
.end method

.method public size()I
    .registers 1

    .line 420
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return p0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .registers 3

    if-eqz p1, :cond_10

    const-string v0, "UTF-8"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 366
    :cond_b
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_12

    .line 364
    :cond_10
    :goto_10
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1c

    .line 374
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_d

    .line 375
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object p0

    return-object p0

    .line 377
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 371
    :cond_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toCharArray()[C
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_f

    .line 344
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v1, v0, [C

    .line 345
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 341
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "writer not null"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_14

    .line 358
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [C

    .line 359
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 355
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "writer not null"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 424
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .registers 5

    .line 191
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 192
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_15

    .line 193
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_11

    .line 194
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_15

    .line 196
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    move v0, v1

    .line 200
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char p1, p1

    aput-char p1, v1, v2

    .line 201
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_6

    .line 444
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8

    .line 279
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 280
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2e

    .line 281
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_10

    .line 282
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2e

    .line 285
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 286
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 287
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    .line 291
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    if-gt p3, p2, :cond_2c

    move v0, p3

    move p2, v3

    goto :goto_2e

    :cond_2c
    move p2, v3

    goto :goto_10

    :cond_2e
    :goto_2e
    add-int/2addr p3, p2

    .line 295
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 296
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1095
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "[]"

    .line 1096
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 1100
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    :goto_15
    const/16 v5, 0x5d

    if-ge v3, v1, :cond_c1

    .line 1103
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-nez v6, :cond_26

    move v11, v8

    goto :goto_4a

    .line 1109
    :cond_26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v2

    move v11, v10

    :goto_2c
    if-ge v10, v9, :cond_4a

    .line 1110
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_43

    const/16 v12, 0x7e

    if-gt v11, v12, :cond_43

    if-eq v11, v7, :cond_43

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_41

    goto :goto_43

    :cond_41
    move v11, v2

    goto :goto_44

    :cond_43
    :goto_43
    move v11, v8

    :goto_44
    if-eqz v11, :cond_47

    goto :goto_4a

    :cond_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    :cond_4a
    :goto_4a
    const/16 v9, 0x2c

    const/16 v10, 0x5b

    if-eqz v11, :cond_79

    .line 1121
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1122
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v0, v2

    .line 1123
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 1124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1126
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_67
    if-nez v1, :cond_6f

    const-string v1, "null"

    .line 1130
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_72

    .line 1132
    :cond_6f
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 1135
    :cond_75
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 1139
    :cond_79
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3

    .line 1140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ne v3, v11, :cond_89

    add-int/lit8 v5, v5, 0x1

    .line 1143
    :cond_89
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_93

    .line 1144
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1145
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_93
    if-nez v3, :cond_9c

    .line 1149
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v10, v5, v4

    goto :goto_a2

    .line 1151
    :cond_9c
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v9, v5, v4

    .line 1153
    :goto_a2
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, 0x1

    aput-char v7, v4, v8

    .line 1154
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v6, v2, v4, v8, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    .line 1156
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v5, 0x1

    aput-char v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto/16 :goto_15

    .line 1158
    :cond_c1
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v4, 0x1

    aput-char v5, p1, v4

    .line 1159
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Z)V
    .registers 2

    if-eqz p1, :cond_9

    const-string/jumbo p1, "true"

    .line 1217
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_e

    :cond_9
    const-string p1, "false"

    .line 1219
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method public write([CII)V
    .registers 7

    if-ltz p2, :cond_44

    .line 212
    array-length v0, p1

    if-gt p2, v0, :cond_44

    if-ltz p3, :cond_44

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_44

    if-ltz v0, :cond_44

    if-nez p3, :cond_11

    return-void

    .line 222
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 223
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3a

    .line 224
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_21

    .line 225
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3a

    .line 228
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 229
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_21

    move v0, p3

    .line 238
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 217
    :cond_44
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public writeByteArray([B)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 477
    array-length v2, v1

    .line 478
    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_c

    const/16 v3, 0x27

    goto :goto_e

    :cond_c
    const/16 v3, 0x22

    :goto_e
    if-nez v2, :cond_1d

    .line 481
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v1, :cond_17

    const-string v1, "\'\'"

    goto :goto_19

    :cond_17
    const-string v1, "\"\""

    .line 482
    :goto_19
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 486
    :cond_1d
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 488
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v2, -0x1

    .line 489
    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    .line 491
    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v9

    add-int/2addr v7, v8

    .line 493
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    const/16 v11, 0x3d

    const/4 v12, 0x0

    if-le v7, v10, :cond_b5

    .line 494
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_b2

    .line 495
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v7, v12

    :goto_3f
    if-ge v7, v5, :cond_7d

    add-int/lit8 v9, v7, 0x1

    .line 499
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    add-int/lit8 v9, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    ushr-int/lit8 v10, v7, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 502
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 503
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 504
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v7, v7, 0x3f

    .line 505
    aget-char v7, v4, v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v7, v9

    goto :goto_3f

    :cond_7d
    sub-int/2addr v2, v5

    if-lez v2, :cond_ae

    .line 512
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_8e

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_8e
    or-int v1, v5, v12

    shr-int/lit8 v5, v1, 0xc

    .line 515
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 516
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-ne v2, v8, :cond_a7

    and-int/lit8 v1, v1, 0x3f

    .line 517
    aget-char v1, v4, v1

    goto :goto_a8

    :cond_a7
    move v1, v11

    :goto_a8
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 518
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 521
    :cond_ae
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 524
    :cond_b2
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 526
    :cond_b5
    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 527
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v9, 0x1

    aput-char v3, v10, v9

    move v9, v12

    :goto_be
    if-ge v9, v5, :cond_102

    add-int/lit8 v10, v9, 0x1

    .line 532
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v14, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v14, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v9, v14

    .line 535
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x12

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v4, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    ushr-int/lit8 v16, v9, 0xc

    and-int/lit8 v16, v16, 0x3f

    .line 536
    aget-char v16, v4, v16

    aput-char v16, v14, v15

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x6

    and-int/lit8 v16, v16, 0x3f

    .line 537
    aget-char v16, v4, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    and-int/lit8 v9, v9, 0x3f

    .line 538
    aget-char v9, v4, v9

    aput-char v9, v14, v15

    move v9, v10

    goto :goto_be

    :cond_102
    sub-int/2addr v2, v5

    if-lez v2, :cond_13b

    .line 545
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_113

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_113
    or-int v1, v5, v12

    .line 548
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v7, -0x5

    shr-int/lit8 v9, v1, 0xc

    aget-char v9, v4, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x4

    ushr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 549
    aget-char v9, v4, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x3

    if-ne v2, v8, :cond_132

    and-int/lit8 v1, v1, 0x3f

    .line 550
    aget-char v1, v4, v1

    goto :goto_133

    :cond_132
    move v1, v11

    :goto_133
    aput-char v1, v5, v6

    .line 551
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v7, -0x2

    aput-char v11, v1, v2

    .line 553
    :cond_13b
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v7, -0x1

    aput-char v3, v0, v7

    return-void
.end method

.method public writeDouble(DZ)V
    .registers 5

    .line 574
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 575
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 578
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    .line 579
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const-string p2, ".0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p2, 0x0

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 583
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_42

    .line 585
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/16 p1, 0x44

    .line 586
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_42

    .line 576
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :cond_42
    :goto_42
    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 598
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_14

    .line 599
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 600
    :cond_14
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_1c

    .line 601
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    :goto_1c
    if-eqz v0, :cond_35

    .line 605
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x27

    goto :goto_2b

    :cond_29
    const/16 p1, 0x22

    .line 606
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 607
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3c

    .line 610
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    :goto_3c
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1735
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .registers 8

    if-nez p1, :cond_8

    const-string p1, "null:"

    .line 1740
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 1744
    :cond_8
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    const/16 v0, 0x3a

    if-eqz p2, :cond_1d

    .line 1745
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_19

    .line 1746
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_52

    .line 1749
    :cond_19
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_52

    .line 1752
    :cond_1d
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_25

    .line 1753
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_52

    .line 1755
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2f

    move p2, v1

    goto :goto_30

    :cond_2f
    move p2, v2

    :goto_30
    move v3, v2

    .line 1756
    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 1757
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1758
    invoke-static {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v4

    if-eqz v4, :cond_43

    move p2, v1

    goto :goto_46

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_46
    :goto_46
    if-eqz p2, :cond_4c

    .line 1764
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_52

    .line 1766
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_52
    return-void
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .registers 8

    .line 1077
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1078
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 1080
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 1081
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1084
    :cond_11
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    .line 1086
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v2

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {p1, v2, v0, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1089
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1090
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, p0, -0x2

    aput-char v5, p1, v0

    add-int/lit8 p0, p0, -0x1

    const/16 v0, 0x3a

    .line 1091
    aput-char v0, p1, p0

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .registers 4

    .line 1164
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1165
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_e

    const-string p1, "\u0000"

    .line 1167
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_15

    .line 1169
    :cond_e
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .registers 5

    .line 1308
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1309
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1310
    invoke-virtual {p0, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .registers 4

    .line 1302
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1303
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1304
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .registers 9

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_63

    .line 1224
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_9

    goto :goto_63

    :cond_9
    if-gez p3, :cond_13

    neg-int v0, p3

    .line 1231
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_13
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1233
    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1234
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1235
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_37

    .line 1236
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_34

    .line 1237
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1238
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 1242
    :cond_34
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1245
    :cond_37
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1246
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1248
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 1252
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 1254
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1256
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 1257
    aput-char v0, p2, p1

    .line 1259
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p0, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    return-void

    .line 1225
    :cond_63
    :goto_63
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1226
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .registers 10

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_69

    .line 1263
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_b

    goto :goto_69

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_19

    neg-long v0, p3

    .line 1270
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_19
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 1272
    :goto_1d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1273
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1274
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_3d

    .line 1275
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_3a

    .line 1276
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1277
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 1281
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1284
    :cond_3d
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1285
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1287
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 1291
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 1293
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1295
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 1296
    aput-char v0, p2, p1

    .line 1298
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p4, p0, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    return-void

    .line 1264
    :cond_69
    :goto_69
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1265
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_c

    .line 1601
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1602
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 1607
    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1c

    .line 1608
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1609
    :cond_1c
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_28

    .line 1610
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1612
    :cond_28
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :goto_2f
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1314
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_43

    .line 1315
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_18

    .line 1316
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1317
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_14

    .line 1319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_52

    .line 1321
    :cond_14
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_52

    .line 1324
    :cond_18
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3a

    if-eqz v0, :cond_2d

    .line 1325
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1326
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1327
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_52

    .line 1328
    :cond_2d
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1329
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1330
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1331
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_52

    .line 1333
    :cond_3f
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 1337
    :cond_43
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1338
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_4f

    .line 1340
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_52

    .line 1342
    :cond_4f
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .registers 4

    .line 1625
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1626
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_c

    .line 1628
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_13

    .line 1630
    :cond_c
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .registers 10

    .line 1174
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_e

    .line 1175
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1176
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    :cond_e
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eqz p3, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    .line 1182
    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1183
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 1184
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v4, v0, :cond_39

    .line 1185
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_36

    .line 1186
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1187
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 1188
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1189
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    .line 1192
    :cond_36
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1195
    :cond_39
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1196
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1198
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 1202
    iget-char v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v5, v2, v4

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    .line 1204
    invoke-virtual {p2, v4, v3, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1206
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v2, p2, v0

    if-eqz p3, :cond_69

    const-string p2, ":true"

    .line 1209
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 p1, p1, 0x2

    invoke-static {p2, v4, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_77

    :cond_69
    const-string p2, ":false"

    .line 1211
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 p1, p1, 0x2

    const/4 p3, 0x6

    invoke-static {p2, v4, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_77
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1532
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1534
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 1537
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-le v1, v3, :cond_28

    .line 1538
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_25

    .line 1539
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1540
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1541
    invoke-virtual {p0, p3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 1544
    :cond_25
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1547
    :cond_28
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v6

    add-int/lit8 p1, v6, 0x2

    add-int v7, p1, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x22

    .line 1552
    aput-char v8, v3, v6

    .line 1553
    invoke-virtual {p2, v5, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1555
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1557
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p2, v7, 0x1

    .line 1560
    aput-char v4, p1, v7

    add-int/lit8 v0, p2, 0x1

    .line 1561
    aput-char v8, p1, p2

    .line 1564
    invoke-virtual {p3, v5, v2, p1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1565
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 p0, p0, -0x1

    aput-char v8, p1, p0

    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1348
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1351
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x4

    if-nez v2, :cond_14

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    move v6, v5

    goto :goto_1d

    .line 1357
    :cond_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, v3, v6

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v4, v7

    .line 1361
    :goto_1d
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    const/16 v8, 0x3a

    const/4 v9, 0x0

    if-le v4, v7, :cond_36

    .line 1362
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v7, :cond_33

    .line 1363
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1364
    invoke-virtual {v0, v1, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1365
    invoke-virtual {v0, v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 1368
    :cond_33
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1371
    :cond_36
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v7, v10

    add-int/lit8 v11, v10, 0x2

    add-int v12, v11, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    const/16 v14, 0x22

    .line 1376
    aput-char v14, v7, v10

    .line 1377
    invoke-virtual {v1, v9, v3, v7, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 1379
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1381
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v1, v12

    add-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 1384
    aput-char v8, v1, v12

    const/16 v7, 0x75

    if-nez v2, :cond_6b

    add-int/lit8 v0, v3, 0x1

    const/16 v2, 0x6e

    .line 1387
    aput-char v2, v1, v3

    add-int/lit8 v2, v0, 0x1

    .line 1388
    aput-char v7, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x6c

    .line 1389
    aput-char v3, v1, v2

    .line 1390
    aput-char v3, v1, v0

    return-void

    :cond_6b
    add-int/lit8 v8, v3, 0x1

    .line 1394
    aput-char v14, v1, v3

    add-int v3, v8, v6

    .line 1399
    invoke-virtual {v2, v9, v6, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, -0x1

    move v11, v1

    move v12, v11

    move v6, v4

    move v4, v8

    move v10, v9

    :goto_7a
    const/16 v15, 0x2028

    if-ge v4, v3, :cond_bb

    .line 1407
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v4

    const/16 v7, 0x5d

    if-lt v14, v7, :cond_98

    const/16 v7, 0x7f

    if-lt v14, v7, :cond_b4

    if-eq v14, v15, :cond_90

    const/16 v7, 0xa0

    if-ge v14, v7, :cond_b4

    :cond_90
    if-ne v11, v1, :cond_93

    move v11, v4

    :cond_93
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_b2

    .line 1425
    :cond_98
    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v14, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v7

    if-eqz v7, :cond_b4

    add-int/lit8 v9, v9, 0x1

    .line 1430
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v10, v7

    if-ge v14, v10, :cond_ad

    aget-byte v7, v7, v14

    if-ne v7, v5, :cond_ad

    add-int/lit8 v6, v6, 0x4

    :cond_ad
    if-ne v11, v1, :cond_b2

    move v11, v4

    move v12, v11

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v12, v4

    :goto_b3
    move v10, v14

    :cond_b4
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x75

    const/16 v14, 0x22

    goto :goto_7a

    :cond_bb
    if-lez v9, :cond_203

    add-int/2addr v6, v9

    .line 1444
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v6, v1, :cond_c6

    .line 1445
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1447
    :cond_c6
    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v1, 0x5c

    if-ne v9, v13, :cond_154

    if-ne v10, v15, :cond_f7

    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v4, v12, 0x6

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    .line 1454
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1455
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v1, v3, v12

    const/16 v1, 0x75

    .line 1456
    aput-char v1, v3, v2

    add-int/2addr v2, v13

    const/16 v1, 0x32

    .line 1457
    aput-char v1, v3, v2

    add-int/2addr v2, v13

    const/16 v1, 0x30

    .line 1458
    aput-char v1, v3, v2

    add-int/2addr v2, v13

    const/16 v1, 0x32

    .line 1459
    aput-char v1, v3, v2

    add-int/2addr v2, v13

    const/16 v1, 0x38

    .line 1460
    aput-char v1, v3, v2

    goto/16 :goto_203

    .line 1463
    :cond_f7
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v2

    if-ge v10, v4, :cond_13d

    aget-byte v2, v2, v10

    if-ne v2, v5, :cond_13d

    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v4, v12, 0x6

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    .line 1468
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v1, v3, v12

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x75

    .line 1472
    aput-char v4, v3, v2

    add-int/lit8 v2, v1, 0x1

    .line 1473
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v10, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v3, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v5, v10, 0x8

    and-int/lit8 v5, v5, 0xf

    .line 1474
    aget-char v5, v4, v5

    aput-char v5, v3, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v5, v10, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 1475
    aget-char v5, v4, v5

    aput-char v5, v3, v1

    and-int/lit8 v1, v10, 0xf

    .line 1476
    aget-char v1, v4, v1

    aput-char v1, v3, v2

    goto/16 :goto_203

    :cond_13d
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v4, v12, 0x2

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    .line 1481
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1482
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v1, v3, v12

    .line 1483
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v10

    aput-char v1, v3, v2

    goto/16 :goto_203

    :cond_154
    if-le v9, v13, :cond_203

    sub-int v3, v11, v8

    .line 1489
    :goto_158
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_203

    .line 1490
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1492
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v7, v6

    if-ge v4, v7, :cond_16b

    aget-byte v6, v6, v4

    if-nez v6, :cond_177

    :cond_16b
    const/16 v6, 0x2f

    if-ne v4, v6, :cond_1be

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1494
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_1be

    .line 1495
    :cond_177
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v1, v6, v11

    .line 1496
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v8, v8, v4

    if-ne v8, v5, :cond_1b2

    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x75

    .line 1497
    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    .line 1498
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v10, v4, 0xc

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    aput-char v10, v6, v8

    add-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit8 v10, v10, 0xf

    .line 1499
    aget-char v10, v9, v10

    aput-char v10, v6, v7

    add-int/lit8 v7, v8, 0x1

    ushr-int/lit8 v10, v4, 0x4

    and-int/lit8 v10, v10, 0xf

    .line 1500
    aget-char v10, v9, v10

    aput-char v10, v6, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 1501
    aget-char v4, v9, v4

    aput-char v4, v6, v7

    goto :goto_1ba

    :cond_1b2
    add-int/lit8 v8, v7, 0x1

    .line 1504
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v9, v4

    aput-char v4, v6, v7

    :goto_1ba
    move v11, v8

    const/16 v9, 0x75

    goto :goto_1ff

    :cond_1be
    if-ne v4, v15, :cond_1f6

    .line 1509
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v1, v6, v11

    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x75

    .line 1510
    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    .line 1511
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v11, v4, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v8

    add-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v11, v4, 0x8

    and-int/lit8 v11, v11, 0xf

    .line 1512
    aget-char v11, v10, v11

    aput-char v11, v6, v7

    add-int/lit8 v7, v8, 0x1

    ushr-int/lit8 v11, v4, 0x4

    and-int/lit8 v11, v11, 0xf

    .line 1513
    aget-char v11, v10, v11

    aput-char v11, v6, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 1514
    aget-char v4, v10, v4

    aput-char v4, v6, v7

    move v11, v8

    goto :goto_1ff

    :cond_1f6
    const/16 v9, 0x75

    .line 1517
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v4, v6, v11

    move v11, v7

    :goto_1ff
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_158

    .line 1525
    :cond_203
    :goto_203
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v13

    const/16 v2, 0x22

    aput-char v2, v1, v0

    return-void
.end method

.method public writeFloat(FZ)V
    .registers 5

    .line 557
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 558
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 561
    :cond_d
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    .line 562
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 565
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_42

    .line 567
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/16 p1, 0x46

    .line 568
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_42

    .line 559
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :cond_42
    :goto_42
    return-void
.end method

.method public writeInt(I)V
    .registers 5

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    const-string p1, "-2147483648"

    .line 453
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_a
    if-gez p1, :cond_14

    neg-int v0, p1

    .line 457
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_14
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 459
    :goto_18
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 460
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_33

    .line 461
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_28

    .line 462
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_33

    .line 464
    :cond_28
    new-array v1, v0, [C

    .line 465
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 p1, 0x0

    .line 466
    array-length v0, v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    .line 471
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 473
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeLong(J)V
    .registers 9

    .line 615
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 616
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_26

    const-wide v3, 0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_24

    const-wide v3, -0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gez v0, :cond_26

    :cond_24
    move v0, v1

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_3b

    if-eqz v0, :cond_35

    const-string p1, "\"-9223372036854775808\""

    .line 620
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string p1, "-9223372036854775808"

    .line 621
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_3a
    return-void

    :cond_3b
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_48

    neg-long v3, p1

    .line 625
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_4c

    :cond_48
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    .line 627
    :goto_4c
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v3

    if-eqz v0, :cond_53

    add-int/lit8 v1, v1, 0x2

    .line 629
    :cond_53
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    const/16 v5, 0x22

    if-le v1, v4, :cond_79

    .line 630
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_62

    .line 631
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_79

    .line 633
    :cond_62
    new-array v1, v3, [C

    .line 634
    invoke-static {p1, p2, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    if-eqz v0, :cond_74

    .line 636
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 637
    array-length p1, v1

    invoke-virtual {p0, v1, v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 638
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_78

    .line 640
    :cond_74
    array-length p1, v1

    invoke-virtual {p0, v1, v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    :goto_78
    return-void

    :cond_79
    :goto_79
    if-eqz v0, :cond_8b

    .line 647
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v0, v2

    add-int/lit8 v2, v1, -0x1

    .line 648
    invoke-static {p1, p2, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 649
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v5, p1, v2

    goto :goto_90

    .line 651
    :cond_8b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 654
    :goto_90
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeNull()V
    .registers 2

    const-string v0, "null"

    .line 658
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeNull(II)V
    .registers 3

    and-int/2addr p1, p2

    if-nez p1, :cond_c

    .line 666
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr p1, p2

    if-nez p1, :cond_c

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 672
    :cond_c
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_18

    const-string p1, "[]"

    .line 673
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_3f

    .line 674
    :cond_18
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_24

    const-string p1, ""

    .line 675
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_3f

    .line 676
    :cond_24
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_30

    const-string p1, "false"

    .line 677
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_3f

    .line 678
    :cond_30
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_3c

    const/16 p1, 0x30

    .line 679
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3f

    .line 681
    :cond_3c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_3f
    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3

    .line 662
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    .line 1644
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_8

    .line 1645
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_c

    :cond_8
    const/4 v0, 0x0

    .line 1647
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_c
    return-void
.end method

.method public writeString(Ljava/lang/String;C)V
    .registers 4

    .line 1635
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_b

    .line 1636
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_e

    .line 1639
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_e
    return-void
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_11

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_10

    .line 689
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_10
    return-void

    .line 694
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 695
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_1e

    add-int/lit8 v4, v4, 0x1

    .line 700
    :cond_1e
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/4 v6, 0x0

    const/16 v7, 0x2f

    const/16 v8, 0x30

    const/16 v9, 0x75

    const/16 v10, 0xc

    const/16 v11, 0x8

    const/16 v12, 0x22

    const/16 v13, 0x5c

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-le v4, v5, :cond_188

    .line 701
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_185

    .line 702
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 704
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v6, v3, :cond_17c

    .line 705
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 707
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_a1

    if-lt v3, v8, :cond_53

    const/16 v4, 0x39

    if-le v3, v4, :cond_175

    :cond_53
    const/16 v4, 0x61

    if-lt v3, v4, :cond_5b

    const/16 v4, 0x7a

    if-le v3, v4, :cond_175

    :cond_5b
    const/16 v4, 0x41

    if-lt v3, v4, :cond_63

    const/16 v4, 0x5a

    if-le v3, v4, :cond_175

    :cond_63
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_175

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_175

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_175

    .line 710
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 711
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 712
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 713
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 714
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 715
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_178

    .line 718
    :cond_a1
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_123

    if-eq v3, v11, :cond_118

    if-eq v3, v10, :cond_118

    const/16 v4, 0xa

    if-eq v3, v4, :cond_118

    const/16 v4, 0xd

    if-eq v3, v4, :cond_118

    const/16 v4, 0x9

    if-eq v3, v4, :cond_118

    if-eq v3, v12, :cond_118

    if-eq v3, v7, :cond_118

    if-ne v3, v13, :cond_c0

    goto :goto_118

    :cond_c0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_e3

    .line 733
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 734
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 735
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 736
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 737
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 738
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    add-int/2addr v3, v15

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_178

    :cond_e3
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_175

    .line 743
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 744
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 745
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 746
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 747
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 748
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_178

    .line 727
    :cond_118
    :goto_118
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 728
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_178

    .line 752
    :cond_123
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v4

    if-ge v3, v5, :cond_12c

    aget-byte v4, v4, v3

    if-nez v4, :cond_136

    :cond_12c
    if-ne v3, v7, :cond_175

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 754
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 755
    :cond_136
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 756
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v3

    if-ne v4, v14, :cond_16d

    .line 757
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 758
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 759
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 760
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 761
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_178

    .line 763
    :cond_16d
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_178

    .line 769
    :cond_175
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_178
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3b

    .line 772
    :cond_17c
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_184

    .line 774
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_184
    return-void

    .line 778
    :cond_185
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 781
    :cond_188
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v14, v5, 0x1

    add-int v10, v14, v3

    .line 784
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v11, v5

    .line 785
    invoke-virtual {v1, v6, v3, v11, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 787
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 789
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_256

    move v1, v14

    :goto_1a1
    if-ge v1, v10, :cond_1cf

    .line 793
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    if-lt v3, v8, :cond_1ad

    const/16 v6, 0x39

    if-le v3, v6, :cond_1cc

    :cond_1ad
    const/16 v6, 0x61

    if-lt v3, v6, :cond_1b5

    const/16 v6, 0x7a

    if-le v3, v6, :cond_1cc

    :cond_1b5
    const/16 v6, 0x41

    if-lt v3, v6, :cond_1bd

    const/16 v6, 0x5a

    if-le v3, v6, :cond_1cc

    :cond_1bd
    const/16 v6, 0x2c

    if-eq v3, v6, :cond_1cc

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_1cc

    const/16 v6, 0x5f

    if-eq v3, v6, :cond_1cc

    add-int/lit8 v4, v4, 0x5

    move v5, v1

    :cond_1cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a1

    .line 803
    :cond_1cf
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_1d7

    .line 804
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 806
    :cond_1d7
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_1d9
    if-lt v5, v14, :cond_240

    .line 809
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v5

    if-lt v1, v8, :cond_1e5

    const/16 v3, 0x39

    if-le v1, v3, :cond_23d

    :cond_1e5
    const/16 v3, 0x61

    if-lt v1, v3, :cond_1ed

    const/16 v3, 0x7a

    if-le v1, v3, :cond_23d

    :cond_1ed
    const/16 v3, 0x41

    if-lt v1, v3, :cond_1f5

    const/16 v3, 0x5a

    if-le v1, v3, :cond_23d

    :cond_1f5
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_23d

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_23d

    const/16 v3, 0x5f

    if-eq v1, v3, :cond_23d

    .line 813
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v5, 0x6

    sub-int v7, v10, v5

    sub-int/2addr v7, v15

    invoke-static {v3, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v5

    .line 815
    aput-char v9, v3, v4

    add-int/lit8 v4, v5, 0x2

    .line 816
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v5, 0x3

    ushr-int/lit8 v7, v1, 0x8

    and-int/lit8 v7, v7, 0xf

    .line 817
    aget-char v7, v6, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v5, 0x4

    ushr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 818
    aget-char v7, v6, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v5, 0x5

    and-int/lit8 v1, v1, 0xf

    .line 819
    aget-char v1, v6, v1

    aput-char v1, v3, v4

    add-int/lit8 v10, v10, 0x5

    :cond_23d
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d9

    :cond_240
    if-eqz v2, :cond_24e

    .line 825
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v0, -0x2

    aput-char v12, v1, v3

    sub-int/2addr v0, v15

    .line 826
    aput-char v2, v1, v0

    goto :goto_255

    .line 828
    :cond_24e
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v15

    aput-char v12, v1, v0

    :goto_255
    return-void

    .line 834
    :cond_256
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_373

    move v1, v14

    :goto_25f
    if-ge v1, v10, :cond_293

    .line 838
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    if-eq v3, v12, :cond_28d

    if-eq v3, v7, :cond_28d

    if-ne v3, v13, :cond_26c

    goto :goto_28d

    :cond_26c
    const/16 v6, 0x8

    if-eq v3, v6, :cond_28d

    const/16 v6, 0xc

    if-eq v3, v6, :cond_28d

    const/16 v6, 0xa

    if-eq v3, v6, :cond_28d

    const/16 v6, 0xd

    if-eq v3, v6, :cond_28d

    const/16 v6, 0x9

    if-ne v3, v6, :cond_281

    goto :goto_28d

    :cond_281
    const/16 v6, 0x20

    if-ge v3, v6, :cond_288

    :goto_285
    add-int/lit8 v4, v4, 0x5

    goto :goto_28f

    :cond_288
    const/16 v6, 0x7f

    if-lt v3, v6, :cond_290

    goto :goto_285

    :cond_28d
    :goto_28d
    add-int/lit8 v4, v4, 0x1

    :goto_28f
    move v5, v1

    :cond_290
    add-int/lit8 v1, v1, 0x1

    goto :goto_25f

    .line 871
    :cond_293
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_29b

    .line 872
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 874
    :cond_29b
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_29d
    if-lt v5, v14, :cond_35d

    .line 877
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v1, v5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_341

    const/16 v6, 0xc

    if-eq v3, v6, :cond_341

    const/16 v11, 0xa

    if-eq v3, v11, :cond_341

    const/16 v11, 0xd

    if-eq v3, v11, :cond_341

    const/16 v11, 0x9

    if-ne v3, v11, :cond_2b9

    goto/16 :goto_341

    :cond_2b9
    if-eq v3, v12, :cond_32e

    if-eq v3, v7, :cond_32e

    if-ne v3, v13, :cond_2c0

    goto :goto_32e

    :cond_2c0
    const/16 v11, 0x20

    if-ge v3, v11, :cond_2f1

    add-int/lit8 v11, v5, 0x1

    add-int/lit8 v4, v5, 0x6

    sub-int v16, v10, v5

    add-int/lit8 v6, v16, -0x1

    .line 902
    invoke-static {v1, v11, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v5

    .line 904
    aput-char v9, v1, v11

    add-int/lit8 v4, v5, 0x2

    .line 905
    aput-char v8, v1, v4

    add-int/lit8 v4, v5, 0x3

    .line 906
    aput-char v8, v1, v4

    add-int/lit8 v4, v5, 0x4

    .line 907
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    aget-char v11, v6, v3

    aput-char v11, v1, v4

    add-int/lit8 v4, v5, 0x5

    add-int/2addr v3, v15

    .line 908
    aget-char v3, v6, v3

    aput-char v3, v1, v4

    :goto_2ee
    add-int/lit8 v10, v10, 0x5

    goto :goto_359

    :cond_2f1
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_359

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v5, 0x6

    sub-int v11, v10, v5

    sub-int/2addr v11, v15

    .line 914
    invoke-static {v1, v4, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v5

    .line 916
    aput-char v9, v1, v4

    add-int/lit8 v4, v5, 0x2

    .line 917
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v6, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v5, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    .line 918
    aget-char v11, v6, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v5, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    .line 919
    aget-char v11, v6, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v5, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 920
    aget-char v3, v6, v3

    aput-char v3, v1, v4

    goto :goto_2ee

    .line 894
    :cond_32e
    :goto_32e
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v5, 0x2

    sub-int v11, v10, v5

    sub-int/2addr v11, v15

    invoke-static {v1, v4, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v5

    .line 896
    aput-char v3, v1, v4

    goto :goto_357

    .line 884
    :cond_341
    :goto_341
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v5, 0x2

    sub-int v11, v10, v5

    sub-int/2addr v11, v15

    invoke-static {v1, v4, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v5

    .line 886
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v4

    :goto_357
    add-int/lit8 v10, v10, 0x1

    :cond_359
    :goto_359
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_29d

    :cond_35d
    if-eqz v2, :cond_36b

    .line 926
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v0, -0x2

    aput-char v12, v1, v3

    sub-int/2addr v0, v15

    .line 927
    aput-char v2, v1, v0

    goto :goto_372

    .line 929
    :cond_36b
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v15

    aput-char v12, v1, v0

    :goto_372
    return-void

    :cond_373
    move v11, v5

    move/from16 v17, v11

    move v12, v6

    move v3, v14

    :goto_378
    if-ge v3, v10, :cond_3c4

    .line 941
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v7, v7, v3

    const/16 v8, 0x2028

    if-ne v7, v8, :cond_390

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x4

    if-ne v11, v5, :cond_38c

    :goto_388
    move v11, v3

    move/from16 v17, v11

    goto :goto_38e

    :cond_38c
    :goto_38c
    move/from16 v17, v3

    :goto_38e
    move v12, v7

    goto :goto_3bd

    :cond_390
    const/16 v8, 0x5d

    if-lt v7, v8, :cond_3a4

    const/16 v8, 0x7f

    if-lt v7, v8, :cond_3bd

    const/16 v8, 0xa0

    if-ge v7, v8, :cond_3bd

    if-ne v11, v5, :cond_39f

    move v11, v3

    :cond_39f
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_38c

    .line 969
    :cond_3a4
    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v8

    if-eqz v8, :cond_3bd

    add-int/lit8 v6, v6, 0x1

    .line 974
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v12, v8

    if-ge v7, v12, :cond_3ba

    aget-byte v8, v8, v7

    const/4 v12, 0x4

    if-ne v8, v12, :cond_3ba

    add-int/lit8 v4, v4, 0x4

    :cond_3ba
    if-ne v11, v5, :cond_38c

    goto :goto_388

    :cond_3bd
    :goto_3bd
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x2f

    const/16 v8, 0x30

    goto :goto_378

    :cond_3c4
    if-lez v6, :cond_50b

    add-int/2addr v4, v6

    .line 988
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v4, v3, :cond_3cf

    .line 989
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 991
    :cond_3cf
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ne v6, v15, :cond_45d

    const/16 v1, 0x2028

    if-ne v12, v1, :cond_3ff

    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x6

    sub-int v10, v10, v17

    sub-int/2addr v10, v15

    .line 998
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v17

    .line 1000
    aput-char v9, v3, v1

    add-int/2addr v1, v15

    const/16 v4, 0x32

    .line 1001
    aput-char v4, v3, v1

    add-int/2addr v1, v15

    const/16 v4, 0x30

    .line 1002
    aput-char v4, v3, v1

    add-int/2addr v1, v15

    const/16 v4, 0x32

    .line 1003
    aput-char v4, v3, v1

    add-int/2addr v1, v15

    const/16 v4, 0x38

    .line 1004
    aput-char v4, v3, v1

    goto/16 :goto_50b

    .line 1007
    :cond_3ff
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v1

    if-ge v12, v3, :cond_445

    aget-byte v1, v1, v12

    const/4 v3, 0x4

    if-ne v1, v3, :cond_445

    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x6

    sub-int v10, v10, v17

    sub-int/2addr v10, v15

    .line 1012
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v17

    add-int/lit8 v4, v1, 0x1

    .line 1016
    aput-char v9, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 1017
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v12, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v12, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 1018
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v12, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 1019
    aget-char v6, v5, v6

    aput-char v6, v3, v4

    and-int/lit8 v4, v12, 0xf

    .line 1020
    aget-char v4, v5, v4

    aput-char v4, v3, v1

    goto/16 :goto_50b

    :cond_445
    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x2

    sub-int v10, v10, v17

    sub-int/2addr v10, v15

    .line 1025
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v17

    .line 1027
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v12

    aput-char v4, v3, v1

    goto/16 :goto_50b

    :cond_45d
    if-le v6, v15, :cond_50b

    sub-int v3, v11, v14

    .line 1033
    :goto_461
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_50b

    .line 1034
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1036
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v6, v5

    if-ge v4, v6, :cond_478

    aget-byte v5, v5, v4

    if-nez v5, :cond_475

    goto :goto_478

    :cond_475
    const/16 v5, 0x2f

    goto :goto_484

    :cond_478
    :goto_478
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_4c7

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1038
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_4c7

    .line 1039
    :goto_484
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v13, v6, v11

    .line 1040
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v8, v8, v4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_4be

    add-int/lit8 v8, v7, 0x1

    .line 1041
    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    .line 1042
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v4, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v11, v12

    aput-char v12, v6, v8

    add-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v12, v4, 0x8

    and-int/lit8 v12, v12, 0xf

    .line 1043
    aget-char v12, v11, v12

    aput-char v12, v6, v7

    add-int/lit8 v7, v8, 0x1

    ushr-int/lit8 v12, v4, 0x4

    and-int/lit8 v12, v12, 0xf

    .line 1044
    aget-char v12, v11, v12

    aput-char v12, v6, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 1045
    aget-char v4, v11, v4

    aput-char v4, v6, v7

    goto :goto_4fe

    :cond_4be
    add-int/lit8 v8, v7, 0x1

    .line 1048
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v11, v4

    aput-char v4, v6, v7

    goto :goto_4fe

    :cond_4c7
    const/4 v10, 0x4

    const/16 v6, 0x2028

    if-ne v4, v6, :cond_500

    .line 1053
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v13, v6, v11

    add-int/lit8 v8, v7, 0x1

    .line 1054
    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    .line 1055
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v4, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v11, v12

    aput-char v12, v6, v8

    add-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v12, v4, 0x8

    and-int/lit8 v12, v12, 0xf

    .line 1056
    aget-char v12, v11, v12

    aput-char v12, v6, v7

    add-int/lit8 v7, v8, 0x1

    ushr-int/lit8 v12, v4, 0x4

    and-int/lit8 v12, v12, 0xf

    .line 1057
    aget-char v12, v11, v12

    aput-char v12, v6, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 1058
    aget-char v4, v11, v4

    aput-char v4, v6, v7

    :goto_4fe
    move v11, v8

    goto :goto_507

    .line 1061
    :cond_500
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v11, 0x1

    aput-char v4, v6, v11

    move v11, v7

    :goto_507
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_461

    :cond_50b
    :goto_50b
    if-eqz v2, :cond_51b

    .line 1069
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v0, -0x2

    const/16 v4, 0x22

    aput-char v4, v1, v3

    sub-int/2addr v0, v15

    .line 1070
    aput-char v2, v1, v0

    goto :goto_524

    :cond_51b
    const/16 v4, 0x22

    .line 1072
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v15

    aput-char v4, v1, v0

    :goto_524
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    .line 1653
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 1654
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_f

    .line 1655
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1657
    :cond_f
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1658
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 1662
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1663
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 1664
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6b

    .line 1665
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_68

    .line 1666
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1667
    :goto_38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 1668
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v5, :cond_57

    if-eq v1, v6, :cond_57

    if-eq v1, v7, :cond_57

    if-ne v1, v4, :cond_53

    .line 1669
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1670
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_57

    .line 1674
    :cond_53
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_61

    .line 1671
    :cond_57
    :goto_57
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1672
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 1677
    :cond_64
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 1680
    :cond_68
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1683
    :cond_6b
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int v9, v8, v1

    .line 1686
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v10, v3

    .line 1687
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1688
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v1, p1

    move v3, v0

    move p1, v8

    :goto_7e
    if-ge p1, v9, :cond_9b

    .line 1694
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, p1

    if-le v10, v5, :cond_94

    if-eq v10, v6, :cond_94

    if-eq v10, v7, :cond_94

    if-ne v10, v4, :cond_98

    .line 1695
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1696
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_98

    :cond_94
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    move v3, v10

    :cond_98
    add-int/lit8 p1, p1, 0x1

    goto :goto_7e

    :cond_9b
    add-int/2addr v2, v0

    .line 1704
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p1, p1

    if-le v2, p1, :cond_a4

    .line 1705
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1707
    :cond_a4
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, 0x1

    if-ne v0, p1, :cond_bf

    .line 1710
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    sub-int/2addr v9, v1

    sub-int/2addr v9, p1

    invoke-static {v0, v2, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1711
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v1

    .line 1712
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v3

    aput-char v1, v0, v2

    goto :goto_10b

    :cond_bf
    if-le v0, p1, :cond_10b

    .line 1714
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v10, v1, 0x2

    sub-int v11, v9, v1

    sub-int/2addr v11, p1

    invoke-static {v0, v2, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1715
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v1

    .line 1716
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v3

    aput-char v1, v0, v2

    add-int/2addr v9, p1

    add-int/lit8 v2, v2, -0x2

    :goto_da
    if-lt v2, v8, :cond_10b

    .line 1719
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v0, v2

    if-le v0, v5, :cond_f0

    if-eq v0, v6, :cond_f0

    if-eq v0, v7, :cond_f0

    if-ne v0, v4, :cond_108

    .line 1721
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1722
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 1723
    :cond_f0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v10, v2, 0x2

    sub-int v11, v9, v2

    sub-int/2addr v11, p1

    invoke-static {v1, v3, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v1, v2

    .line 1725
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v10, v0

    aput-char v0, v1, v3

    add-int/lit8 v9, v9, 0x1

    :cond_108
    add-int/lit8 v2, v2, -0x1

    goto :goto_da

    .line 1731
    :cond_10b
    :goto_10b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr p0, p1

    aput-char v7, v0, p0

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 309
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 307
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_20

    .line 325
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_d

    .line 326
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result p0

    return p0

    .line 328
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 329
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    array-length p0, p0

    return p0

    .line 322
    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
