.class public Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
.super Ljava/lang/Object;
.source "JavaObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 20
    instance-of p0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz p0, :cond_38

    .line 21
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 22
    instance-of p2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_17

    .line 23
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 24
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p2, 0x0

    aget-object p0, p0, p2

    .line 27
    :cond_17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 30
    instance-of p1, p0, Ljava/lang/Class;

    if-eqz p1, :cond_33

    .line 31
    check-cast p0, Ljava/lang/Class;

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 33
    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 36
    :cond_33
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_38
    instance-of p0, p2, Ljava/lang/Class;

    if-eqz p0, :cond_49

    const-class p0, Ljava/lang/Object;

    if-eq p2, p0, :cond_49

    const-class p0, Ljava/io/Serializable;

    if-eq p2, p0, :cond_49

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 45
    :cond_49
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method
