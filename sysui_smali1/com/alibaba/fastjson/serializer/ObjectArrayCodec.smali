.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;
.source "ObjectArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 188
    :cond_4
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 190
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v1, :cond_65

    .line 192
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p3, :cond_1a

    .line 195
    invoke-static {v2, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_62

    .line 199
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 201
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_2d

    .line 204
    :cond_27
    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v5

    .line 207
    :goto_2d
    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_62

    .line 210
    :cond_31
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_54

    .line 212
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 213
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    move v8, v3

    move v9, v8

    :goto_3e
    if-ge v8, v7, :cond_4d

    .line 215
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p3, :cond_4a

    .line 217
    invoke-virtual {v6, v4, v2}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_4a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_4d
    if-eqz v9, :cond_54

    .line 222
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v6

    goto :goto_55

    :cond_54
    move-object v6, v0

    :goto_55
    if-nez v6, :cond_5f

    .line 227
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 229
    :cond_5f
    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 234
    :cond_65
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    return-object v2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
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

    .line 129
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v1, v4, :cond_11

    .line 131
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v2

    .line 135
    :cond_11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_20

    .line 136
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object p0

    .line 137
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p0

    .line 143
    :cond_20
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_81

    .line 144
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 145
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 146
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_7c

    .line 147
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 149
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    if-eqz v1, :cond_71

    .line 150
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 151
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 153
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_67

    .line 154
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 155
    :goto_4b
    array-length v4, v1

    if-ge v3, v4, :cond_67

    .line 156
    aget-object v4, v1, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 157
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 161
    :cond_67
    instance-of p2, v2, Ljava/lang/Class;

    if-eqz p2, :cond_6e

    .line 162
    check-cast v2, Ljava/lang/Class;

    goto :goto_87

    .line 164
    :cond_6e
    const-class v2, Ljava/lang/Object;

    goto :goto_87

    .line 167
    :cond_71
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_87

    .line 170
    :cond_7c
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_87

    .line 173
    :cond_81
    check-cast p2, Ljava/lang/Class;

    .line 174
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 176
    :goto_87
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 177
    invoke-virtual {p1, v2, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, p1, v2, p2}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/16 p0, 0xe

    return p0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 44
    iget-object v8, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 46
    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 49
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 53
    :cond_11
    array-length v1, v9

    add-int/lit8 v10, v1, -0x1

    const/4 v2, -0x1

    if-ne v10, v2, :cond_1d

    const-string v0, "[]"

    .line 58
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 62
    :cond_1d
    iget-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 63
    invoke-virtual {v7, v11, v0, v3, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v0, 0x5b

    .line 68
    :try_start_27
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/16 v12, 0x5d

    const/16 v13, 0x2c

    if-eqz v0, :cond_5a

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :goto_3c
    if-ge v2, v1, :cond_4e

    if-eqz v2, :cond_46

    .line 75
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 78
    :cond_46
    aget-object v0, v9, v2

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 80
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 82
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_be

    .line 123
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :cond_5a
    const/4 v0, 0x0

    move-object v14, v0

    move-object v15, v14

    move v0, v2

    :goto_5e
    if-ge v0, v10, :cond_9d

    .line 87
    :try_start_60
    aget-object v3, v9, v0

    if-nez v3, :cond_6a

    const-string v1, "null,"

    .line 90
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_9a

    .line 92
    :cond_6a
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 93
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_97

    .line 95
    :cond_74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v14, :cond_84

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    .line 98
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_97

    .line 101
    :cond_84
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v16, v6

    move v6, v15

    .line 103
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v15, v14

    move-object/from16 v14, v16

    .line 106
    :goto_97
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 110
    :cond_9d
    aget-object v0, v9, v10

    if-nez v0, :cond_a7

    const-string v0, "null]"

    .line 113
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_bb

    .line 115
    :cond_a7
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 116
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_b8

    .line 118
    :cond_b1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_b8
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_bb
    .catchall {:try_start_60 .. :try_end_bb} :catchall_be

    .line 123
    :goto_bb
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_be
    move-exception v0

    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
