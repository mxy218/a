.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 56
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 57
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 58
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 59
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 61
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 63
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p7, :cond_2d

    .line 65
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_26

    .line 67
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_33

    .line 69
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_33

    .line 72
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 75
    :goto_33
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 76
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {p8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p1

    new-array p2, p2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 79
    array-length p4, p1

    const/4 p5, 0x0

    invoke-static {p1, p5, p2, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 83
    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    :cond_57
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p3, :cond_60

    .line 87
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p5, p1

    :cond_60
    iput p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_3e

    .line 102
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 104
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 105
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_21

    goto :goto_3b

    .line 109
    :cond_21
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 110
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 114
    :cond_2f
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    if-gez v2, :cond_39

    .line 117
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 124
    :cond_3e
    :goto_3e
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 130
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 132
    invoke-static {v14}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v15

    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 135
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    if-nez v15, :cond_1d

    move-object v0, v12

    goto :goto_1e

    :cond_1d
    move-object v0, v15

    .line 137
    :goto_1e
    invoke-static {v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v8, 0x0

    if-nez v16, :cond_174

    .line 143
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_174

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_174

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    const-string v7, "illegal json creator"

    if-eqz v13, :cond_ce

    .line 146
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 148
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 149
    array-length v0, v10

    if-lez v0, :cond_be

    .line 150
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    move v6, v8

    .line 151
    :goto_53
    array-length v0, v10

    if-ge v6, v0, :cond_be

    .line 152
    aget-object v0, v16, v6

    .line 154
    array-length v1, v0

    move v2, v8

    :goto_5a
    if-ge v2, v1, :cond_69

    aget-object v3, v0, v2

    .line 155
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_66

    .line 156
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_6b

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_69
    move-object/from16 v0, v17

    :goto_6b
    if-eqz v0, :cond_b7

    .line 163
    aget-object v3, v10, v6

    .line 164
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v6

    .line 165
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 166
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 167
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 168
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 169
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object/from16 p1, v10

    move-object v10, v2

    move-object/from16 v2, p0

    move/from16 v21, v6

    move/from16 v6, v18

    move-object/from16 v18, v11

    move-object v11, v7

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 171
    invoke-static {v9, v10}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v10, p1

    move-object v7, v11

    move-object/from16 v11, v18

    const/4 v8, 0x0

    goto :goto_53

    :cond_b7
    move-object v11, v7

    .line 161
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_be
    new-instance v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v4, v13

    move-object v7, v14

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v10

    :cond_ce
    move-object/from16 v18, v11

    move-object v11, v7

    .line 178
    invoke-static {v12, v10}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_15d

    .line 180
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 182
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 183
    array-length v0, v13

    if-lez v0, :cond_14d

    .line 184
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    const/4 v8, 0x0

    .line 185
    :goto_e6
    array-length v0, v13

    if-ge v8, v0, :cond_14d

    .line 186
    aget-object v0, v16, v8

    .line 188
    array-length v1, v0

    const/4 v2, 0x0

    :goto_ed
    if-ge v2, v1, :cond_fc

    aget-object v3, v0, v2

    .line 189
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_f9

    .line 190
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_fe

    :cond_f9
    add-int/lit8 v2, v2, 0x1

    goto :goto_ed

    :cond_fc
    move-object/from16 v0, v17

    :goto_fe
    if-eqz v0, :cond_147

    .line 198
    aget-object v3, v13, v8

    .line 199
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v8

    .line 200
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v18

    invoke-static {v12, v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 201
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 202
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v18

    .line 203
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v19

    .line 204
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object/from16 p1, v13

    move-object v13, v2

    move-object/from16 v2, p0

    move-object/from16 v20, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 206
    invoke-static {v9, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v13, p1

    move-object/from16 v18, v20

    goto :goto_e6

    .line 195
    :cond_147
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_14d
    new-instance v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v5, v10

    move-object v7, v14

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v11

    .line 213
    :cond_15d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_174
    move-object/from16 v20, v11

    if-eqz v16, :cond_17b

    .line 217
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_17b
    if-eqz v15, :cond_31a

    .line 223
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_18c

    .line 225
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_18e

    :cond_18c
    move-object/from16 v0, v17

    :goto_18e
    if-eqz v0, :cond_196

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_199

    :cond_196
    const-string/jumbo v0, "with"

    :cond_199
    move-object v11, v0

    .line 232
    invoke-virtual {v15}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v7, v8

    const/4 v6, 0x0

    :goto_1a0
    if-ge v6, v7, :cond_2d2

    aget-object v2, v8, v6

    .line 233
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1bf

    :goto_1ae
    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object v13, v9

    move-object/from16 v31, v10

    move-object/from16 v18, v11

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    goto/16 :goto_2bf

    .line 237
    :cond_1bf
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    goto :goto_1ae

    .line 243
    :cond_1ca
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_1d8

    .line 246
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    :cond_1d8
    move-object/from16 v18, v0

    if-eqz v18, :cond_24e

    .line 250
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v0

    if-nez v0, :cond_1e3

    goto :goto_1ae

    .line 254
    :cond_1e3
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 255
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 256
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v23

    .line 258
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_239

    .line 259
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v26, v5

    move-object/from16 v5, p1

    move/from16 v27, v6

    move/from16 v6, v19

    move/from16 v28, v7

    move/from16 v7, v21

    move-object/from16 v29, v8

    move/from16 v8, v23

    move-object/from16 v30, v9

    move-object/from16 v9, v18

    move-object/from16 v31, v10

    move-object/from16 v10, v24

    move-object v13, v11

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    move-object/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v11, v30

    invoke-static {v11, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_269

    :cond_239
    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v31, v10

    move-object v13, v11

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    move-object v11, v9

    move/from16 v6, v19

    move/from16 v7, v21

    move/from16 v8, v23

    goto :goto_25f

    :cond_24e
    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v31, v10

    move-object v13, v11

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    move-object v11, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 266
    :goto_25f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26d

    :goto_269
    move-object/from16 v18, v13

    move-object v13, v11

    goto :goto_2bf

    .line 271
    :cond_26d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_278

    goto :goto_269

    .line 275
    :cond_278
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 277
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_287

    goto :goto_269

    .line 281
    :cond_287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v32, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v18, v13

    move-object v13, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_2bf
    add-int/lit8 v6, v27, 0x1

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v11, v18

    move-object/from16 v14, v24

    move/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v10, v31

    move-object/from16 v13, p2

    goto/16 :goto_1a0

    :cond_2d2
    move-object v13, v9

    move-object/from16 v31, v10

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    if-eqz v15, :cond_321

    .line 291
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_2ea

    .line 295
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_2ec

    :cond_2ea
    move-object/from16 v0, v17

    :goto_2ec
    if-eqz v0, :cond_2f4

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f6

    :cond_2f4
    const-string v0, "build"

    :cond_2f6
    const/4 v11, 0x0

    :try_start_2f7
    new-array v1, v11, [Ljava/lang/Class;

    .line 303
    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2fd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f7 .. :try_end_2fd} :catch_2fe
    .catch Ljava/lang/SecurityException; {:try_start_2f7 .. :try_end_2fd} :catch_2fe

    goto :goto_300

    :catch_2fe
    move-object/from16 v0, v17

    :goto_300
    if-nez v0, :cond_30a

    :try_start_302
    const-string v1, "create"

    new-array v2, v11, [Ljava/lang/Class;

    .line 312
    invoke-virtual {v15, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_30a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_302 .. :try_end_30a} :catch_30a
    .catch Ljava/lang/SecurityException; {:try_start_302 .. :try_end_30a} :catch_30a

    :catch_30a
    :cond_30a
    if-eqz v0, :cond_312

    .line 324
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v18, v0

    goto :goto_324

    .line 321
    :cond_312
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31a
    move-object v13, v9

    move-object/from16 v31, v10

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    :cond_321
    const/4 v11, 0x0

    move-object/from16 v18, v17

    :goto_324
    move-object/from16 v10, v31

    .line 328
    array-length v9, v10

    move v8, v11

    :goto_328
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    if-ge v8, v9, :cond_517

    aget-object v2, v10, v8

    .line 330
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_345

    :goto_339
    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v15

    :cond_341
    :goto_341
    move-object/from16 v15, p2

    goto/16 :goto_50a

    .line 335
    :cond_345
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_350

    goto :goto_339

    .line 340
    :cond_350
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36b

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36b

    goto :goto_339

    .line 343
    :cond_36b
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 344
    array-length v3, v1

    if-eq v3, v5, :cond_373

    goto :goto_339

    .line 348
    :cond_373
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v3, :cond_381

    .line 351
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    :cond_381
    move-object/from16 v19, v3

    if-eqz v19, :cond_3e5

    .line 355
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_38c

    goto :goto_339

    .line 359
    :cond_38c
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 360
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 361
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v22

    .line 363
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3db

    .line 364
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object v0, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v20

    move-object/from16 v34, v7

    move/from16 v7, v21

    move/from16 v26, v8

    move/from16 v8, v22

    move/from16 v27, v9

    move-object/from16 v9, v19

    move-object/from16 v28, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v15

    move v15, v11

    move-object/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_341

    :cond_3db
    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v15

    move v15, v11

    goto :goto_3f4

    :cond_3e5
    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v15

    move v15, v11

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_3f4
    const-string v3, "set"

    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3fe

    goto/16 :goto_341

    .line 375
    :cond_3fe
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 378
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_439

    const/16 v4, 0x200

    if-le v3, v4, :cond_40d

    goto :goto_439

    :cond_40d
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_416

    .line 387
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_461

    :cond_416
    const/16 v4, 0x66

    if-ne v3, v4, :cond_41f

    .line 389
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_461

    .line 390
    :cond_41f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_341

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_341

    .line 391
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_461

    .line 381
    :cond_439
    :goto_439
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_446

    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_461

    .line 384
    :cond_446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_461
    invoke-static {v12, v0, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_492

    .line 397
    aget-object v1, v1, v15

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_492

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v12, v1, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    :cond_492
    if-eqz v3, :cond_4e5

    .line 404
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v10, :cond_4e2

    .line 407
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_4a7

    goto/16 :goto_341

    .line 411
    :cond_4a7
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 412
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 413
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 415
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4df

    .line 416
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 417
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v20, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v19

    move-object v15, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v13, v15}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_341

    :cond_4df
    move-object/from16 v15, p2

    goto :goto_4ef

    :cond_4e2
    move-object/from16 v15, p2

    goto :goto_4e9

    :cond_4e5
    move-object/from16 v15, p2

    move-object/from16 v10, v17

    :goto_4e9
    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    :goto_4ef
    if-eqz v15, :cond_4f5

    .line 426
    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4f5
    move-object v1, v0

    .line 429
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v20, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v19

    move-object v12, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v13, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_50a
    add-int/lit8 v8, v26, 0x1

    move-object/from16 v12, p0

    move-object/from16 v15, v23

    move/from16 v9, v27

    move-object/from16 v10, v28

    const/4 v11, 0x0

    goto/16 :goto_328

    :cond_517
    move-object/from16 v23, v15

    move-object/from16 v15, p2

    .line 433
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v14, v12

    const/4 v11, 0x0

    :goto_521
    if-ge v11, v14, :cond_600

    aget-object v3, v12, v11

    .line 434
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_533

    :goto_52d
    move/from16 v21, v5

    move/from16 v17, v11

    goto/16 :goto_5f8

    :cond_533
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_56a

    .line 440
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 441
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_566

    const-class v1, Ljava/util/Collection;

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_566

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 443
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_566

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_566

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_564

    goto :goto_566

    :cond_564
    const/4 v0, 0x0

    goto :goto_567

    :cond_566
    :goto_566
    move v0, v5

    :goto_567
    if-nez v0, :cond_56a

    goto :goto_52d

    .line 452
    :cond_56a
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_588

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 453
    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56e

    move v0, v5

    goto :goto_589

    :cond_588
    const/4 v0, 0x0

    :goto_589
    if-eqz v0, :cond_58c

    goto :goto_52d

    .line 464
    :cond_58c
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 466
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v10, :cond_5c9

    .line 469
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_5a2

    goto :goto_52d

    .line 473
    :cond_5a2
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 474
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 475
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    .line 477
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5c4

    .line 478
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_5c4
    move v8, v1

    move v9, v2

    move/from16 v17, v4

    goto :goto_5cd

    :cond_5c9
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_5cd
    if-eqz v15, :cond_5d3

    .line 483
    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5d3
    move-object v1, v0

    .line 486
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v4

    move-object/from16 v35, v4

    move-object/from16 v4, p0

    move/from16 v21, v5

    move-object/from16 v5, p1

    move v6, v8

    move v8, v7

    move v7, v9

    move v9, v8

    move/from16 v8, v17

    move-object/from16 v9, v19

    move/from16 v17, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_5f8
    add-int/lit8 v11, v17, 0x1

    move/from16 v5, v21

    const/4 v6, 0x3

    const/4 v7, 0x4

    goto/16 :goto_521

    .line 490
    :cond_600
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v14, v12

    const/4 v11, 0x0

    :goto_606
    if-ge v11, v14, :cond_6f4

    aget-object v2, v12, v11

    .line 491
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x4

    if-ge v1, v10, :cond_61d

    :cond_615
    :goto_615
    move/from16 v17, v10

    move/from16 v33, v11

    const/16 v19, 0x3

    goto/16 :goto_6f0

    .line 496
    :cond_61d
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_628

    goto :goto_615

    :cond_628
    const-string v1, "get"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_615

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_6ea

    .line 501
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_644

    goto/16 :goto_6ea

    .line 505
    :cond_644
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_674

    const-class v1, Ljava/util/Map;

    .line 506
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_674

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 507
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_674

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 508
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_674

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 509
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_6ea

    .line 513
    :cond_674
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v17, :cond_687

    .line 514
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_687

    :goto_686
    goto :goto_6ea

    :cond_687
    if-eqz v17, :cond_698

    .line 518
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_698

    .line 519
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b3

    .line 521
    :cond_698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :goto_6b3
    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    if-eqz v1, :cond_6ba

    goto :goto_686

    :cond_6ba
    if-eqz v15, :cond_6c0

    .line 530
    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6c0
    move-object v1, v0

    .line 533
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v36, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v20

    move/from16 v33, v11

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_6f0

    :cond_6ea
    :goto_6ea
    move/from16 v19, v9

    move/from16 v17, v10

    move/from16 v33, v11

    :goto_6f0
    add-int/lit8 v11, v33, 0x1

    goto/16 :goto_606

    .line 538
    :cond_6f4
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v24

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 619
    :cond_4
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object p0

    .line 621
    const-class v1, Ljava/lang/Void;

    if-ne p0, v1, :cond_d

    return-object v0

    :cond_d
    return-object p0
.end method

.method public static getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_24

    aget-object v3, p0, v2

    .line 576
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v4, :cond_21

    if-nez v1, :cond_19

    move-object v1, v3

    goto :goto_21

    .line 579
    :cond_19
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "multi-JSONCreator"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    return-object v1
.end method

.method static getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 547
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 549
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_23

    aget-object v5, v0, v4

    .line 550
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_20

    move-object v1, v5

    goto :goto_23

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_23
    :goto_23
    if-nez v1, :cond_54

    .line 557
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 559
    array-length v2, v0

    move v4, v3

    :goto_37
    if-ge v4, v2, :cond_54

    aget-object v5, v0, v4

    .line 560
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_51

    aget-object v6, v6, v3

    .line 561
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    move-object v1, v5

    goto :goto_54

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_54
    :goto_54
    return-object v1
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 592
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_36

    aget-object v3, p1, v2

    .line 593
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_33

    .line 597
    :cond_12
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_33

    .line 601
    :cond_1d
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v4, :cond_33

    if-nez v1, :cond_2b

    move-object v1, v3

    goto :goto_33

    .line 604
    :cond_2b
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_36
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 92
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method
