.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    }
.end annotation


# static fields
.field private static CACHE_SIZE:I = 0x400

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void

    .line 51
    :cond_12
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string p1, "json-path can not be null or empty"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 343
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 344
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .registers 4

    if-eqz p0, :cond_2a

    .line 362
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_29

    .line 364
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    sget v2, Lcom/alibaba/fastjson/JSONPath;->CACHE_SIZE:I

    if-ge v1, v2, :cond_29

    .line 366
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    :cond_29
    return-object v0

    .line 359
    :cond_2a
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v0, "jsonpath can not be null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 333
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 338
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 339
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_a

    goto :goto_30

    .line 2004
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 2005
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2008
    :cond_19
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2b

    .line 2009
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2a

    .line 2010
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_2a
    return v0

    .line 2016
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 9

    .line 2021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2022
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 2024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2025
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 2027
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_26

    .line 2028
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    if-eqz v3, :cond_26

    .line 2031
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_26
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4f

    if-eqz v3, :cond_3b

    .line 2037
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_39

    goto :goto_3a

    :cond_39
    move v4, v5

    :goto_3a
    return v4

    .line 2040
    :cond_3b
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_4f

    .line 2041
    move-object p1, p0

    check-cast p1, Ljava/math/BigInteger;

    .line 2042
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 2044
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4f
    if-eqz v3, :cond_64

    .line 2049
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_64

    .line 2050
    check-cast p0, Ljava/math/BigInteger;

    .line 2051
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 2053
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2058
    :cond_64
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    .line 2059
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v0, :cond_70

    if-nez v2, :cond_78

    :cond_70
    if-eqz v0, :cond_74

    if-nez v3, :cond_78

    :cond_74
    if-eqz v2, :cond_87

    if-eqz v1, :cond_87

    .line 2062
    :cond_78
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_85

    goto :goto_86

    :cond_85
    move v4, v5

    :goto_86
    return v4

    :cond_87
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 318
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2070
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2074
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    const-string v1, "/"

    .line 391
    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 393
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 394
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_2f
    return-object p0
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 406
    :cond_3
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 410
    :cond_a
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    instance-of v0, p2, Ljava/util/Map;

    const-string v1, "/"

    if-eqz v0, :cond_58

    .line 413
    check-cast p2, Ljava/util/Map;

    .line 415
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 416
    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 419
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_45

    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_1d

    :cond_57
    return-void

    .line 427
    :cond_58
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_92

    .line 428
    check-cast p2, Ljava/util/Collection;

    .line 431
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_63
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_81

    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {p0, v3, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_91
    return-void

    .line 440
    :cond_92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 443
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_a0
    if-ge v2, v0, :cond_cc

    .line 446
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 448
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_ba

    :cond_b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ba
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {p0, v4, v3, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_cc
    return-void

    .line 456
    :cond_cd
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_13e

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_da

    goto :goto_13e

    .line 460
    :cond_da
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 461
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_13e

    .line 462
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 465
    :try_start_e4
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 466
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f0
    :goto_f0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 469
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_f0

    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12b

    :cond_11c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 471
    :goto_12b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_132} :catch_134

    goto :goto_f0

    :cond_133
    return-void

    :catch_134
    move-exception p0

    .line 475
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "toJSON error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_13e
    :goto_13e
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 380
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 381
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 382
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 353
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 354
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 348
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 349
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2

    .line 323
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 324
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 325
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_b7

    .line 148
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_b7

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v0

    move v0, v1

    .line 160
    :goto_12
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v4

    if-ge v0, v5, :cond_28

    .line 161
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1d

    move-object v3, v2

    .line 164
    :cond_1d
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v4, v4, v0

    invoke-interface {v4, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    if-eqz v2, :cond_9d

    .line 173
    instance-of p1, v2, Ljava/util/Collection;

    if-eqz p1, :cond_3c

    .line 174
    check-cast v2, Ljava/util/Collection;

    .line 175
    array-length p0, p2

    :goto_31
    if-ge v1, p0, :cond_3b

    aget-object p1, p2, v1

    .line 176
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3b
    return-void

    .line 181
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 185
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    array-length v4, p2

    add-int/2addr v4, v0

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 188
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    :goto_57
    array-length v2, p2

    if-ge v1, v2, :cond_64

    add-int v2, v0, v1

    .line 190
    aget-object v4, p2, v1

    invoke-static {p1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 198
    :cond_64
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    .line 199
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v0, :cond_75

    .line 200
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 201
    invoke-virtual {p2, p0, v3, p1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_75
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v0, :cond_7f

    .line 206
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {p2, p0, v3, p1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 210
    :cond_7f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 195
    :cond_85
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported array put operation. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_9d
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "value not found in path "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    :goto_b7
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move-object v2, p1

    move v1, v0

    .line 94
    :goto_9
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v3

    if-ge v1, v4, :cond_1a

    .line 95
    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    if-ne p0, p2, :cond_8

    return p1

    :cond_8
    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 116
    :cond_c
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_28

    .line 117
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 118
    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return p1

    :cond_27
    return v0

    .line 128
    :cond_28
    invoke-static {p0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getFieldValue error."

    if-nez p1, :cond_5

    return-void

    .line 2171
    :cond_5
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_30

    .line 2172
    check-cast p1, Ljava/util/Map;

    .line 2174
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2175
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2176
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2180
    :cond_19
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2181
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_21

    :cond_2f
    return-void

    .line 2186
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2188
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 2191
    :try_start_3a
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_8b

    if-eqz v2, :cond_74

    .line 2194
    :try_start_40
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2195
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_40 .. :try_end_47} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_8b

    return-void

    :catch_48
    move-exception p1

    .line 2199
    :try_start_49
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_5e
    move-exception p1

    .line 2197
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 2203
    :cond_74
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2205
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_89} :catch_8b

    goto :goto_7c

    :cond_8a
    return-void

    :catch_8b
    move-exception p1

    .line 2209
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", segement "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 2213
    :cond_ad
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_c4

    .line 2214
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 2216
    :goto_b4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c4

    .line 2217
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2218
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_c4
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 80
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 81
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method

.method evalSize(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 2305
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_f

    .line 2306
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    .line 2309
    :cond_f
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_17

    .line 2310
    check-cast p1, [Ljava/lang/Object;

    array-length p0, p1

    return p0

    .line 2313
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2314
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 2317
    :cond_26
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_45

    const/4 p0, 0x0

    .line 2320
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    add-int/lit8 p0, p0, 0x1

    goto :goto_35

    :cond_44
    return p0

    .line 2328
    :cond_45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_50

    return v0

    .line 2335
    :cond_50
    :try_start_50
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_55

    return p0

    :catch_55
    move-exception p1

    .line 2337
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evalSize error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 1881
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 1882
    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_17

    .line 1885
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_16

    .line 1886
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :cond_16
    return-object p0

    .line 1890
    :cond_17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_2a

    .line 1891
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :cond_2a
    return-object p0

    .line 1897
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1898
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p2, :cond_42

    if-ge p2, v0, :cond_41

    .line 1902
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_41
    return-object p0

    .line 1906
    :cond_42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_4d

    add-int/2addr v0, p2

    .line 1907
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_4d
    return-object p0

    .line 1913
    :cond_4e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 2291
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p0

    .line 2292
    instance-of p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz p1, :cond_d

    .line 2293
    check-cast p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object p0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2083
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    const-string/jumbo v1, "size"

    if-eqz v0, :cond_22

    .line 2084
    check-cast p1, Ljava/util/Map;

    .line 2085
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_21

    .line 2087
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2088
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_21
    return-object p0

    .line 2094
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2096
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    const-string v2, ", segement "

    const-string v3, "jsonpath error, path "

    if-eqz v0, :cond_53

    .line 2099
    :try_start_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p1

    .line 2101
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 2105
    :cond_53
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_87

    .line 2106
    check-cast p1, Ljava/util/List;

    .line 2108
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2112
    :cond_68
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    .line 2114
    :goto_72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 2115
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2116
    invoke-virtual {p0, v2, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 2117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_86
    return-object v0

    .line 2123
    :cond_87
    instance-of p3, p1, Ljava/lang/Enum;

    if-eqz p3, :cond_ac

    .line 2124
    move-object p3, p1

    check-cast p3, Ljava/lang/Enum;

    const-string v0, "name"

    .line 2125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2126
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9b
    const-string v0, "ordinal"

    .line 2129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 2130
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2134
    :cond_ac
    instance-of p3, p1, Ljava/util/Calendar;

    if-eqz p3, :cond_122

    .line 2135
    check-cast p1, Ljava/util/Calendar;

    const-string/jumbo p3, "year"

    .line 2137
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c5

    const/4 p0, 0x1

    .line 2138
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_c5
    const-string p3, "month"

    .line 2141
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d7

    const/4 p0, 0x2

    .line 2142
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d7
    const-string p3, "day"

    .line 2145
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e9

    const/4 p0, 0x5

    .line 2146
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_e9
    const-string p3, "hour"

    .line 2149
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_fc

    const/16 p0, 0xb

    .line 2150
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_fc
    const-string p3, "minute"

    .line 2153
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10f

    const/16 p0, 0xc

    .line 2154
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_10f
    const-string p3, "second"

    .line 2157
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_122

    const/16 p0, 0xd

    .line 2158
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2162
    :cond_122
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1977
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1981
    :try_start_a
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p1

    .line 1983
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonpath error, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1987
    :cond_29
    instance-of p0, p1, Ljava/util/Map;

    if-eqz p0, :cond_34

    .line 1988
    check-cast p1, Ljava/util/Map;

    .line 1989
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 1992
    :cond_34
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected init()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-eqz v0, :cond_5

    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    const/4 v1, 0x0

    .line 65
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_27

    .line 67
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    :goto_27
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v0

    .line 222
    :goto_a
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v4

    if-ge v2, v5, :cond_22

    .line 223
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_16

    move-object v1, v3

    goto :goto_22

    .line 227
    :cond_16
    aget-object v4, v4, v2

    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    :goto_22
    if-nez v1, :cond_25

    return v0

    .line 237
    :cond_25
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 238
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v0, :cond_37

    .line 239
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 240
    invoke-virtual {p1, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 243
    :cond_37
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v0, :cond_42

    .line 244
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {p1, p0, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 247
    :cond_42
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .registers 4

    .line 1950
    instance-of p0, p2, Ljava/util/List;

    if-eqz p0, :cond_21

    .line 1951
    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    if-ltz p3, :cond_14

    .line 1953
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_10

    return p0

    .line 1956
    :cond_10
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    .line 1958
    :cond_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p3

    if-gez p1, :cond_1c

    return p0

    .line 1964
    :cond_1c
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1f
    const/4 p0, 0x1

    return p0

    .line 1969
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1970
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unsupported set operation."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    .line 2263
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 2264
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 2268
    :cond_11
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p0

    .line 2271
    instance-of v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 2272
    check-cast p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_24

    :cond_23
    move-object p0, v3

    :goto_24
    if-eqz p0, :cond_31

    .line 2276
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p0

    if-nez p0, :cond_2d

    return v2

    .line 2281
    :cond_2d
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 2285
    :cond_31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v0

    move-object v4, v1

    .line 259
    :goto_b
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v2, v6, :cond_54

    .line 266
    aget-object v4, v5, v2

    .line 267
    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4f

    .line 270
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v5

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_24

    add-int/lit8 v6, v2, 0x1

    .line 271
    aget-object v5, v5, v6

    goto :goto_25

    :cond_24
    move-object v5, v1

    .line 275
    :goto_25
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v6, :cond_2f

    .line 276
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_3a

    .line 277
    :cond_2f
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v5, :cond_39

    .line 278
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_3a

    :cond_39
    move-object v5, v1

    :goto_3a
    if-eqz v5, :cond_55

    .line 282
    instance-of v6, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v6, :cond_46

    .line 283
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 284
    invoke-virtual {v4, p0, v3, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4f

    .line 287
    :cond_46
    instance-of v6, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v6, :cond_55

    .line 288
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 289
    invoke-virtual {v4, p0, v3, v5}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    move-object v3, v5

    goto :goto_b

    :cond_54
    move-object v3, v4

    :cond_55
    if-nez v3, :cond_58

    return v0

    .line 303
    :cond_58
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v0, p1

    sub-int/2addr v0, v7

    aget-object p1, p1, v0

    .line 304
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v0, :cond_68

    .line 305
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 306
    invoke-virtual {p1, p0, v3, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return v7

    .line 310
    :cond_68
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v0, :cond_73

    .line 311
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {p1, p0, v3, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 314
    :cond_73
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 6

    .line 1918
    instance-of p0, p2, Ljava/util/List;

    const/4 p1, 0x1

    if-eqz p0, :cond_16

    .line 1919
    check-cast p2, Ljava/util/List;

    if-ltz p3, :cond_d

    .line 1921
    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1923
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p3

    invoke-interface {p2, p0, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return p1

    .line 1928
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1929
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1930
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-ltz p3, :cond_2c

    if-ge p3, p0, :cond_36

    .line 1934
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_36

    .line 1937
    :cond_2c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p0, :cond_36

    add-int/2addr p0, p3

    .line 1938
    invoke-static {p2, p0, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_36
    :goto_36
    return p1

    .line 1945
    :cond_37
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unsupported set operation."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 2226
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 2227
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2231
    :cond_b
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_27

    .line 2232
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_15

    .line 2236
    :cond_22
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_15

    :cond_26
    return v1

    .line 2241
    :cond_27
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p0

    const/4 v0, 0x0

    .line 2244
    instance-of v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_39

    .line 2245
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_39
    if-eqz v0, :cond_47

    .line 2249
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p0

    if-nez p0, :cond_43

    const/4 p0, 0x0

    return p0

    .line 2254
    :cond_43
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 2258
    :cond_47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public size(Ljava/lang/Object;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 139
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 140
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 143
    :cond_17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 1

    .line 2343
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
