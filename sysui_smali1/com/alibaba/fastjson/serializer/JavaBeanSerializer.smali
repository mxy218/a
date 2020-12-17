.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .registers 8

    .line 64
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 67
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_e
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 69
    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 72
    :cond_23
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v1, v3, :cond_2c

    .line 73
    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_45

    .line 75
    :cond_2c
    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 76
    :goto_31
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    if-ge v0, v2, :cond_45

    .line 77
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_45
    :goto_45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 54
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .registers 5

    .line 483
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 485
    invoke-interface {v1, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 491
    :cond_1c
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    if-eqz p0, :cond_37

    .line 492
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 493
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    return v0

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .registers 2

    .line 440
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object p0
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 388
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-gt v1, v2, :cond_2d

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 393
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 395
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_22

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_a

    :cond_22
    if-lez v4, :cond_28

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_a

    .line 402
    :cond_28
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p0, p0, v3

    return-object p0

    :cond_2d
    return-object v0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .registers 2

    .line 444
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "getFieldValue error."

    .line 368
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 374
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_c} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 378
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_23
    move-exception p0

    .line 376
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 370
    :cond_39
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "field not found. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 412
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 432
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 433
    iget-object v4, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v3, p0, v1

    .line 421
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .registers 3

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result p0

    return p0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .registers 4

    .line 361
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 362
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr p0, v0

    if-nez p0, :cond_18

    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez p0, :cond_18

    and-int p0, p2, v0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move/from16 v11, p5

    .line 111
    iget-object v12, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v9, :cond_14

    .line 114
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 118
    :cond_14
    invoke-virtual {v7, v8, v9, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    .line 124
    :cond_1b
    iget-boolean v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v1, :cond_22

    .line 125
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_24

    .line 127
    :cond_22
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_24
    move-object v13, v1

    .line 130
    iget-object v14, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 131
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v5, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 133
    invoke-virtual {v7, v8, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v11

    if-eqz v11, :cond_40

    const/16 v1, 0x5b

    goto :goto_42

    :cond_40
    const/16 v1, 0x7b

    :goto_42
    if-eqz v11, :cond_47

    const/16 v2, 0x5d

    goto :goto_49

    :cond_47
    const/16 v2, 0x7d

    :goto_49
    move v15, v2

    .line 138
    :try_start_4a
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 140
    array-length v1, v13

    if-lez v1, :cond_5e

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 147
    :cond_5e
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    const/4 v6, 0x1

    if-nez v1, :cond_70

    .line 148
    invoke-virtual {v8, v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 149
    :cond_70
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_7b

    .line 151
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    move v0, v6

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    const/16 v4, 0x2c

    if-eqz v0, :cond_82

    move v0, v4

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    .line 158
    :goto_83
    iget-boolean v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v1, :cond_8e

    iget-boolean v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v1, :cond_8e

    move/from16 v16, v6

    goto :goto_90

    :cond_8e
    const/16 v16, 0x0

    .line 159
    :goto_90
    invoke-virtual {v7, v8, v9, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v0

    if-ne v0, v4, :cond_98

    move v0, v6

    goto :goto_99

    :cond_98
    const/4 v0, 0x0

    .line 162
    :goto_99
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    .line 163
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    move/from16 v19, v0

    const/4 v3, 0x0

    .line 165
    :goto_a8
    array-length v0, v13

    if-ge v3, v0, :cond_260

    .line 166
    aget-object v2, v13, v3

    .line 168
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 169
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 170
    iget-object v10, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_b5} :catch_298
    .catchall {:try_start_4a .. :try_end_b5} :catchall_295

    move-object/from16 v20, v14

    .line 171
    :try_start_b7
    iget-object v14, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v17, :cond_c2

    if-eqz v0, :cond_c2

    .line 175
    iget-boolean v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v4, :cond_c2

    goto :goto_c6

    :cond_c2
    if-eqz v18, :cond_d2

    if-nez v0, :cond_d2

    :cond_c6
    :goto_c6
    move/from16 v23, v3

    move v3, v6

    move-object/from16 v22, v13

    move/from16 v21, v15

    const/4 v4, 0x0

    const/16 v7, 0x2c

    goto/16 :goto_24f

    .line 187
    :cond_d2
    iget-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 188
    invoke-virtual {v7, v8, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v0
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_e0} :catch_291
    .catchall {:try_start_b7 .. :try_end_e0} :catchall_28d

    if-nez v0, :cond_e3

    goto :goto_c6

    .line 196
    :cond_e3
    :try_start_e3
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e3 .. :try_end_e7} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e7} :catch_291
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_28d

    goto :goto_f3

    :catch_e8
    move-exception v0

    move-object v4, v0

    .line 198
    :try_start_ea
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_24e

    const/4 v0, 0x0

    .line 205
    :goto_f3
    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fa

    goto :goto_c6

    .line 210
    :cond_fa
    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move/from16 v21, v15

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v13

    move-object v13, v2

    move-object/from16 v2, p1

    move/from16 v23, v3

    move-object v3, v5

    move-object v5, v4

    const/16 v7, 0x2c

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    move-object v5, v10

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12e

    if-nez v11, :cond_12e

    .line 217
    iget-boolean v2, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v2, :cond_12e

    sget v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_12e

    :goto_12a
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_24f

    :cond_12e
    if-eqz v1, :cond_1c1

    .line 222
    iget-boolean v2, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-eqz v2, :cond_1c1

    .line 223
    iget-object v2, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 224
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_148

    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_148

    move-object v3, v1

    check-cast v3, Ljava/lang/Byte;

    .line 225
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-nez v3, :cond_148

    goto :goto_12a

    .line 227
    :cond_148
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_15a

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_15a

    move-object v3, v1

    check-cast v3, Ljava/lang/Short;

    .line 228
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-nez v3, :cond_15a

    goto :goto_12a

    .line 230
    :cond_15a
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_16c

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_16c

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    .line 231
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_16c

    goto :goto_12a

    .line 233
    :cond_16c
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_182

    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_182

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    .line 234
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_182

    goto :goto_12a

    .line 236
    :cond_182
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_197

    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_197

    move-object v3, v1

    check-cast v3, Ljava/lang/Float;

    .line 237
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_197

    goto :goto_12a

    .line 239
    :cond_197
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1ae

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_1ae

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    .line 240
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1ae

    goto/16 :goto_12a

    .line 242
    :cond_1ae
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1c1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1c1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    .line 243
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c1

    goto/16 :goto_12a

    :cond_1c1
    if-eqz v19, :cond_1d1

    .line 249
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 250
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_1d1
    move-object/from16 v2, v24

    if-eq v2, v10, :cond_1e3

    if-nez v11, :cond_1dc

    const/4 v3, 0x1

    .line 257
    invoke-virtual {v12, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_1dd

    :cond_1dc
    const/4 v3, 0x1

    .line 260
    :goto_1dd
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_1e0
    const/4 v4, 0x0

    goto/16 :goto_24b

    :cond_1e3
    const/4 v3, 0x1

    if-eq v0, v1, :cond_1ef

    if-nez v11, :cond_1eb

    .line 263
    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 265
    :cond_1eb
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_1e0

    :cond_1ef
    if-nez v11, :cond_202

    if-eqz v16, :cond_1fd

    .line 269
    iget-object v0, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    iget-object v2, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v2, v2

    const/4 v4, 0x0

    invoke-virtual {v12, v0, v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_203

    :cond_1fd
    const/4 v4, 0x0

    .line 271
    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_203

    :cond_202
    const/4 v4, 0x0

    :goto_203
    if-nez v11, :cond_248

    .line 276
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 277
    const-class v2, Ljava/lang/String;

    if-ne v14, v2, :cond_244

    if-eqz v0, :cond_217

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_244

    :cond_217
    if-nez v1, :cond_236

    .line 279
    iget v0, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_230

    iget v0, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_22c

    goto :goto_230

    .line 284
    :cond_22c
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_24b

    :cond_230
    :goto_230
    const-string v0, ""

    .line 282
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_24b

    .line 287
    :cond_236
    check-cast v1, Ljava/lang/String;

    .line 289
    iget-boolean v0, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_240

    .line 290
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_24b

    .line 292
    :cond_240
    invoke-virtual {v12, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_24b

    .line 296
    :cond_244
    invoke-virtual {v13, v8, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_24b

    .line 299
    :cond_248
    invoke-virtual {v13, v8, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    :goto_24b
    move/from16 v19, v3

    goto :goto_24f

    .line 201
    :cond_24e
    throw v4

    :goto_24f
    add-int/lit8 v0, v23, 0x1

    move-object/from16 v10, p3

    move v6, v3

    move v4, v7

    move-object/from16 v14, v20

    move/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v7, p0

    move v3, v0

    goto/16 :goto_a8

    :cond_260
    move v7, v4

    move-object/from16 v22, v13

    move-object/from16 v20, v14

    move/from16 v21, v15

    const/4 v4, 0x0

    move-object/from16 v1, p0

    if-eqz v19, :cond_26d

    move v4, v7

    .line 306
    :cond_26d
    invoke-virtual {v1, v8, v9, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-object/from16 v1, v22

    .line 308
    array-length v0, v1

    if-lez v0, :cond_283

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_283

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_283
    move/from16 v2, v21

    .line 313
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_288} :catch_291
    .catchall {:try_start_ea .. :try_end_288} :catchall_28d

    move-object/from16 v1, v20

    .line 328
    iput-object v1, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_28d
    move-exception v0

    move-object/from16 v1, v20

    goto :goto_2f9

    :catch_291
    move-exception v0

    move-object/from16 v1, v20

    goto :goto_29a

    :catchall_295
    move-exception v0

    move-object v1, v14

    goto :goto_2f9

    :catch_298
    move-exception v0

    move-object v1, v14

    :goto_29a
    :try_start_29a
    const-string/jumbo v2, "write javaBean error"

    if-eqz v9, :cond_2bb

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2bb
    move-object v3, v2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2d4

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fieldName : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    :cond_2d4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f2

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    :cond_2f2
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2f8
    .catchall {:try_start_29a .. :try_end_2f8} :catchall_2f8

    :catchall_2f8
    move-exception v0

    .line 328
    :goto_2f9
    iput-object v1, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 467
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 469
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_8

    .line 473
    :cond_19
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    if-eqz p0, :cond_32

    .line 474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 475
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_21

    :cond_32
    return p3
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 450
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 452
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_8

    .line 456
    :cond_19
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    if-eqz p0, :cond_32

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 458
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_21

    :cond_32
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .registers 6

    .line 333
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 334
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    if-nez p0, :cond_18

    .line 336
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 338
    :cond_18
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .registers 6

    .line 342
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 343
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v1, 0x0

    if-eqz p0, :cond_22

    .line 344
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr p0, v0

    if-nez p0, :cond_22

    and-int p0, p3, v0

    if-eqz p0, :cond_13

    goto :goto_22

    .line 348
    :cond_13
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz p0, :cond_22

    invoke-virtual {p0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 349
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v1
.end method
