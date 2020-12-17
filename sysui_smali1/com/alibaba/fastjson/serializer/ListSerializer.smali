.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 33
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    .line 35
    iget-object v9, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    if-eqz v8, :cond_20

    .line 39
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_20

    .line 40
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 41
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    move-object v10, v1

    if-nez v0, :cond_2a

    .line 46
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 50
    :cond_2a
    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 52
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_39

    const-string v0, "[]"

    .line 53
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 57
    :cond_39
    iget-object v12, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v13, p3

    .line 58
    invoke-virtual {v7, v12, v0, v13, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 62
    :try_start_40
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/16 v14, 0x2c

    const/16 v15, 0x5d

    const/16 v3, 0x5b

    if-eqz v1, :cond_bd

    .line 63
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 67
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v11, v2

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v11, :cond_68

    .line 69
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 72
    :cond_68
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    if-eqz v6, :cond_a7

    .line 74
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 75
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_ac

    .line 77
    :cond_77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v16

    .line 78
    new-instance v5, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v5

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 79
    iput-object v14, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 80
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-object v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_ac

    .line 83
    :cond_a7
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_ac
    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x2c

    goto :goto_59

    .line 88
    :cond_b1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 90
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_ba
    .catchall {:try_start_40 .. :try_end_ba} :catchall_15f

    .line 133
    iput-object v12, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    .line 94
    :cond_bd
    :try_start_bd
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 95
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move v6, v2

    :goto_c5
    if-ge v6, v14, :cond_158

    .line 96
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v6, :cond_d3

    const/16 v4, 0x2c

    .line 98
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_d5

    :cond_d3
    const/16 v4, 0x2c

    :goto_d5
    if-nez v5, :cond_e2

    const-string v1, "null"

    .line 102
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_dc
    move/from16 v18, v4

    move/from16 v16, v6

    goto/16 :goto_150

    .line 104
    :cond_e2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 106
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_f4

    .line 107
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_dc

    .line 108
    :cond_f4
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_10d

    .line 109
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-eqz v8, :cond_109

    .line 111
    invoke-virtual {v9, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v1, 0x4c

    .line 112
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_dc

    .line 114
    :cond_109
    invoke-virtual {v9, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_dc

    .line 117
    :cond_10d
    iget-boolean v1, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-nez v1, :cond_12d

    .line 118
    new-instance v3, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v3

    move-object v2, v12

    move-object v15, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v4, p3

    move-object v0, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 119
    iput-object v15, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_132

    :cond_12d
    move/from16 v18, v4

    move-object v0, v5

    move/from16 v16, v6

    .line 122
    :goto_132
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 123
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_150

    .line 125
    :cond_13c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 126
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_150
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v0, p2

    const/16 v15, 0x5d

    goto/16 :goto_c5

    :cond_158
    move v0, v15

    .line 131
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_15c
    .catchall {:try_start_bd .. :try_end_15c} :catchall_15f

    .line 133
    iput-object v12, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_15f
    move-exception v0

    iput-object v12, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
