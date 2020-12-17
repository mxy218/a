.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 17
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 18
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/16 v0, 0x10

    const/4 v1, 0x2

    if-ne p3, v1, :cond_64

    .line 19
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_54

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_14

    goto :goto_54

    .line 25
    :cond_14
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v1

    .line 26
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_4d

    const-class p0, Ljava/lang/Short;

    if-ne p2, p0, :cond_24

    goto :goto_4d

    .line 32
    :cond_24
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_46

    const-class p0, Ljava/lang/Byte;

    if-ne p2, p0, :cond_2d

    goto :goto_46

    :cond_2d
    const-wide/32 p0, -0x80000000

    cmp-long p0, v1, p0

    if-ltz p0, :cond_41

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v1, p0

    if-gtz p0, :cond_41

    long-to-int p0, v1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 39
    :cond_41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_46
    :goto_46
    long-to-int p0, v1

    int-to-byte p0, p0

    .line 33
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4d
    :goto_4d
    long-to-int p0, v1

    int-to-short p0, p0

    .line 29
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 20
    :cond_54
    :goto_54
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 42
    :cond_64
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_b0

    .line 43
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_a0

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_74

    goto :goto_a0

    .line 49
    :cond_74
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 50
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 52
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_97

    const-class p0, Ljava/lang/Short;

    if-ne p2, p0, :cond_84

    goto :goto_97

    .line 56
    :cond_84
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_8e

    const-class p0, Ljava/lang/Byte;

    if-ne p2, p0, :cond_8d

    goto :goto_8e

    :cond_8d
    return-object p1

    .line 57
    :cond_8e
    :goto_8e
    invoke-virtual {p1}, Ljava/math/BigDecimal;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 53
    :cond_97
    :goto_97
    invoke-virtual {p1}, Ljava/math/BigDecimal;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 44
    :cond_a0
    :goto_a0
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-interface {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 46
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 63
    :cond_b0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_b8

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_b8
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_e2

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_c1

    goto :goto_e2

    .line 73
    :cond_c1
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_dd

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_ca

    goto :goto_dd

    .line 77
    :cond_ca
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_d8

    const-class p1, Ljava/lang/Byte;

    if-ne p2, p1, :cond_d3

    goto :goto_d8

    .line 81
    :cond_d3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 78
    :cond_d8
    :goto_d8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 74
    :cond_dd
    :goto_dd
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 70
    :cond_e2
    :goto_e2
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
