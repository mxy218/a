.class public Lcom/alibaba/fastjson/JSONArray;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient componentType:Ljava/lang/reflect/Type;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected transient relatedArray:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 421
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public fluentAdd(ILjava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public fluentAdd(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fluentAddAll(ILjava/util/Collection;)Lcom/alibaba/fastjson/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONArray;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object p0
.end method

.method public fluentAddAll(Ljava/util/Collection;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONArray;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fluentClear()Lcom/alibaba/fastjson/JSONArray;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public fluentRemove(I)Lcom/alibaba/fastjson/JSONArray;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fluentRemoveAll(Ljava/util/Collection;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson/JSONArray;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fluentRetainAll(Ljava/util/Collection;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson/JSONArray;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fluentSet(ILjava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .registers 2

    .line 384
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 386
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .registers 2

    .line 390
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 392
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .registers 2

    .line 268
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanValue(I)Z
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 284
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getByte(I)Ljava/lang/Byte;
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getByteValue(I)B
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getComponentType()Ljava/lang/reflect/Type;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getDate(I)Ljava/util/Date;
    .registers 2

    .line 402
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 404
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(I)Ljava/lang/Double;
    .registers 2

    .line 368
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 370
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getDoubleValue(I)D
    .registers 2

    .line 374
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    .line 380
    :cond_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .registers 2

    .line 352
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 354
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getFloatValue(I)F
    .registers 2

    .line 358
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 364
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getIntValue(I)I
    .registers 2

    .line 326
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 332
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .registers 2

    .line 320
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 322
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 255
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_d

    .line 256
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    return-object p0

    .line 259
    :cond_d
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    return-object p0
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 245
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_d

    .line 246
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 249
    :cond_d
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public getLong(I)Ljava/lang/Long;
    .registers 2

    .line 336
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 338
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getLongValue(I)J
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    .line 348
    :cond_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 264
    invoke-static {p0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRelatedArray()Ljava/lang/Object;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    return-object p0
.end method

.method public getShort(I)Ljava/lang/Short;
    .registers 2

    .line 304
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 306
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getShortValue(I)S
    .registers 2

    .line 310
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 316
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public getSqlDate(I)Ljava/sql/Date;
    .registers 2

    .line 408
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 410
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 396
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 398
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .registers 2

    .line 414
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 416
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 180
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 184
    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_28

    .line 185
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_18
    if-ge v1, p1, :cond_22

    .line 186
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 188
    :cond_22
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 192
    :cond_28
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setComponentType(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public setRelatedArray(Ljava/lang/Object;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public subList(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
