.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 37
    iget-object v9, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v8, :cond_e

    .line 40
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 44
    :cond_e
    move-object v10, v8

    check-cast v10, Ljava/util/Map;

    .line 56
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_1b
    iget-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v12, 0x0

    move-object/from16 v1, p3

    .line 62
    invoke-virtual {v7, v11, v8, v1, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v1, 0x7b

    .line 64
    :try_start_25
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_63

    .line 74
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 75
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 76
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    if-eq v2, v3, :cond_48

    const-class v3, Ljava/util/HashMap;

    if-eq v2, v3, :cond_48

    const-class v3, Ljava/util/LinkedHashMap;

    if-ne v2, v3, :cond_50

    .line 77
    :cond_48
    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    move v2, v13

    goto :goto_51

    :cond_50
    move v2, v12

    :goto_51
    if-nez v2, :cond_63

    .line 79
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    move v1, v12

    goto :goto_64

    :cond_63
    move v1, v13

    .line 85
    :goto_64
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v2, 0x0

    move v15, v1

    move-object v6, v2

    move-object/from16 v16, v6

    :goto_71
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2ec

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_bc

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_bc

    if-eqz v1, :cond_af

    .line 93
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_96

    goto :goto_af

    .line 97
    :cond_96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_a4

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_bc

    .line 98
    :cond_a4
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v7, v8, v2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bc

    goto :goto_b8

    .line 94
    :cond_af
    :goto_af
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bc

    :goto_b8
    move-object/from16 v19, v6

    goto/16 :goto_26b

    .line 106
    :cond_bc
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_f0

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f0

    if-eqz v1, :cond_e6

    .line 108
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_cd

    goto :goto_e6

    .line 112
    :cond_cd
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_db

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f0

    .line 113
    :cond_db
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v7, v8, v2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f0

    goto :goto_b8

    .line 109
    :cond_e6
    :goto_e6
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f0

    goto :goto_b8

    .line 122
    :cond_f0
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_124

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_124

    if-eqz v1, :cond_11a

    .line 124
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_101

    goto :goto_11a

    .line 128
    :cond_101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_10f

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_124

    .line 129
    :cond_10f
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v7, v8, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_124

    goto :goto_b8

    .line 125
    :cond_11a
    :goto_11a
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_124

    goto :goto_b8

    .line 137
    :cond_124
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_15a

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15a

    if-eqz v1, :cond_14f

    .line 139
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_135

    goto :goto_14f

    .line 143
    :cond_135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_143

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_15a

    .line 144
    :cond_143
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v7, v8, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15a

    goto/16 :goto_b8

    .line 140
    :cond_14f
    :goto_14f
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15a

    goto/16 :goto_b8

    .line 153
    :cond_15a
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_188

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_188

    if-eqz v1, :cond_182

    .line 155
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_16b

    goto :goto_182

    .line 157
    :cond_16b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_179

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_188

    .line 158
    :cond_179
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v7, v8, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_188

    .line 156
    :cond_182
    :goto_182
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_188
    :goto_188
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_1b6

    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b6

    if-eqz v1, :cond_1b0

    .line 166
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_199

    goto :goto_1b0

    .line 168
    :cond_199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1a7

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1b6

    .line 169
    :cond_1a7
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v7, v8, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b6

    .line 167
    :cond_1b0
    :goto_1b0
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1b6
    :goto_1b6
    move-object v4, v1

    .line 176
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 177
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz v1, :cond_1c3

    .line 178
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1cb

    :cond_1c3
    if-eqz v2, :cond_210

    .line 179
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_210

    :cond_1cb
    if-eqz v4, :cond_1f9

    .line 180
    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_1d2

    goto :goto_1f9

    .line 182
    :cond_1d2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1e0

    instance-of v1, v4, Ljava/lang/Number;

    if-eqz v1, :cond_210

    .line 183
    :cond_1e0
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 184
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_20e

    :cond_1f9
    :goto_1f9
    move-object v12, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v3, 0x0

    .line 181
    move-object v5, v12

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_20e
    move-object v6, v1

    goto :goto_217

    :cond_210
    move-object v12, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 189
    :goto_217
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 190
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz v1, :cond_223

    .line 191
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_22b

    :cond_223
    if-eqz v2, :cond_260

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_260

    :cond_22b
    if-eqz v12, :cond_250

    .line 193
    instance-of v1, v12, Ljava/lang/String;

    if-eqz v1, :cond_232

    goto :goto_250

    .line 195
    :cond_232
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_240

    instance-of v1, v12, Ljava/lang/Number;

    if-eqz v1, :cond_260

    .line 196
    :cond_240
    invoke-static {v12}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 197
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25e

    :cond_250
    :goto_250
    const/4 v3, 0x0

    .line 194
    move-object v5, v12

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_25e
    move-object v3, v1

    goto :goto_261

    :cond_260
    move-object v3, v6

    :goto_261
    if-nez v3, :cond_270

    .line 203
    sget v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_270

    :goto_26b
    move-object/from16 v6, v19

    const/4 v12, 0x0

    goto/16 :goto_71

    .line 208
    :cond_270
    instance-of v1, v12, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_28d

    .line 209
    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    if-nez v15, :cond_27e

    .line 212
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 215
    :cond_27e
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_289

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 218
    :cond_289
    invoke-virtual {v9, v4, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_2bb

    :cond_28d
    if-nez v15, :cond_292

    .line 221
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 224
    :cond_292
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_2af

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 225
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_2af

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 226
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2ab

    goto :goto_2af

    .line 230
    :cond_2ab
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_2b6

    .line 227
    :cond_2af
    :goto_2af
    invoke-static {v12}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    :goto_2b6
    const/16 v1, 0x3a

    .line 233
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2bb
    if-nez v3, :cond_2c6

    .line 239
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_2c0
    move-object/from16 v6, v19

    :goto_2c2
    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_71

    .line 243
    :cond_2c6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v6, v19

    if-ne v15, v6, :cond_2dc

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v4, v12

    move-object/from16 v19, v6

    move v6, v15

    .line 246
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_2c0

    .line 249
    :cond_2dc
    invoke-virtual {v7, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v4, v12

    .line 251
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2ea
    .catchall {:try_start_25 .. :try_end_2ea} :catchall_308

    move-object v6, v15

    goto :goto_2c2

    .line 255
    :cond_2ec
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 259
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_302

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_302

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_302
    const/16 v0, 0x7d

    .line 262
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :catchall_308
    move-exception v0

    .line 255
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
